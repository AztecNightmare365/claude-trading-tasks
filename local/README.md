# Running the trading routines on a dedicated local machine

Prepared 2026-08-14. Migration target: a separate always-on computer, replacing
the cloud scheduled tasks.

## Why we're moving

Scheduled cloud runs stopped working. Timeline from `git log`:

| Date | Routines that committed |
|---|---|
| Aug 10 | 9:30, 10 AM, 12 PM, 3:15 — full set |
| Aug 11 | 7 AM, 9:30 |
| Aug 12 | 7 AM, 9:30, 3:15 |
| Aug 13 | none |
| Aug 14 | 7 AM, 9:30 — but only after prompts were approved by hand |

The routines themselves still work. On Aug 14 the 7 AM and 9:30 runs completed
and pushed normally once their permission prompts were answered manually. The
problem is purely that they cannot run *unattended* — which for a 3:15 PM
stop-loss check is the same as not running.

By Aug 14 every routine prompted for permission on essentially every tool call —
including `Bash` and `Read`, which are explicitly listed in the triggers' own
`session_context.allowed_tools`. An allowlist being ignored is what that looks
like. The degradation began around Aug 11, before any of the `.claude/`
permission work in this repo, so that work is not the cause (and did not fix it).

Locally there is no ambiguity: `~/.claude/settings.json` is user-scope config on
your own machine and is honored.

## Setup

### 1. Prerequisites

On the target machine (the Optiplex):

- Node.js and Claude Code installed
- `claude` run once interactively and logged in, with the same Anthropic account
  that owns the connectors (Robinhood, polygon-io, Gmail)
- Git able to push without an interactive prompt — SSH deploy key or a
  credential helper. An unattended `git push` that asks for a password hangs
  the routine forever.
- Timezone set to Eastern, so the schedule tracks market hours across DST:
  `sudo timedatectl set-timezone America/New_York`
- The machine stays awake through market hours; sleep silently skips runs

### 2. Run the bootstrap

```bash
git clone https://github.com/AztecNightmare365/claude-trading-tasks.git ~/claude-trading-tasks
cd ~/claude-trading-tasks
bash local/bootstrap.sh --dry-run   # look first
bash local/bootstrap.sh
```

It is idempotent — re-run it any time to pick up changes. It checks
prerequisites, updates the checkout, installs `~/.claude/settings.json` (backing
up any existing one), creates the log directory, and installs the schedule.

The schedule is merged into your crontab inside a marked block, so **other cron
jobs on the machine are preserved**. Do not install `local/crontab.et` directly;
it is reference documentation, and installing it would replace your whole
crontab.

Read `local/claude-settings.json` before running this. It grants broad standing
permission including `place_equity_order` — that is the point, since a parked
prompt means a missed stop-loss, but you should know what you are installing.

### 3. Verify before trusting the schedule

```bash
cd ~/claude-trading-tasks
claude -p "$(cat local/prompts/0700_overnight.txt)"
```

Watch for three things: that it never stops to ask permission, that the
connectors resolve (it reads real prices), and that it commits and pushes at the
end without asking for credentials.

If it prompts, copy the tool name from the prompt **verbatim, UUID prefix and
all**, into the `allow` list in `~/.claude/settings.json`, then re-run.
Connector-backed MCP tools are namespaced by connector UUID at runtime — see
`.claude/README.md`.

## Verifying it works

Each routine commits and pushes on success. `git log` on the remote is the
health check: a weekday with no `7 AM overnight brief` commit means the 7 AM run
didn't complete. Worth a glance each morning for the first week.

## Still open

- Root cause of the cloud allowlist failure was never established. If you go back
  to cloud later, that's the thread to pull.
- The retired routines (9:15 pre-market, 1 PM, 2 PM, 5 PM after-hours,
  city_market_watch) are not included here. Their prompts are still in the cloud
  trigger configs; pull them before deleting anything if you want them.
