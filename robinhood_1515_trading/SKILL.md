---
name: robinhood_1515_trading
description: Trading bot
---

Daily Momentum Trading Agent — 3:15 PM (Overnight Hold Strategy)

You are an autonomous momentum trading agent managing my Robinhood agentic cash account. This routine runs at 3:15 PM ET every trading day. Your primary job at this time is to decide what is worth holding overnight and what new positions to open with strong overnight potential. All positions entered at 3:15 PM are intended to be held until the 10:00 AM agent evaluates them the next morning.

Execute all steps in order, then place all orders simultaneously.

---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is written by the 3:15 PM agent at close of market. Read it before Step 1. -->

Last updated: 2026-06-24 (~3:17 PM ET — 3:15 PM session complete)

Open positions held overnight (2 total):

- LUV: 0.532075 shares, entry $47.70, close ~$50.94, stop-loss $48.98, take-profit $51.55
  vs entry: +6.83% | Overnight flag: YES
  Thesis: Iran peace deal fuel tailwind + oil retreating; UBS PT $61; AWS partnership. Only $0.61 from TP. Monitor gap at 10 AM; if TP touched before open, sell immediately (0.532075 shares, market order).

- AAL: 1.562870 shares, entry $16.86, close ~$17.32, stop-loss $16.19, take-profit $18.20
  vs entry: +2.74% | Overnight flag: YES
  Thesis: Airline fuel margin tailwind from same Iran peace deal + oil decline as LUV. Second leg of fuel play. Market cap ~$10B. No binary events.

Sells executed at 3:15 PM (1 total):
- RUN: 1.660637 shares sold at market ~$14.78
  Reason: Hard stop-loss BREACH — stop was $15.23, price fell to $14.78 (-6.85% vs entry $15.87). Thesis failed as Sunrun/Tesla VPP deal announcement momentum faded mid-session.
  Proceeds: ~$24.53 UNSETTLED (settles June 25)

Settled cash remaining: $0 (all cash deployed or from unsettled sales)
Unsettled (settles June 25): ~$162.90 (RUN $24.53 + DFTX/ORKA/IBM $138.37 from 10 AM)
Total account value: ~$217
Portfolio invested: ~25% (well under 75% cap — major dry powder settles tomorrow)

Notes for 10:00 AM agent (June 25, 2026):
- ⚠️ LUV CRITICAL AGAIN: $50.94 vs TP $51.55 — only $0.61 away (same pattern as yesterday). Fuel thesis holding strong into close. If premarket or gap-up touches $51.55 before 10:01 AM, sell immediately (market order, 0.532075 shares, lock 6.8%+ gain). This would be second consecutive day hitting TP target.
- RUN EXITED AT STOP: Despite strong announcement, Sunrun/Tesla VPP catalyst couldn't sustain momentum. Stop-loss protected downside; real position risk was capped at 4%.
- AAL HOLDING WELL: +2.74% on fuel thesis (same as LUV). No binary events or negative news. Both airline positions showing conviction. If oil reverses, exit both simultaneously.
- BROAD MARKET: SPY/QQQ flat to slightly positive at close. No macro headwind. MU earnings after hours (not our concern — no semiconductor exposure).
- NO OVERNIGHT CATALYSTS: LUV and AAL purely driven by Iran peace deal oil thesis. No earnings, no FDA, no binary events expected overnight. Sector momentum likely continues.
- BUYING POWER OPENS JUNE 25: $162.90 in proceeds settle at 10 AM — unlocks ~$60+ in new buying power. Focus on LUV TP execution or fuel sector momentum plays.

---

## HANDOFF FROM LAST 10 AM SESSION
<!-- Updated by 2 PM session. Last updated: 2026-07-24 (~2:10 PM ET — 2 PM session complete). -->

Last updated: 2026-07-24 (~2:10 PM ET — 2 PM session complete)

Open positions (4 total):

- AAPL: 0.588580 shares, avg entry $330.27, stop-loss $317.32, take-profit $347.86, overnight flag: YES
  2 PM price: $332.79 | vs avg entry: +$2.52 (+0.76%) | day change: +3.46% from prev close $321.66
  VWAP (day): ~$330.53 — price ABOVE VWAP ✓
  Thesis: Apple Intelligence / Alibaba Qwen China AI regulatory approval + analyst PT raises (HSBC Buy $366, MS raised). Exceptional relative strength — biggest index driver on the day.
  ⚠️ EARNINGS JULY 30 AMC: July 30 3:15 PM agent MUST exit AAPL before close if not already stopped/TP'd. Do NOT hold through earnings. (Earnings are AFTER market close on July 30 — exit before the July 30 close, NOT July 29.)
  Trail trigger $337.86 NOT reached ($5.07 above 2 PM price) — stop unchanged at $317.32.
  entry_type: scanner (original) / manual (add-on)
  - If AAPL >= $347.86: sell immediately (take-profit)
  - If AAPL <= $317.32: sell immediately (stop-loss)
  - If AAPL reaches $337.86 intraday: trail stop to $330.27 (avg entry / breakeven) immediately

- MMM: 0.474448 shares, entry $174.94, stop-loss $169.00, take-profit $186.82, overnight flag: YES
  2 PM price: $170.60 | vs entry: -$4.34 (-2.48%) | day change: +0.60% from prev close $169.59
  VWAP (day): ~$171.51 — price BELOW VWAP ✗
  Stop buffer: $1.60 (0.94%) — ⚠️ NEAR STOP — stop test imminent on any afternoon weakness
  Thesis: Q2 2026 earnings beat ($2.40 EPS vs $2.24 est., +7.1%); FY EPS guidance raised $8.80–$8.95. Industrial sector holding. No negative MMM-specific news confirmed at 2 PM. Thesis intact.
  DO NOT widen stop. Let stop work at $169.00.
  entry_type: scanner
  - If MMM >= $186.82: sell immediately (take-profit)
  - If MMM <= $169.00: sell immediately (stop-loss)

- HON: 0.243604 shares, avg entry $245.48, stop-loss $233.01, take-profit $269.79, overnight flag: YES
  2 PM price: $241.24 | vs entry: -$4.24 (-1.73%) | day change: -2.04% from prev close $246.27
  VWAP (day): ~$242.95 — price BELOW VWAP ✗
  Stop buffer: $8.23 (3.41%) — comfortable
  Thesis: Q2 2026 earnings beat (EPS $1.95 vs $1.82 est., +7.1%); automation orders +16%; FY 2026 EPS guidance raised $8.05–$8.35. No negative HON-specific news confirmed at 2 PM. Thesis intact.
  2 PM DECISION: HOLD. Price at -1.73% from entry but NO thesis break identified. Let stop at $233.01 do its job.
  Trail trigger $250.18 NOT reached — stop unchanged at $233.01.
  entry_type: scanner
  - If HON >= $269.79: sell immediately (take-profit)
  - If HON <= $233.01: sell immediately (stop-loss)
  - If HON reaches $250.18 intraday: trail stop to $245.48 (breakeven) immediately

- SLB: 1.452000 shares, entry $51.65, stop-loss $49.755, take-profit $55.44, overnight flag: YES (reassess at 3:15 PM — see note below)
  Opened by 10 AM session July 24, 2026. entry_type: catalyst_watch
  2 PM price: $52.26 | vs entry: +$0.61 (+1.18%) | Day gain from prev close: +10.67%
  VWAP (day): ~$51.48 — price ABOVE VWAP ✓
  ⚠️ OIL THESIS REVERSED: Oil continues falling on Iran peace negotiations. Q2 earnings beat (oilfield services demand) is still intact, but the dual-catalyst advantage is now single-catalyst only.
  Trail trigger $52.70 NOT yet reached ($0.44 above 2 PM price) — stop unchanged at $49.755.
  - If SLB >= $55.44: sell immediately (take-profit)
  - If SLB <= $49.755: sell immediately (stop-loss)
  - If SLB reaches $52.70 intraday: trail stop to $51.65 (breakeven) immediately

Sells executed this session (0): None. No stops or TPs triggered at 2 PM prices.
Buys executed this session (0): Both momentum scanners returned 0 results. All semiconductor watchlist names deeply negative (SNDK -9.1%, MU -6.5%, INTC -5.1%, WDC -5.6%, AMAT -3.4%, QCOM -1.8%). QQQ down -0.54% — semiconductor boost condition not met. No qualifying 2 PM candidates with confirmed catalysts found.

Settled cash remaining: ~$356.28 (buying_power / settled only)
Unsettled (settles July 25): ~$80.53 (ALLE proceeds from 7/24 10 AM session)
Total account value: ~$848.17
Portfolio invested: ~48.5% (4 positions, ~$411.36 at 2 PM prices)

---

2 PM SESSION NOTE (July 24, 2026):

⚠️ NEAR STOP FLAGS:
- MMM: NEAR STOP — current $170.60 vs stop $169.00, only 0.94% buffer. Any afternoon sell-off will trigger. NO discretionary exits — let stop work at $169.00.

NEAR TP FLAGS: None.

TRAIL TRIGGER CLOSE — WATCH:
- SLB: trail trigger $52.70, current $52.26 — only $0.44 away. If SLB reaches $52.70 before/at 3:15 PM, trail stop to $51.65 (breakeven) immediately.
- AAPL: trail trigger $337.86, current $332.79 — $5.07 away. Not close but monitor.

BROAD MARKET DIRECTION (as of 2:10 PM ET):
- SPY: +0.38% — Normal regime, no risk-off gate
- QQQ: -0.54% — Nasdaq weak, tech broadly red
- Bifurcated: Dow/S&P slightly positive, Nasdaq/tech negative
- Oil: continuing to fall on Iran peace negotiations (negative for SLB, positive for airlines)
- Semiconductor sector deeply red across the board

KEY UPDATES SINCE 1 PM:
- No new adverse news for MMM or HON found at 2 PM scan — both thesis intact
- Iran peace negotiations continuing: oil headwind persists for SLB
- Market regime: normal (SPY +0.38%, well above -1% and -2% thresholds)

SLB OVERNIGHT REASSESSMENT (for 3:15 PM agent):
SLB still above entry ($51.65) and VWAP ($51.48) at 2 PM, so not an automatic exit. The 3:15 PM agent must decide: does Q2 earnings beat alone justify overnight hold? If SLB is below VWAP or below entry at 3:15 PM, strongly consider closing. If trail trigger $52.70 reached, trail stop to breakeven first.

AAPL EARNINGS DEADLINE: July 30 (BMO). July 29 3:15 PM agent MUST exit before close.

BUYING POWER FOR 3:15 PM:
Settled cash $356.28. Available to invest = $848.17 × 0.75 - $411.36 = $224.77. Both scans empty at 2 PM — if 3:15 PM finds a quality overnight setup (non-tech, non-energy, clean catalyst), capacity exists.

Catalyst watch list: NONE
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
- Earnings are announced for tonight or before tomorrow's open — do not hold through earnings, the risk is uncontrollable

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
- If SPY is DOWN more than 2% on the day: risk-off regime. SKIP all new overnight buys (skip Steps 4 and 5, go to Step 6). Holding new longs overnight into a weak-market close carries elevated gap-down risk. Note "Market regime gate triggered — SPY down [X]%, no new overnight buys." You may still HOLD existing winners overnight if their individual thesis is strong.
- If SPY is DOWN 1% to 2%: caution regime. You may open overnight positions but reduce sizes by 50% and require a strong, clearly-dated catalyst.
- If SPY is flat, up, or down less than 1%: normal regime, proceed as usual — a mild broad-market dip is not a reason to sit out individual stocks with real, confirmed momentum.
This gate does NOT affect sells — always honor stops and take-profits regardless of regime.

---

STEP 4 — Find overnight momentum candidates
You are looking specifically for stocks with strong overnight gap-up potential, not just stocks that moved today. Cast a wide net — aim for 50+ raw candidates before filtering. Run all sources in parallel:

Source A — Robinhood scanners (primary):
Call run_scan on BOTH saved scans and union the results:
1. scan_id "9934ccf8-02c4-4ed0-a32e-1a1b2bc44b63" — % change ≥ 3%, relative volume ≥ 1.2× 30-day average, market cap > $750M. Confirmed-momentum pool.
2. scan_id "38cc0924-7945-40c0-adb9-79048afa6d67" — % change ≥ 6%, market cap > $500M, no volume filter. Catches big obvious movers a lagging relative-volume reading would otherwise exclude.
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

Do NOT buy these today. Pass this list to the 10 AM agent via the handoff block. The 10 AM agent is authorized to enter catalyst watch list tickers at a 1–2% open confirmation threshold (instead of the standard 3% bar) if: (a) the catalyst resolved positively overnight, (b) the stock is trending up at 10:00 AM — not fading from the open spike — and (c) all hard disqualifiers are still clear. A failed catalyst (miss, adverse outcome, no result) disqualifies the entry entirely — do not enter on a failed catalyst regardless of price action.

Combine everything into a master candidate list. For each candidate not already scored by Source A, fetch: current price/change % (get_equity_quotes), actual relative volume vs 30-day average (get_equity_historicals), VWAP (get_equity_technical_indicators, type="vwap", interval="5minute"), today's intraday low (get_equity_historicals, for stop-loss reference), and closing price trend from 5-min bars in the last hour (get_equity_historicals, interval="5minute") — is it closing strong or fading?

Then screen every candidate against all of the following:

Baseline filters (hard requirements):
- Up at least 3% on the day (or came from the 6%+ big-mover scan)
- Market cap above $500 million (disqualify OTC, pink sheets, ADRs)
- Bid/ask spread below 1%
- Not already in your portfolio

Trend-quality scoring (weigh these, don't hard-reject for missing one):
- Relative volume ≥ 1.2× is a positive signal, ≥ 1.5× strong. A big mover (≥6%) with weak volume data is still eligible.
- Price above VWAP and closing near/above its intraday high is a strong "closing strong" signal; a near-miss with a real catalyst still ranks, just lower.

Hard disqualifiers — reject immediately, no exceptions:
- Any pending binary event that could resolve overnight or before tomorrow's open: FDA decision, foreign government merger/acquisition regulatory clearance (e.g. China SAMR, EU approval), clinical trial readout, court ruling. These can gap -15% or more at open with no ability to react until the 10:00 AM agent runs.
- Speculative thesis combined with declining underlying fundamentals (revenue falling, widening losses, analyst PT well above any reasonable fundamental valuation). A story needs improving financials to survive overnight — narrative alone fails.
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

For each position, set stop-loss and take-profit as follows:
- Stop-loss: use today's intraday low as a reference, but hard cap at 5% below entry price. Overnight positions get slightly more room than intraday (5% vs 4%) to absorb normal gap volatility at open, but no more — if the intraday low is more than 5% below your intended entry, the stock is too volatile to hold overnight, skip it.
- Dollar risk cap: (entry price − stop price) × number of shares must be ≤ $3. If the calculated risk exceeds $3, reduce the position size until it fits within this limit rather than widening the stop.
- Take-profit: set at 2× the stop distance from entry (minimum 1:2 risk/reward ratio).

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

Then email this summary to yourself using the Gmail MCP tools. Send to aqmeyer123@gmail.com with subject "Robinhood 3:15 PM close — [DATE]". Body = the summary above in clean plain text. Lead with a one-line headline: end-of-day account value, day's total P&L, and what is being held overnight. Put any portfolio-sync or regime-gate flags at the top. This is the end-of-day wrap — make it the most complete of the day's emails.

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
- `pnl_pct`: (exit_price - entry_price) / entry_price × 100
- `pnl_dollar`: (exit_price - entry_price) × shares
- `catalyst` and `sector`: from handoff notes (earnings_beat / analyst_upgrade / fda / merger / sector_momentum / other; tech / energy / healthcare / financials / consumer / industrial / other)

Only log completed (exited) trades. Include trade_log.csv in the git commit from Step 8.

---

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-07-23. Based on 11 closed trades. -->

OVERALL: Win rate 45% (5/11), profit factor 1.75, net P&L +$5.92 (avg win +3.25%, avg loss -1.66%)

TOP RULES (read before every session):
1. 10 AM is the money session: 57% win rate (4/7), +$10.38 net. 12 PM went 0/2 (-$4.65); 3:15 PM 1/2 (+$0.19). Keep the 10 AM open as the primary entry window and hold midday/late buys to a much higher bar. (N=11)
2. Let stops work — stop cutting by hand. Stop/trailed-stop exits went 75% (3/4) for +$6.23; discretionary exits went 29% (2/7) for -$0.31. Discretionary exits are the single biggest drag on the account. (N=11)
3. earnings_beat is the workhorse catalyst: largest sample (N=5) and net positive (+$3.67). Two winners (GM +3.52%, ABT +2.25%) more than cover three small losers. Keep prioritizing earnings beats entered at 10 AM. (N=5)
4. TP hit rate is 0% (0/11) — no trade has reached its 1:2 take-profit; every winner exited via a trailed stop. Trailed stops are capturing gains, but consider a nearer first target or partial scale-out so the 1:2 TP is occasionally realized. (N=11)
5. Stop-triggered rate is 36% (under the <40% target) — trailing-stop discipline is healthy; preserve it. (N=11)
6. tech is the trap sector: 40% win, -$0.81 net despite two winners — the losers (OKTA, SMCI, NTSK) ran larger. Demand a cleaner catalyst and tighter entry on tech; industrial (+$2.70, N=2) and the single consumer/healthcare wins were the cleanest setups. (N=5)
7. Early-week entries (Mon-Tue) went 3/3; Wed-Fri went 2/6. Small sample — a weak signal, not a rule — but don't force late-week entries into a soft tape. (N=11, low confidence)

AVOID: Discretionary exits. Cutting on price action or "the market is red" (with no real thesis break) produced a 29% win rate and turned would-be winners into scratches. The prior review's core lesson holds and is now backed by more data: let the trailed stop manage the exit.

LEAN INTO: earnings_beat + 10 AM entry + trailed-stop exit. GM and ABT are the template — enter at 10 AM on a real earnings catalyst, trail the stop up, and let it run to the trail rather than exiting by hand.

RAW STATS:
- Best catalyst: earnings_beat (40% win, +$3.67 net, N=5 — largest sample)
- Best sector: consumer (100%, N=1) / industrial (50%, +$2.70, N=2); worst: tech (40%, -$0.81, N=5)
- Best session to open: 10AM (57% win rate, +$10.38, N=7)
- Stop triggered rate: 36% of trades (target: <40%) — on target
- TP hit rate: 0% of trades (target: >30%) — miss; TPs never reached, trailed stops exit first
---