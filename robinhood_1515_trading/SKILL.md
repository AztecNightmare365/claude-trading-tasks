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
<!-- Updated by 2 PM monitor. Last updated: 2026-07-17 (~2:10 PM ET — 2 PM monitor complete). -->

Last updated: 2026-07-17 (~2:10 PM ET — 2 PM monitor complete)

Open positions (4 total — no sells, no new buys):

- AAPL: 0.288213 shares, entry $327.50, stop-loss $317.32, take-profit $347.86, overnight flag: YES
  2 PM price: ~$331.94 (+1.36% vs entry, -0.40% vs Jul 16 close $333.26)
  Status: HOLD. Buffer to stop: $14.62 (4.5%). Buffer to TP: $15.92 (4.8%).
  HSBC Buy (PT $366) upgrade intact — Apple reclaimed world's most valuable company from NVIDIA intraday today.
  Trail trigger $337.86 not yet reached. Stop unchanged at $317.32.
  Thesis: Apple Intelligence / Alibaba Qwen China regulatory approval + HSBC Buy upgrade.
  No earnings until July 30.
  - If AAPL >= $347.86: sell immediately (take-profit)
  - If AAPL <= $317.32: sell immediately (stop-loss)
  - Trail stop to $327.50 (breakeven) if AAPL reaches $337.86 intraday

- RHI: 2.104745 shares, entry $40.29, stop-loss $40.29 (TRAIL AT BREAKEVEN), take-profit $43.15, overnight flag: YES
  2 PM price: ~$41.245 (+2.37% vs entry, -0.21% vs Jul 16 close $41.33)
  Status: HOLD. Buffer to breakeven stop: $0.955 (2.37%). Buffer to TP: $1.905 (4.62%).
  Risk-free position. Recovered from 12 PM low of $40.75 to $41.245 — buffer expanded from $0.46 to $0.955.
  Thesis: Staffing sector momentum from MAN Q2 beat. Breakeven stop = zero downside risk.
  - If RHI >= $43.15: sell immediately (take-profit)
  - If RHI <= $40.29: sell immediately (breakeven stop)

- CTAS: 0.488943 shares, entry $203.50, stop-loss $197.34, take-profit $215.46, overnight flag: YES
  2 PM price: ~$202.90 (-0.30% vs entry, -1.62% vs Jul 16 close $206.25)
  Status: HOLD. Buffer to stop: $5.56 (2.74%). Buffer to TP: $12.56 (5.84%).
  Still below entry. Goldman Sachs Buy (PT $231) intact. FTC Second Request for UniFirst acquisition extends timeline.
  Thesis: Q4 FY2026 earnings beat (revenue +8.9% YoY, EPS +15.6%) + Goldman upgrade.
  - If CTAS >= $215.46: sell immediately (take-profit)
  - If CTAS <= $197.34: sell immediately (stop-loss)

- ABT: 0.872034 shares, entry $98.62, stop-loss $98.62 (TRAILED TO BREAKEVEN), take-profit $105.88, overnight flag: YES
  2 PM price: ~$99.815 (+1.21% vs entry, +0.99% vs Jul 16 close $98.83)
  Status: ⚠️ NEAR STOP. Buffer to breakeven stop: $1.195 (1.21%) — within 1.5% flag threshold.
  Drifted down from 12 PM price of $100.593. Healthcare bid still present but fading.
  Thesis: Q2 earnings beat ($1.31 vs $1.28 est) + full-year EPS guidance raised. Risk-free (stop at breakeven).
  - If ABT >= $105.88: sell immediately (take-profit)
  - If ABT <= $98.62: sell immediately (breakeven stop)

Sells at 2 PM: NONE
New buys at 2 PM: NONE

Settled cash: $456.22 (unchanged)
Unsettled cash: $0
Total account value: ~$822 (equity ~$366 at 2 PM prices + cash $456.22)
Portfolio invested: ~44.5% (well under 75% cap)

---

## 2 PM MONITOR NOTE

ALL STOPS INTACT AS OF ~2:10 PM ET. No sells executed.

Prices at 2 PM — AAPL $331.94 (stop $317.32, buffer +4.5%), RHI $41.245 (stop $40.29, buffer +2.37%), CTAS $202.90 (stop $197.34, buffer +2.74%), ABT $99.815 (stop $98.62, buffer +1.21%).

⚠️ ABT NEAR STOP: $99.815 vs breakeven stop $98.62 — only $1.195 (1.21%) buffer, inside 1.5% threshold. Drifted down from $100.593 at noon. Healthcare bid holding but weakening into afternoon. Risk is zero (breakeven stop = no loss), but thin buffer means a small dip triggers exit. 3:15 PM agent should assess whether to hold or close discretionarily ahead of overnight.

BROAD MARKET (2 PM): SPY -0.85% vs prev close (Robinhood live), QQQ -1.11%. Semiconductor sell-off Day 5 continues — sector down ~20% from highs. Netflix double-digit losses on Q3 guidance miss. Oil up 2% to ~$80 on Middle East conflict escalation. Tech/growth under sustained pressure; healthcare/defensives outperforming.

AAPL POSITIVE: HSBC Buy (PT $366) confirmed. Apple reclaimed world's most valuable company from NVIDIA intraday. Thesis strengthening. Trail trigger $337.86 not yet hit — would trail stop to $327.50 (breakeven) if reached.

RHI IMPROVING FROM NOON: Recovered $40.75 → $41.245 since noon — buffer expanded from $0.46 to $0.955. Still risk-free. Staffing sector intact. Elevated close would be constructive.

CTAS STILL WEAK: -0.30% below entry in a weak tape. -1.62% from prev close. FTC overhang on UniFirst deal. Goldman Buy (PT $231) intact but position has no relative strength. If market continues lower into close, 3:15 PM agent should evaluate discretionary exit.

Note: Polygon VWAP/volume data unavailable at 2 PM (API access error). VWAP relationship and relative volume not assessable this session.

---

NOTES FOR 3:15 PM AGENT (July 17, 2026):

1. MACRO: SPY -0.85%, QQQ -1.11% at 2 PM. Semiconductor sell-off Day 5. Netflix -10%+. Oil +2% on Middle East. Risk-off regime holds. None of our 4 positions in semis/tech — portfolio holding relative to market.

2. AAPL BEST POSITION: $331.94, +1.36% vs entry. HSBC PT $366 upgrade this morning. Apple most valuable company intraday. Trail trigger $337.86 not yet hit. No earnings until July 30. Strong overnight thesis.

3. ABT PRIORITY WATCH ⚠️: $99.815 vs breakeven stop $98.62 — only $1.195 buffer. If market accelerates lower into close, stop could trigger. Risk-free position so no loss, but evaluate whether to hold through overnight or close discretionarily. Healthcare defensive strength is the only backstop.

4. RHI RECOVERED — STILL WATCH: $41.245, buffer $0.955 from breakeven stop. Risk-free. Recovered from noon stress. If staffing sector holds, overnight hold is viable; TP $43.15 requires +4.6% from here.

5. CTAS UNDERPERFORMING — EVALUATE: $202.90, -0.30% below entry ($203.50). Still $5.56 from stop. Goldman Buy intact but no relative strength in weak market. Assess discretionary exit if broad market continues weak into close. FTC Second Request on UniFirst is ongoing overhang.

6. TRV RE-EVALUATION (from noon): TRV was +7.87% (~$364-365) on Q2 earnings beat at noon. Morgan Stanley Underweight/$290 is key overhang. If TRV closes well above $360 with strong volume and MS downgrade absorbed, could consider overnight hold — but require confirmed intraday low above $350. Do not chase if volatile.

7. BUYING POWER: $456.22 fully settled. SPY -0.85% = caution regime at 2 PM (50% size reduction required, strong catalyst needed). Investable ~$125 at half-size within caution regime guidelines.

1 PM monitor: all stops intact as of 1:00 PM ET. Prices — AAPL $330.15 (stop $317.32), RHI $41.09 (stop $40.29), CTAS $202.37 (stop $197.34), ABT $100.06 (stop $98.62). No sells executed.

2 PM monitor: all stops intact as of ~2:10 PM ET. Prices — AAPL $331.94 (stop $317.32), RHI $41.245 (stop $40.29), CTAS $202.90 (stop $197.34), ABT $99.815 (stop $98.62). No sells executed. ⚠️ ABT NEAR STOP (1.21% buffer).

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
- Position in live portfolio but NOT in handoff → user bought it manually. Add it with a conservative default stop (5% below current price for an overnight hold); research its catalyst before deciding whether to hold it overnight.
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
Use Polygon to get SPY's change % from prior close and how it is trending into the close.
- If SPY is DOWN more than 2% on the day: risk-off regime. SKIP all new overnight buys (skip Steps 4 and 5, go to Step 6). Holding new longs overnight into a weak-market close carries elevated gap-down risk. Note "Market regime gate triggered — SPY down [X]%, no new overnight buys." You may still HOLD existing winners overnight if their individual thesis is strong.
- If SPY is DOWN 1% to 2%: caution regime. You may open overnight positions but reduce sizes by 50% and require a strong, clearly-dated catalyst.
- If SPY is flat, up, or down less than 1%: normal regime, proceed as usual — a mild broad-market dip is not a reason to sit out individual stocks with real, confirmed momentum.
This gate does NOT affect sells — always honor stops and take-profits regardless of regime.

---

STEP 4 — Find overnight momentum candidates
You are looking specifically for stocks with strong overnight gap-up potential, not just stocks that moved today. Cast a wide net — aim for 50+ raw candidates before filtering. Run all sources in parallel:

Source A — Polygon top movers (primary):
Use Polygon's snapshot endpoint to get US stocks with change % ≥ 3% and actual relative volume ≥ 1.5×. Also pull today's 52-week high list from Polygon. Sort by relative volume. This is your primary candidate pool.

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

Combine everything into a master candidate list. For each candidate, fetch from Polygon: current price, change %, actual relative volume, VWAP, today's intraday low (for stop-loss reference), and closing price trend from 5-min bars in the last hour (is it closing strong or fading?).

Then screen every candidate against all of the following:

Baseline filters:
- Up at least 3% on the day
- Actual relative volume ≥ 1.5× (from Polygon — no estimation)
- Current price is ABOVE VWAP and closing near/above its intraday high (closing strong, not fading into the bell)
- Market cap above $2 billion (disqualify OTC, pink sheets, ADRs)
- Bid/ask spread below 1%
- Not already in your portfolio

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

Then email this summary to yourself using the Gmail MCP tools. Send to aqmeyer123@gmail.com with subject "Robinhood 3:15 PM close — [DATE]". Body = the summary above in clean plain text. Lead with a one-line headline: end-of-day account value, day's total P&L, and what is being held overnight. Put any portfolio-sync or regime-gate flags at the top. This is the end-of-day wrap — make it the most complete of the day's emails.

---

STEP 8 — Write handoff to the 10:00 AM prompt
After completing the summary, overwrite the `## HANDOFF FROM LAST 3:15 PM SESSION` block in `robinhood_1000_trading/SKILL.md` (relative to the root of the cloned `claude-trading-tasks` repo) with the following information:
- Today's date and time
- Every open position being held overnight: ticker, shares, average entry price, stop-loss, take-profit, and the overnight thesis in one sentence
- Settled cash remaining
- Total account value
- Any notes the 10:00 AM agent should know (e.g. catalysts to watch before open, earnings risk, sector news expected overnight, positions near targets)

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

Format: `date,ticker,shares,entry_price,exit_price,entry_session,exit_session,catalyst,sector,pnl_pct,pnl_dollar,exit_reason`

- `entry_session`: from handoff ("3:15PM", "10AM", or "12PM")
- `exit_session`: "3:15PM"
- `exit_reason`: "stop_loss", "take_profit", or "discretionary"
- `pnl_pct`: (exit_price - entry_price) / entry_price × 100
- `pnl_dollar`: (exit_price - entry_price) × shares
- `catalyst` and `sector`: from handoff notes (earnings_beat / analyst_upgrade / fda / merger / sector_momentum / other; tech / energy / healthcare / financials / consumer / industrial / other)

Only log completed (exited) trades. Include trade_log.csv in the git commit from Step 8.

---

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-07-18. Based on 5 closed trades. -->

OVERALL: Win rate 0%, profit factor 0.00, net P&L -$4.85

TOP RULES (read before every session):
1. 10AM entries had the smallest losses (avg -0.83%, N=3) vs 12PM (-2.10%, N=1) and 3:15PM (-2.05%, N=1) — prefer 10AM entries; raise the bar sharply for midday and late-session buys until sample grows.
2. earnings_beat catalyst had the smallest average loss (-0.83%, N=3) vs analyst_upgrade (-2.10%) and sector_momentum (-2.05%) — prioritize earnings beats; treat upgrades and sector-momentum entries with extra scrutiny in current conditions.
3. All 5 exits were discretionary losses — 0% stop_loss trigger rate, 0% TP hit rate (N=5). Positions are being cut before stops or TPs are reached. Do not exit discretionarily unless the thesis has concretely broken; let stops do their job.

AVOID: All 5 trades were entered or managed during a sustained macro risk-off regime (SPY -1%+ multiple days, semiconductor sell-off, Netflix guidance miss). Every trade ended in a discretionary loss. When the regime gate is triggered, entering new positions compounds losses — honor the gate strictly; it exists for exactly this scenario.

LEAN INTO: earnings_beat catalyst with 10AM entry in a neutral or positive macro regime. CTAS (earnings_beat, 10AM entry) had the smallest loss (-0.36%) and its exit was purely macro-driven — the fundamental thesis remained intact. This catalyst + session combination should outperform meaningfully when macro conditions normalize.

RAW STATS:
- Best catalyst: earnings_beat (0% win rate, -0.83% avg loss, N=3)
- Best sector: industrial (0% win rate, -0.36% avg loss, N=1 — insufficient data for confidence)
- Best session to open: 10AM (0% win rate, -0.83% avg loss, N=3)
- Stop triggered rate: 0% of trades (target: <40%)
- TP hit rate: 0% of trades (target: >30%)
---