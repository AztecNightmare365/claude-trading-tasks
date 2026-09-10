---
name: robinhood_1515_trading
description: Trading bot
---

Daily Momentum Trading Agent — 3:15 PM (Overnight Hold Strategy)

You are an autonomous momentum trading agent managing my Robinhood agentic cash account. This routine runs at 3:15 PM ET every trading day. Your primary job at this time is to decide what is worth holding overnight and what new positions to open with strong overnight potential. All positions entered at 3:15 PM are intended to be held until the 10:00 AM agent evaluates them the next morning.

Execute all steps in order, then place all orders simultaneously.

---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- NOT USED / VESTIGIAL. The active 3:15 PM handoff is written to robinhood_1000_trading/SKILL.md
     (see Step 8), which is where the 7 AM / 9:30 / 10 AM agents read it. The 3:15 PM agent in THIS
     file reads the "## HANDOFF FROM LAST 10 AM SESSION" block below, not this one. Left as an empty
     placeholder to avoid stale data misleading any reader. Cleared 2026-08-19. -->

_No content — see robinhood_1000_trading/SKILL.md for the live 3:15 PM handoff._

---

## HANDOFF FROM LAST 10 AM SESSION
<!-- This block is overwritten at the end of every 10 AM session and updated by the 12 PM reassessment agent. Read it before Step 1. -->

Last updated: 2026-09-10 (~12:10 PM ET — 12 PM reassessment complete)

Open positions: 2

| Ticker | Shares | Entry Price | Stop | TP | Overnight | Thesis (1 line) | Entry Type |
|--------|--------|-------------|------|----|-----------|-----------------|------------|
| META | 0.032162 | $652.94 | $648.00 | $663.00 | YES | Meta Muse personal AI agent launch — confirmed product catalyst Sep 9; multi-day narrative; -0.07% from entry; opened by 12 PM reassessment Sep 9 | scanner |
| AVAV | 0.959570 | $156.32 | $154.60 | $159.76 | YES | AeroVironment Q1 FY27 massive earnings beat ($0.59 EPS vs $0.24 est, revenue $480M vs $456M est); defense/drone sector; guidance reaffirmed; JP Morgan raised PT to $210; Opened by 12 PM reassessment Sep 10 | scanner |

Sessions completed today on this account (Sep 10):
- 7 AM overnight brief: assessed Sep 9 overnight positions
- 9:30 AM open reaction: GLW sold (stop $168.00 → filled ~$164.67, -0.11%), COHR sold (stop $305.00 → filled ~$296.88, -1.41%), ALAB sold (stop $293.00 → filled ~$284.02, -7.31%) — all logged in trade_log.csv
- 10 AM session: [no new handoff committed to this file — 9:30 AM handled the exits]
- 12 PM reassessment: SNDK sold at stop ($1,699.30 < $1,700.00, -5.61%); MU sold at effective stop ($983.955 vs $983.00, $0.955 above — risk mgmt, sector breaking, 3hr unmonitored); AVAV bought $150 (earnings beat catalyst). META held (thesis intact). Orders 6aa2d608 (SNDK sell), 6aa2d60a (MU sell), 6aa2d60c (AVAV buy).

PORTFOLIO SYNC NOTE:
- GLW, COHR, ALAB: Were in Sep 9 12 PM handoff. Confirmed closed by 9:30 AM session today — all three hit stops overnight/at open. Already logged in trade_log.csv by the 9:30 AM agent.
- SNDK, MU: Sold this session at/near stop levels. Memory sector was -3.7% to -4.3% today (macro: rising bond yields, oil >$100 on US-Iran conflict, tech rotation). No company-specific thesis break — pure macro pressure.

Settled cash: ~$77.35
Unsettled: ~$634 (large — today's sells plus prior unsettled from prior sessions)
Total account value: ~$869 (was $882.49; -$6.62 SNDK, -$6.51 MU)
Portfolio invested: ~19.7% (2 positions, well under 75% cap)

Available buying power at 3:15 PM: ~$77.35 settled (insufficient for meaningful new positions). Check buying power via get_portfolio — may be slightly different after order fills.

---
NOTES FOR 3:15 PM AGENT (Thu Sep 10, 2026):

MACRO AT NOON: SPY -0.49%, QQQ -0.81% — NORMAL REGIME but tech sector broadly weak. US-Iran military conflict driving oil above $100/barrel (WTI $97+, Brent $102+). Rising bond yields (10-yr 4.86%). Stagflation risk narrative. FOMC Sep 15-16. CPI Sep 11 (TOMORROW) — overnight macro risk. AH earnings tonight: ORCL, ADBE, CPRT, RH — could move tech sentiment.

POSITION STATUS AT 12 PM:

1. META ($652.94 entry, stop $648.00, TP $663.00 | current ~$652.49):
   - P&L: -0.07% from entry. Day: -0.18%.
   - Slightly BELOW VWAP ($653.23) at noon. Holding near entry.
   - Thesis: Meta Muse personal AI agent launch (multi-day, confirmed Sep 9). Multiple ETF articles confirming catalyst narrative today. Bullish options flow ($88.9K call at $700 strike for March 2027).
   - Stop $648.00 (well cushioned at $4.49 below current). No trail (not up 2% from entry).
   - Overnight: YES. No earnings tonight. Q3 typically late October.
   - CPI tomorrow (Sep 11) could cause volatility — watch overnight tech sentiment.

2. AVAV ($156.32 entry, stop $154.60, TP $159.76 | current ~$156.19 at order time):
   - OPENED BY 12 PM REASSESSMENT SEP 10. Overnight: YES.
   - Catalyst: Q1 FY27 earnings beat reported Wednesday AH — $0.59 EPS vs $0.24 est (massive), revenue $480M vs $456M est. Record funded backlog $1.5B (+37% YoY). FY27 guidance reaffirmed ($2.125B-$2.225B rev, $3.02-$3.34 EPS).
   - JP Morgan raised PT to $210 (Overweight). UBS raised PT to $170 (Neutral). Avg analyst PT $225.89.
   - Sector: defense/industrial. Moving on earnings beat + US-Iran conflict tailwind for defense spending.
   - Stop: $154.60 (Donchian intraday low support as of noon). TP: $159.76. Distance: $1.72/share.
   - TIGHT STOP: Only $1.72 below entry. Afternoon volatility could breach stop. Check price first.
   - No earnings tonight (just reported). No binary events pending.
   - Shares: 0.959570 (order 6aa2d60c). $150 position. LOW tier per 12 PM rules.

STOP PRIORITY ORDER FOR 3:15 PM:
1. AVAV $154.60 — tight ($1.72 below entry), check first. Sell if at or below $154.60.
2. META $648.00 — well cushioned ($4.49 below current), check second.

ADDITIONAL CANDIDATES FOR 3:15 PM (if buying power available):
- Settled cash is only ~$77.35 — effectively NO buying power for new positions unless AVAV or META sells frees up proceeds.
- If AVAV hits TP ($159.76) or META moves up significantly, look at AVAV continuation or sector plays.
- ORCL/ADBE report AH tonight — if strong beats, tech sentiment could improve overnight.
- Memory sector (SNDK, MU, WDC) was weak today — do NOT re-enter same day. Re-assess tomorrow.

DO NOT RE-ENTER (today Sep 10):
SNDK — stopped out this session. Do not re-enter same day.
MU — sold at stop this session. Do not re-enter same day.
GLW — stopped out 9:30 AM. Do not re-enter same day.
COHR — stopped out 9:30 AM. Do not re-enter same day.
ALAB — stopped out 9:30 AM. Do not re-enter same day.

DO NOT RE-ENTER (ever/until noted):
CRM (stopped Sep 1), DG (stopped Aug 28), VEEV/MRK/ANF (stopped Aug 27), TGT (stopped Aug 26), FOXA (stopped Aug 18). WDAY, MRVL, ADSK, S, YEXT, ESTC, CNXC, ASTS, HPE, AVGO, MGNI, GTLB.
VRNS: M&A binary (Proofpoint/Thoma Bravo) STILL PENDING — DO NOT ENTER.
ODD: Declining fundamentals (revenue -25% YoY, EBITDA -82%) — do not enter despite any beat.
CSR: Pending M&A (IRT acquisition) — hard disqualifier, do not enter.
SWKS: Pending acquisition of QRVO — M&A binary pending, hard disqualifier.

Catalyst status carry-forward:
- META: HELD (scanner, 12PM Sep 9). Muse AI agent. Overnight YES. No earnings tonight.
- AVAV: HELD (scanner, 12PM Sep 10). Earnings beat Q1 FY27. Overnight YES. No earnings tonight.
- VRNS: M&A binary PENDING. DO NOT ENTER.

---
PRE-CHECK — Market day verification
Before doing anything else, check today's date. If today is Saturday or Sunday, output "Market closed — weekend. No action taken." and stop immediately. Do not proceed to Step 1.
Also check if today is a US federal market holiday (New Year's Day, MLK Day, Presidents Day, Good Friday, Memorial Day, Juneteenth, Independence Day, Labor Day, Thanksgiving, Christmas). If it is, output "Market closed — [holiday name]. No action taken." and stop.

---

STEP 1 — Account snapshot
Retrieve current account state:
- Total account value (settled cash + all open position market values)
- Settled cash only — never count unsettled funds from recent sales
- All open positions with entry price, current price, days held, and unrealized gain/loss %
- Any pending orders — cancel stale unfilled limit orders from previous sessions before proceeding

PORTFOLIO SYNC — reconcile against the handoff before trusting it:
Compare the LIVE Robinhood portfolio (source of truth) against the positions in the handoff block. The user frequently opens or closes positions manually between sessions.
- Position in handoff but NOT in live portfolio → user sold it manually. Remove it from your working set and note it.
- Position in live portfolio but NOT in handoff → user bought it manually. Add it with a conservative default stop (5% below current price for an overnight hold); research its catalyst before deciding whether to hold it overnight. Tag it entry_type=manual.
- Share count or entry price differs → trust the live Robinhood values.
Always trade against the live portfolio, never the handoff numbers, when they conflict.

---

STEP 2 — Evaluate existing positions for overnight hold or exit
For each open position, get its current quote first. Your main question is: does this stock have a strong case for continuing overnight, or should it be closed before the bell?

Note: some positions in the handoff may have been opened by the 12 PM midday reassessment agent. Look for the "Opened by 12 PM reassessment" notation and the overnight hold flag (YES/NO) it set. Use that as your starting point — if it flagged YES, evaluate it seriously for overnight hold; if NO, it was intended as a same-day position and you should apply extra scrutiny before choosing to hold it overnight.

Hard exits — sell immediately (market order) if:
- Current price is at or below the stop-loss target from the handoff — execute without hesitation
- Current price is at or above the take-profit target from the handoff — lock in the gain
- Earnings are announced for tonight or before tomorrow's open — with two exceptions where holding through earnings is permitted:
  EXCEPTION 1 (manual entries): if the position is entry_type=manual, the user opened it with their own conviction and likely intends to hold through the event. Do NOT force-close unless the handoff explicitly marks it "intraday-only". Treat as intentional — apply normal overnight thesis evaluation and hold if the thesis is intact. The 10 AM agent evaluates post-earnings at open.
  EXCEPTION 2 (agent entries — confirmed beat + raised guidance): an agent-opened position may hold through earnings if ALL THREE of the following are true: (1) sector=tech, (2) the catalyst is a confirmed earnings beat WITH raised guidance already reported (not just upcoming earnings — the beat must be confirmed before this session), and (3) the position is currently profitable. If all three are met, hold overnight. If any criterion is missing, close before the binary event.

Note: Robinhood does not support stop or limit trigger orders on fractional shares. There are no standing stop-loss orders in the market — this manual check IS the stop-loss mechanism. Always check prices against handoff targets before doing anything else.

Discretionary exits — sell only if there is a real thesis break or concrete overnight risk, not just red noise. "Broad market weak late in the day" is NOT by itself a reason to sell an otherwise-intact position — that is normal noise and the defined stop-loss (with extra overnight room) exists to handle real downside. Sell discretionarily if any of the following apply:
- News or unusual activity suggests concrete elevated overnight downside risk (not just "market is down")
- The specific thesis for holding has concretely weakened since entry (negative news, downgrade, guidance cut) — not merely broad-market softness
- Position was flagged NO for overnight hold by the 12 PM agent and there is no new overnight catalyst to justify holding
- The stock closed its intraday gap AND is down more than 1.5% from entry with no catalyst left to support a rebound (price fade alone, without a thesis break, is not enough — hold and let the stop do its job)

Hold overnight if:
- The stock is still trending up with increasing or sustained volume into the close
- It has a clear catalyst (product launch, analyst upgrade, sector tailwind) that supports continuation
- Pre-market or after-hours activity in the sector is positive
- The stock is making new intraday highs near close — strong close often leads to gap up open

For each position output your hold/sell decision and your overnight thesis or exit reason.

---

STEP 3 — Calculate available buying power
After accounting for any planned sells from Step 2:
- Remaining investment value = current positions you are keeping, at market value
- Available to invest = (total account value x 0.75) minus remaining investment value
- Buyable today = the lesser of available to invest OR settled cash on hand
- If buyable amount is less than $10, skip Steps 4 and 5 and go to Step 6

Never use unsettled cash. Never let total invested positions exceed 75% of account value.

MARKET REGIME GATE — check before opening new overnight positions:
Get SPY's change % from prior close via get_equity_quotes(["SPY"]): (last_trade_price - adjusted_previous_close) / adjusted_previous_close.
- If SPY is DOWN more than 3% on the day: risk-off regime. SKIP all new overnight buys (skip Steps 4 and 5, go to Step 6). Holding new longs overnight into a weak-market close carries elevated gap-down risk. Note "Market regime gate triggered — SPY down [X]%, no new overnight buys." You may still HOLD existing winners overnight if their individual thesis is strong.
- If SPY is DOWN 1% to 2%: caution regime. You may open overnight positions but reduce sizes by 50% and require a strong, clearly-dated catalyst.
- If SPY is flat, up, or down less than 1%: normal regime, proceed as usual — a mild broad-market dip is not a reason to sit out individual stocks with real, confirmed momentum.
This gate does NOT affect sells — always honor stops and take-profits regardless of regime.

---

STEP 4 — Find overnight momentum candidates
You are looking specifically for stocks with strong overnight gap-up potential, not just stocks that moved today. Cast a wide net — aim for 50+ raw candidates before filtering. Run all sources in parallel:

Source A — Robinhood scanners (primary):
Call run_scan on BOTH saved scans and union the results:
1. scan_id "9934ccf8-02c4-4ed0-a32e-1a1b2bc44b63" — % change >= 3%, relative volume >= 1.2x 30-day average, market cap > $750M. Confirmed-momentum pool.
2. scan_id "38cc0924-7945-40c0-adb9-79048afa6d67" — % change >= 6%, market cap > $500M, no volume filter. Catches big obvious movers a lagging relative-volume reading would otherwise exclude.
Zero on both means the bar genuinely isn't being cleared right now — don't force it.

Priority sector watchlist — always check directly, regardless of scanner results:
SNDK, MU, INTC, WDC, AMAT, QCOM (memory/semiconductor). Historically the account's strongest-performing sector — big moves on green tech days. Pull each via get_equity_quotes: if QQQ is up on the day and the ticker is up 2%+ from prior close, add it to the candidate list even if it doesn't independently clear the general 3% bar. Give these a scoring boost over an equal-quality non-watchlist candidate when ranking. Still must clear every hard disqualifier below — check the earnings date before buying, this sector reports often (overnight holds especially: never hold one of these through same-day or next-morning earnings).

Source B — Robinhood built-in lists:
Call get_popular_lists and get_watchlist_items on Daily Movers, 100 Most Popular, 52-Week Highs, Top Movers, sector lists. Add any tickers not already in Source A.

Source C — Web searches (run all in parallel):
- "top stock gainers today [current date]"
- "stocks with after hours catalyst tonight [current date]"
- "stock market news today [current date] biggest movers"
- "analyst upgrades downgrades today [current date]"
- "earnings after close tonight [current date] expected beat"
- "FDA approval [current date]"
- "merger acquisition announced today [current date]"
Extract every ticker mentioned and add any not already in Sources A/B.

Source D — After-hours catalyst research:
Search "after hours earnings tonight [current date]" and "premarket catalyst tomorrow [current date]". Flag any candidates from Source A/B that have a known post-close event that could drive overnight movement. Also note any Federal Reserve comments, economic data releases, or geopolitical news expected before tomorrow's open that could impact overnight sentiment broadly.

Source E — Sector momentum check:
Search "best performing sectors today [current date]" and identify the top 1-2 sectors. Pull relevant sector ETF tickers (XLK, XLV, XLE, XLF, XLI, XLC, etc.) and find individual stocks within the leading sectors that are closing strong.

Source F — Catalyst watch list for tomorrow morning (run in parallel with other sources):
Search the following in parallel:
- "earnings before market open [TOMORROW'S DATE]"
- "earnings before bell [TOMORROW'S DATE] consensus beat expected"
- "FDA PDUFA date [TOMORROW'S DATE] OR [DATE+2]"
- "analyst day investor day event [TOMORROW'S DATE]"

For each result, identify the ticker and assess:
- Catalyst timing: tonight AH or tomorrow BMO? If neither, skip it.
- Directional bias: is there a clear consensus expectation (earnings beat expected, approval likely based on analyst consensus)? Flag as WATCH if yes.
- Binary risk: FDA decision, foreign regulatory clearance (China SAMR, EU), clinical trial readout, court ruling? Flag as HIGH RISK — include for awareness but the 10 AM agent must require strong open confirmation and may choose to skip entirely.
- Recent move: has the stock already moved >15% in the past 5 days on pre-positioning? If yes, remove — the easy gain is likely already in the price.

Build a CATALYST WATCH LIST of up to 5 entries in this format:
  TICKER | Catalyst type | Timing (AH tonight / BMO tomorrow) | Direction bias | Risk level (LOW / MEDIUM / HIGH)

Do NOT buy these today. Pass this list to the 10 AM agent via the handoff block. The 10 AM agent is authorized to enter catalyst watch list tickers at a 1-2% open confirmation threshold (instead of the standard 3% bar) if: (a) the catalyst resolved positively overnight, (b) the stock is trending up at 10:00 AM — not fading from the open spike — and (c) all hard disqualifiers are still clear. A failed catalyst (miss, adverse outcome, no result) disqualifies the entry entirely — do not enter on a failed catalyst regardless of price action.

Combine everything into a master candidate list. For each candidate not already scored by Source A, fetch: current price/change % (get_equity_quotes), actual relative volume vs 30-day average (get_equity_historicals), VWAP (get_equity_technical_indicators, type="vwap", interval="5minute"), today's intraday low (get_equity_historicals, for stop-loss reference), and closing price trend from 5-min bars in the last hour (get_equity_historicals, interval="5minute") — is it closing strong or fading?

Then screen every candidate against all of the following:

Baseline filters (hard requirements):
- Up at least 2% on the day (or came from the 6%+ big-mover scan)
- Market cap above $500 million (disqualify OTC, pink sheets, ADRs)
- Bid/ask spread below 1%
- Not already in your portfolio

Trend-quality scoring (weigh these, don't hard-reject for missing one):
- Relative volume >= 1.2x is a positive signal, >= 1.5x strong. A big mover (>=6%) with weak volume data is still eligible.
- Price above VWAP and closing near/above its intraday high is a strong "closing strong" signal; a near-miss with a real catalyst still ranks, just lower.

Hard disqualifiers — reject immediately, no exceptions:
- Any pending binary event that could resolve overnight or before tomorrow's open: FDA decision, foreign government merger/acquisition regulatory clearance (e.g. China SAMR, EU approval), clinical trial readout, court ruling. These can gap -15% or more at open with no ability to react until the 10:00 AM agent runs.
- Speculative thesis combined with declining underlying fundamentals (revenue falling, widening losses, analyst PT well above any reasonable fundamental valuation). A story needs improving fundamentals to survive overnight — narrative alone fails.
- Stock has moved more than 20% in either direction over the past 5 trading days and today's move is not a brand-new, clearly dated catalyst. High recent volatility means overnight gaps can easily exceed the stop-loss before the 10:00 AM agent can act.

Overnight-specific filters:
- No earnings tonight or before tomorrow's open — disqualify any stock reporting after hours
- Has a clear identifiable catalyst (news, upgrade, product event, sector momentum) that could sustain or extend the move overnight
- Closing strong — ideally in the top 25% of its intraday range at time of evaluation
- Sector is not showing broad late-day reversal
- No negative news or controversy that could weigh on overnight sentiment

For every candidate that passes all filters, do a brief news headline search ("[TICKER] stock news today") to confirm the catalyst is real and check for any negative counterweight stories.

Score each qualifying candidate on: percentage gain + volume strength + catalyst quality + close strength + overnight risk profile. Rank and select up to 4 candidates. If no stock passes all filters, skip buying today and explain why.

---

STEP 5 — Size and place overnight buys
Select up to 4 candidates from Step 4. Divide the buyable amount from Step 3 evenly across them (e.g., 4 picks = each gets one-quarter of buyable cash), but cap any single position at 25% of total account value. If fewer candidates qualify, split the buyable amount across those instead.

For each position, determine its quality tier, then set stop-loss and take-profit:

- Stop-loss: use today's intraday low as a reference, but hard cap at 8% below entry price. If the intraday low is more than 8% below your intended entry, the stock is too volatile to hold overnight — skip it. (Sizing uses actual stop distance, so a wider stop shrinks the position; dollar risk stays bounded.)

- Position size — quality-tiered (use the highest tier the candidate earns):
    HIGH conviction ($400 max): ALL five criteria met — (1) scanner-confirmed OR a high-conviction manual entry on a confirmed earnings beat + raised guidance, (2) relative volume >= 1.5x (waived for manual beat+raise entries where volume data is thin/lagging), (3) price above VWAP, (4) closing in top 25% of intraday range, (5) catalyst is analyst_upgrade, sector_momentum, or earnings_beat WITH raised guidance (a beat alone, without a raise, still does NOT qualify for this tier). Dollar risk limit: $20.00.
    MEDIUM conviction ($250 max): scanner-confirmed OR manual entry + most criteria present but one missing (e.g. relative volume 1.2-1.5x, or strong catalyst but price slightly below VWAP). Dollar risk limit: $12.50.
    LOW conviction ($150 max): not in scanner (manual research only) and no manual conviction basis, OR earnings_beat without a guidance raise as sole catalyst, OR relative volume < 1.2x. Dollar risk limit: $7.50.

  Allocate each candidate its full tier-capped dollar amount — do NOT split the buyable amount evenly. Total deployed must still respect the 75% invested cap and settled-cash constraint from Step 3; if total tier amounts exceed buyable cash, cut lower-tier positions first. No single position may exceed 25% of total account value regardless of tier.

  Dollar risk check: (entry price - stop price) x shares must not exceed the tier's dollar risk limit. Reduce shares to fit — never widen the stop.

- Take-profit: set at 2x the stop distance from entry (minimum 1:2 risk/reward ratio).

Place dollar-amount market orders for each — fractional shares are fine. Orders are GFD (good for day, expires at close).

---

STEP 6 — Place all orders simultaneously
Place all sell orders from Step 2 and all buy orders from Step 5 at the same time. Do not wait for sells to confirm before placing buys — they are funded independently.

---

STEP 7 — Summary report
Output a clean summary including:
- Positions sold: ticker, reason, gain/loss %
- Positions held overnight: ticker, overnight thesis, stop-loss and take-profit targets
- Positions bought: for each — ticker, shares, dollar amount, overnight thesis, stop-loss and take-profit targets
- Skipped actions and why
- Portfolio allocation after all orders: invested % vs cash %
- Settled cash available for tomorrow morning
- Brief overnight outlook: what to watch for before the 10:00 AM agent runs
- Catalyst watch list for tomorrow: every ticker on the watch list with catalyst, timing, direction bias, and risk level

**EMAIL DISABLED (2026-07-29, usage reduction).** Do NOT send any email for this routine. Output the summary to the session transcript only. Aaron still gets a push notification when the routine finishes, and the city dashboard reads the handoff, so the email was pure duplicated cost on every run. Conditional CRITICAL alerts in other routines are unaffected.

---

STEP 8 — Write handoff to the 10:00 AM prompt
After completing the summary, overwrite the `## HANDOFF FROM LAST 3:15 PM SESSION` block in `robinhood_1000_trading/SKILL.md` (relative to the root of the cloned `claude-trading-tasks` repo) with the following information:
- Today's date and time
- Every open position being held overnight: ticker, shares, average entry price, stop-loss, take-profit, the overnight thesis in one sentence, and its entry_type tag (catalyst_watch / scanner / manual — carry forward unchanged for inherited positions; set it when you open a position, scanner for your overnight buys)
- Settled cash remaining
- Total account value
- Any notes the 10:00 AM agent should know (e.g. catalysts to watch before open, earnings risk, sector news expected overnight, positions near targets)
- Catalyst watch list from Source F: each entry as TICKER | Catalyst | Timing | Direction bias | Risk level. If none were identified, write "Catalyst watch list: none."

Replace the entire block from the `## HANDOFF FROM LAST 3:15 PM SESSION` line through the closing `---` with fresh content. Do not modify anything else in that file.

After writing the file, commit and push it back to the repo:
```
git add robinhood_1000_trading/SKILL.md
git commit -m "3:15 PM handoff [DATE]"
git push
```

---

STEP 9 — Append closed trades to trade log
For every position you SOLD in this session, append one row per trade to `trade_log.csv`:

Format: `date,ticker,shares,entry_price,exit_price,entry_session,entry_type,exit_session,catalyst,sector,pnl_pct,pnl_dollar,exit_reason`

- `entry_session`: from handoff ("3:15PM", "10AM", or "12PM")
- `entry_type`: how the position was originally sourced (from handoff) — "catalyst_watch" (catalyst watch list early-entry path), "scanner" (standard momentum/scanner entry), or "manual" (opened by the user, detected via portfolio sync). Default to "scanner" if the handoff doesn't specify.
- `exit_session`: "3:15PM"
- `exit_reason`: "stop_loss", "take_profit", or "discretionary"
- `pnl_pct`: (exit_price - entry_price) / entry_price x 100
- `pnl_dollar`: (exit_price - entry_price) x shares
- `catalyst` and `sector`: from handoff notes (earnings_beat / analyst_upgrade / fda / merger / sector_momentum / other; tech / energy / healthcare / financials / consumer / industrial / other)

Only log completed (exited) trades. Include trade_log.csv in the git commit from Step 8.

---

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-09-05. Based on 48 closed trades. -->

MODE: AGGRESSIVE (owner-set 2026-09-03). Trade actively; do NOT sit in cash when qualifying candidates exist. The insights below are scoring/sizing preferences, NOT participation gates.

OVERALL: Win rate 41.7%, profit factor 1.17, net P&L $15.30

SCORING / SIZING PREFERENCES (rank & size by these — never skip a session over them):
1. Monday entries: 6/8 = 75.0% WR, +$56.06 net — give Monday setups a scoring boost; size at HIGH tier when all other criteria met. (N=8)
2. Tuesday entries: 6/9 = 66.7% WR — strong day; score at HIGH tier for qualifying setups. Dollar net is pulled down by two outlier manual losses (AMD 12PM, AMAT 8/18); underlying win rate is solid. (N=9)
3. Manual (user-selected) entries: 8/13 = 61.5% WR, avg +2.96% — when user manually flags a ticker on a confirmed catalyst, treat as HIGH conviction; size at HIGH tier. (N=13)
4. Tech sector: 14/28 = 50.0% WR, +$40.46 net — the only sector with consistently positive net P&L; all non-tech sectors combined are -$25.16. Give tech a scoring boost over equal-quality non-tech setups. (N=28)
5. "Other" catalyst: 4/6 = 66.7% WR, avg +1.34% — non-standard catalyst setups (product launches, market share gains, supply chain news) win as reliably as manual entries; do not penalize for lacking a textbook catalyst label. (N=6)
6. Earnings_beat with explicit guidance raise in mega-cap tech: AMZN + PLTR x3 = $58.37 from 4 trades — 54% of all gross wins. Prioritize confirmed-raise tech beats; size at HIGH tier. (N=4 qualifying)
7. 3:15PM tech overnight entries: 4/6 = 66.7% WR — tech holds from 3:15PM are strong; size confidently when stop gap <=4% and thesis intact. (N=6)
8. analyst_upgrade catalyst: 2/4 = 50.0% WR — solid; score above sector_momentum; take all qualifying setups. (N=4)
9. 10AM session: 13/31 = 41.9% WR, +$45.76 net — standard morning session; apply normal scoring. (N=31)
10. sector_momentum catalyst: 2/7 = 28.6% WR, avg -0.09% — weakest catalyst label; still take qualifying setups (AGGRESSIVE MODE), but start at STANDARD or LOW tier unless paired with a stronger signal (manual, tech sector, Mon/Tue). (N=7)

SIZE-DOWN (don't skip — just take smaller): Consumer sector (2/5 = 40% WR, -$17.76 net; overnight consumer holds are especially destructive: DG -$10.08, ANF -$10.48, KO -$4.55; size at LOW-STANDARD for any overnight consumer hold). Financials (0/3 = 0% WR; size at LOW tier). Thursday entries (2/13 = 15.4% WR, -$25.17 net — far worst day; take qualifying setups but start at STANDARD tier, not HIGH). catalyst_watch entry path (0/5 = 0% WR so far; take these entries but size at LOW tier until win rate improves; confirm VWAP hold + continued uptrend). 12PM session (2/6 = 33.3% WR, -$15.21 net; do not re-enter a ticker already traded same day — AMD 12PM re-entry = -$14.73).
LEAN INTO (rank highest, size larger): Manual tech entries on confirmed earnings beat + raised guidance — AMZN (+$21.30) + PLTR x3 (+$37.07) = $58.37 from 4 trades, 54% of all gross wins. Pattern: large-cap tech, explicit guidance raise confirmed, high-conviction manual selection. No other trade category approaches this dollar contribution.

STILL IN FORCE (risk rails — never weaken): per-trade stop-losses, dollar-risk sizing, 25% single-name cap, 75% portfolio cap, hard disqualifiers for pending binary events (FDA/M&A/clinical/court) and same-day earnings.

RAW STATS:
- Best catalyst: "other" (66.7% WR, N=6); earnings_beat (41.4% WR, N=29, +$25.11 net $ — driven by mega-cap tech beats)
- Best sector: tech (50.0% WR, N=28, +$40.46 net); worst: financials (0.0% WR, N=3)
- Best session to open: 3:15PM (50.0% WR, N=10); best by net $: 10AM (+$45.76, N=31)
- Stop triggered rate: 50.0% of trades (24/48)
- TP hit rate: 10.4% of trades (5/48)
---
