# Permissions for the scheduled trading routines

`settings.json` in this directory exists so the scheduled routines run unattended
without stalling on a permission prompt. Project settings load in every session
that clones this repo into its working directory, which is how each routine runs.

## Why this file is needed at all

Each trigger carries its own `allowed_tools` list, fixed when the trigger was
created. Several of those lists omit MCP servers the routine's own `SKILL.md`
tells it to call — `city_market_watch`, for instance, is told to call
`get_accounts` and `get_portfolio` but its list is only
`[Bash, Read, Write, Edit, Glob, Grep]`.

Those lists cannot be repaired: `update_trigger` accepts only name, cron,
enabled, model and prompt, and `create_trigger` accepts no tool list at all.
Recreating a trigger would discard the list it already has. Project settings are
the way around that.

## Tool names are UUID-namespaced

Connector-backed MCP tools are namespaced at runtime by connector UUID, not by
the friendly server name. A Robinhood call arrives as:

    mcp__54785ca2-0958-4634-8869-fdf067d6b2be__get_equity_orders

So a rule written only as `mcp__Robinhood__*` cannot match it. Both forms are
listed in `permissions.allow` for that reason.

| Connector | UUID |
|---|---|
| Robinhood | `54785ca2-0958-4634-8869-fdf067d6b2be` |
| polygon-io | `a123d1fc-6bdd-46ee-9f5b-61d286ce8ded` |
| Gmail | `0a53230c-08a9-47d5-8027-df3647b48327` |
| Google Drive | `63c3c6e9-49a9-40ab-b4a6-ecc2bd63eb6a` |
| Google Calendar | `c9b7e6b5-3e90-4ba5-b110-9f55cff1faab` |
| Claude Code Remote | `bf7c680d-5fdc-5ef4-b4a0-abadb619bf0a` |

If a connector is disconnected and re-added its UUID changes, and these rules
must be updated to match. To find a current UUID, list the triggers — each
records the `connector_uuid` of every connector attached to it.

## What the verification runs actually established

An earlier version of this file claimed the UUID/friendly-name mismatch was the
root cause of the permission prompts. **That claim was wrong** and is corrected
here.

Two sessions were run against this repo in `default` permission mode (the mode
that prompts for anything not explicitly pre-approved), each making the same
five read-only Robinhood calls — once before the UUID rules were added, once
after. Both produced the same result:

| Call | Result |
|---|---|
| `get_accounts` | no prompt |
| `get_portfolio` | no prompt |
| `get_equity_positions` | no prompt |
| `get_equity_quotes` | no prompt |
| `get_equity_orders` | **prompted, both runs** |

Adding the UUID rules changed nothing. If namespacing were the problem, every
Robinhood call would have prompted; four of the five never did.

`permissions.allow` currently contains the friendly-name form, the UUID wildcard
form, and an explicit `mcp__Robinhood__get_equity_orders` entry. None of them
suppress this prompt. The evidence points to a per-tool consent gate on the
connector side for order history, which a project-level allow rule cannot
override — but this has not been confirmed against connector documentation, so
treat it as the current best explanation rather than an established fact.

Practical impact is narrow: only routines that fetch order history are affected.
Everything else in the read path runs clean.

## Scope

This grants broad standing permission, including `place_equity_order`, to any
session that clones this repo. That is deliberate: the routines trade unattended
on a schedule, and a parked permission prompt means a missed stop-loss.

`permissions.defaultMode` is set to `bypassPermissions` as a secondary
safeguard, not the primary mechanism — a session that sets its own permission
mode overrides it, as both verification runs demonstrated. The explicit `allow`
list is what should be relied on.

## Adding a tool

If a routine prompts for something, the tool name in the prompt is the rule to
add. Copy it verbatim into `permissions.allow`, UUID prefix and all. If the
prompt persists after that, it is likely gated connector-side rather than by
these settings.
