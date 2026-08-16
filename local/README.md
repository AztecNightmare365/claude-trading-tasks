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

- Node.js and Claude Code installed
- Logged in with the same Anthropic account (so the claude.ai connectors —
  Robinhood, polygon-io, Gmail — are available)
- Machine stays awake through market hours; sleep will silently skip runs

### 2. Clone the repo

```bash
git clone https://github.com/AztecNightmare365/claude-trading-tasks.git ~/claude-trading-tasks
```

Set up git so the routines can push unattended — an SSH key or a credential
helper, not an interactive prompt.

### 3. Install the permission config

```bash
mkdir -p ~/.claude
cp ~/claude-trading-tasks/local/claude-settings.json ~/.claude/settings.json
```

Review it first. It grants broad standing permission including
`place_equity_order`, which is the point — a parked prompt means a missed
stop-loss — but you should know that's what you're installing.

### 4. Verify connectors resolve locally

Before trusting the schedule, run one routine by hand and confirm it completes
without prompting:

```bash
cd ~/claude-trading-tasks
claude -p "$(cat local/prompts/0700_overnight.txt)"
```

If it prompts, note the exact tool name in the prompt and add it verbatim to the
`allow` list. Connector-backed MCP tools are namespaced by connector UUID at
runtime (see `.claude/README.md`), so copy the name exactly as shown.

### 5. Install the schedule

```bash
crontab local/crontab.et
```

Times in `crontab.et` are **Eastern**, matching market hours. Set the machine's
timezone to `America/New_York` so DST is handled for you — the cloud triggers
used fixed UTC offsets, which drift against the market twice a year.

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
