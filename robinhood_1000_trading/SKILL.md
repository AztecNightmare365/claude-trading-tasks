---
name: robinhood-1000-trading
description: Trading bot
---

Morning Repositioning Agent — 10:00 AM (Market Open Strategy)

You are an autonomous momentum trading agent managing my Robinhood agentic cash account. This routine runs at 10:00 AM ET every trading day, 30 minutes after market open. Your job is to evaluate how overnight positions performed through the open, react to early morning momentum, and reposition the portfolio for the rest of the trading day. The first 30 minutes of trading (9:30 to 10:00 AM) is the most volatile period — by 10:00 AM you have enough data to make informed decisions without chasing the open spike.

Execute all steps in order, then place all orders simultaneously.

---

## PRE-MARKET BRIEF
<!-- Updated by the 9:15 AM pre-market agent. Read before Step 1. -->

**Generated: 2026-07-21 ~9:15 AM ET**

---

### OVERNIGHT POSITIONS: 2 HELD

| Ticker | Shares | Entry | Stop | TP | Pre-Mkt Price | vs Jul 20 Close | Flag |
|--------|--------|-------|------|-----|--------------|----------------|------|
| AAPL | 0.288213 | $327.50 | $317.32 | $347.86 | ~$325.46 | -$1.13 (-0.37%) | **ON TRACK** |
| ABT | 0.872034 | $98.62 | $101.00 (trail) | $105.88 | ~$100.72 | -$0.94 (-0.93%) | **STOP BREACH** |

> **Cash**: $555.46 settled + ~$87.85 unsettled (RHI proceeds, settles today July 21 — confirm with Robinhood before use)

> **Note**: Polygon API still broken (invalid key — persistent since July 16). Pre-market prices sourced from Robinhood extended-hours quotes (`last_non_reg_trade_price`).

---

### POSITION DETAIL

**AAPL — ON TRACK**
Pre-market $325.46 (range since 9:00 AM: $324.90–$325.47; -0.37% vs July 20 close $326.59; bid/ask $325.40/$325.48). Stop $317.32 is $8.07 (2.5%) below current pre-market — adequate buffer. TP $347.86 is 6.9% away. Trail trigger $337.86 not reached — stop unchanged at $317.32. **Thesis intact**: Apple Intelligence / Alibaba Qwen China AI approval holding; HSBC Buy PT $366; Citi and Evercore ISI reiterated $365 PTs. No adverse AAPL-specific news overnight. Earnings July 30 — no binary event this week. QQQ +1.30% pre-market (chip recovery, Iran ceasefire talks) is constructive for AAPL. The KeyBanc Underweight ($250 PT, July 14) is the only bear note and remains unchanged. **Hold — thesis intact, stop well-buffered.**

**ABT — STOP BREACH**
Pre-market $100.72 (range since 9:00 AM: $100.62–$100.77; -0.93% vs July 20 close $101.66; bid $100.72 / ask $101.45 — wide spread). **The trailed stop-loss of $101.00 is breached — entire pre-market range has been below $101.00 since 9:00 AM.** No new adverse ABT-specific news overnight; multiple analyst upgrades (JPMorgan PT $120, Piper Sandler $118, Citi $112, BofA $115) remain in place from July 17. The breach appears to be routine post-earnings fade in thin pre-market rather than a thesis break — ABT fundamental thesis (Q2 beat, raised EPS guidance $5.45–$5.60, healthcare outperforming) remains intact. However, the trailed stop exists to protect the +2.1% gain vs entry, and the handoff instruction is explicit. **10 AM AGENT: CHECK ABT FIRST — if ABT is at or below $101.00 at 10 AM, sell immediately (0.872034 shares, market order, stop-loss triggered). If ABT has recovered above $101.00 with positive momentum at open, discretionary hold is defensible — but the stop must be honored if price has not recovered.**

---

### MACRO CONTEXT (pre-market July 21, 2026)

| Index | Jul 20 Close | Pre-Mkt Price | Change% vs Jul 20 | Regime Gate |
|-------|-------------|--------------|-------------------|-------------|
| SPY | $742.09 | ~$745.10 | **+0.41%** | CLEAR |
| QQQ | $696.06 | ~$705.14 | **+1.30%** | — |

**Regime gate: CLEAR** — SPY +0.41% pre-market. Normal regime: new buys are permissible at 10 AM if candidates pass all filters.

---

### KEY OVERNIGHT/PRE-MARKET DEVELOPMENTS

**1. MARKETS RECOVERING — TECH LEADS**
Nasdaq-100 futures +1.3%, S&P 500 futures +0.4% pre-market July 21. Chip stocks rebounding after last week's sell-off. QQQ +1.30% confirms broad tech recovery underway. Polymarket implies 95% probability S&P 500 opens higher today.

**2. IRAN CEASEFIRE TALKS — OIL EASING**
Reports of renewed Washington-Tehran diplomatic efforts; mediators pushing for a 10-day ceasefire. Crude prices edging lower. Reduces inflation tail risk. Net positive for growth equities.

**3. IBM EARNINGS TONIGHT (BINARY EVENT — no exposure)**
IBM reports Q2 2026 after close July 21. Potential tech sentiment driver for tomorrow's open — no direct portfolio exposure, but may affect QQQ/tech overnight July 21→22.

**4. BIG BINARY EVENTS TOMORROW AND THURSDAY**
- July 22 PM: Tesla + Alphabet earnings — Mag 7 events, major QQQ movers
- July 23 PM: Intel (INTC) — chip sector binary, 15% implied move
These do not affect today's session but any position held overnight July 21→22 faces elevated Mag-7 volatility risk.

**5. AAPL APPROACHING EARNINGS (JULY 30)**
AAPL at 11x sales peak per Benzinga — historically elevated valuation. Earnings July 30 remain the next binary event (9 days away). No new adverse news overnight. Bull case (China AI, Services monetization) intact.

---

### FLAGS

| Ticker | Shares @ Entry | Pre-Mkt Price | vs Jul 20 Close | Stop Distance | Flag |
|--------|---------------|--------------|----------------|---------------|------|
| AAPL | 0.288213 @ $327.50 | ~$325.46 | -0.37% | $8.07 (2.5%) above stop $317.32 | **ON TRACK** |
| ABT | 0.872034 @ $98.62 | ~$100.72 | -0.93% | **$0.28 (0.3%) BELOW stop $101.00 — BREACHED** | **STOP BREACH** |

---

### ONE-LINE SUMMARY
**1 position on track, 1 STOP BREACH for immediate action. ABT pre-market $100.72 is below trailed stop $101.00 — 10 AM agent must sell ABT (0.872034 shares, market order) if at or below $101.00 at open. AAPL solid with 2.5% stop buffer, thesis intact. SPY +0.41%, QQQ +1.30% pre-market — REGIME GATE CLEAR, new buys permissible. RHI proceeds (~$87.85) settle today July 21.**

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

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-07-21 (~3:25 PM ET — 3:15 PM session complete)

Open positions held overnight (4 total):

- AAPL: 0.288213 shares, entry $327.50, stop-loss $317.32, take-profit $347.86, overnight flag: YES
  Close ~$327.59 | vs entry: +$0.09 (+0.03%)
  Thesis: Apple Intelligence / Alibaba Qwen China AI regulatory approval + HSBC Buy PT $366. No earnings until July 30.
  Trail trigger $337.86 not reached — stop unchanged at $317.32.
  - If AAPL >= $347.86: sell immediately (take-profit).
  - If AAPL <= $317.32: sell immediately (stop-loss).
  - If AAPL reaches $337.86 intraday: trail stop to $327.50 (breakeven) immediately.

- MMM: 0.474448 shares, entry $174.94, stop-loss $169.00, take-profit $186.82, overnight flag: YES
  Close ~$170.82 | vs entry: -$4.12 (-2.36%) | ⚠️ NEAR STOP: only $1.82 above stop $169.00
  Thesis: Q2 2026 earnings beat ($2.40 EPS vs $2.27 est, +5.7%), organic sales +5.4% YoY, FY EPS guidance raised to $8.80-$8.95. Industrial sector. Thesis intact — no negative news.
  Stop unchanged at $169.00. Do NOT widen.
  - If MMM >= $186.82: sell immediately (take-profit).
  - If MMM <= $169.00: sell immediately (stop-loss — CRITICAL, only $1.82 buffer).

- GM: 1.321866 shares, entry $78.677, stop-loss $76.29, take-profit $83.45, overnight flag: YES
  Close ~$79.77 | vs entry: +$1.09 (+1.39%)
  Thesis: Q2 2026 earnings beat ($3.57 EPS vs $3.29 est, +8.5%), raised FY EBIT guidance to $14-16B. Consumer/Auto sector.
  Trail trigger $80.25 never reached today — stop unchanged at $76.29.
  - If GM >= $83.45: sell immediately (take-profit).
  - If GM <= $76.29: sell immediately (stop-loss).
  - If GM trades above $80.25 AT ANY POINT: trail stop to $78.677 (breakeven) IMMEDIATELY.

- WDC: 0.110219 shares, entry $544.37, stop-loss $517.15, take-profit $598.81, overnight flag: YES
  Opened at 3:24 PM ET | Close ~$543.89 | vs entry: ~flat
  Thesis: AI/HDD/NAND storage demand confirmed by IBM Q2 miss (customers shifted spend TO AI infrastructure/memory); Q3 EPS beat ($2.72 vs $2.39 est); HDD production sold out through 2028; Citi PT $800, avg analyst PT $897. Sector rally: MU +11.4%, AMD +7.6% today on same IBM thesis.
  - If WDC >= $598.81: sell immediately (take-profit).
  - If WDC <= $517.15: sell immediately (stop-loss).

Sells executed at 3:15 PM (1 total):
- NBIS: 0.409230 shares sold at market $211.73 avg fill
  Entry: $202.82 (10 AM session July 21). Stop trailed from $204.90 to $211.92 at 2 PM.
  Price fell to $211.24 at 3:15 PM — below trailed stop $211.92. Hard exit executed.
  Realized P&L: +$3.65 (+4.40%). Proceeds: ~$86.67 UNSETTLED (settle July 22).

New buys: WDC $60 (0.110219 shares at $544.37) — AI storage demand play (details above).

Settled cash remaining: ~$313.25 (buying power per Robinhood at close)
Unsettled cash: ~$86.67 (NBIS proceeds, settle July 22)
Total cash shown by Robinhood: ~$487.84
Total account value: ~$828.67
Portfolio invested: ~41.1% (4 positions, ~$340.83 equity)

---

NOTES FOR 10:00 AM AGENT (July 22, 2026):

1. ⚠️ MMM NEAR STOP — HIGHEST PRIORITY: Close ~$170.82, stop $169.00. Only $1.82 buffer (1.06%). Thesis intact (Q2 earnings beat, raised FY EPS guidance). If MMM gaps down below $169.00 at open, sell immediately (0.474448 shares, market order). Do NOT widen stop.

2. WDC OVERNIGHT CATALYST THESIS: IBM Q2 miss confirmed customers shifted spend FROM traditional software TO AI infrastructure/memory — directly bullish for WDC HDD and NAND. Watch for IBM formal earnings release tonight (may provide positive AI-specific data). Also watch for any AI capex announcements from hyperscalers. If WDC gaps up significantly, check TP $598.81 before acting.

3. GM TRAIL TRIGGER: $80.25 never hit today (close ~$79.77). If GM opens or trades above $80.25, trail stop to breakeven $78.677 IMMEDIATELY.

4. TSLA + GOOGL EARNINGS TONIGHT (July 22 AH): These report AFTER MARKET CLOSE July 22 — they will not have reported by 10 AM July 22. Market positioning ahead of these events may move QQQ and AAPL early in the session on July 22. Be alert to premarket tech sentiment shifts.

5. IBM FORMAL EARNINGS: Pre-announced miss July 20. Formal release possible tonight July 21. Bad news already priced in (IBM -25%). Positive AI revenue data in formal release = additional WDC/MU tailwind.

6. BROAD MARKET AT CLOSE: SPY +0.84% (normal regime). Semiconductor sector led (SOXX +4.5%). Nasdaq +~1.5%. US-Iran tensions (ongoing airstrikes) are background risk — monitor overnight for escalation.

7. NBIS UNSETTLED CASH: $86.67 settles July 22 at open, boosting buying power to ~$400. Strong dry powder for 10 AM earnings-beat entries if qualified candidates emerge.

8. SCANNERS returned 0 today at 3:15 PM despite WDC/MU both up 10%+ (likely data lag). Run scans fresh at 10 AM — expect normal results.

---

PRE-CHECK — Market day verification
Before doing anything else, check today's date. If today is Saturday or Sunday, output "Market closed — weekend. No action taken." and stop immediately. Do not proceed to Step 1.
Also check if today is a US federal market holiday (New Year's Day, MLK Day, Presidents Day, Good Friday, Memorial Day, Juneteenth, Independence Day, Labor Day, Thanksgiving, Christmas). If it is, output "Market closed — [holiday name]. No action taken." and stop.

---

STEP 1 — Account snapshot
Retrieve current account state:
- Total account value (settled cash + all open position market values)
- Settled cash only — never count unsettled funds from recent sales
- All open positions with entry price, current price, overnight change %, current day change %, and unrealized gain/loss %
- Any pending orders — cancel stale unfilled orders before proceeding
- Note the broad market direction: check whether S&P 500 (SPY) and QQQ are up or down on the day so far

PORTFOLIO SYNC — reconcile before acting:
Compare the ACTUAL Robinhood positions (from get_portfolio) against the positions listed in the handoff block you just read. The user frequently closes or opens positions manually between sessions, so the handoff may be stale.
- If a position in the handoff is NOT in the actual portfolio: the user sold it manually. Note "USER CLOSED [TICKER] manually" and do not act on it. If you can determine the exit price from recent history, append it to trade_log.csv with exit_reason "user_manual".
- If a position exists in the actual portfolio but is NOT in the handoff: the user bought it manually. Adopt it — get its current quote, estimate an entry (use user's average cost from portfolio), and manage it going forward. Note "ADOPTED user position [TICKER]".
- The ACTUAL Robinhood portfolio is always the source of truth. Never place orders based on handoff data that contradicts the live portfolio.

---

STEP 2 — Evaluate overnight positions
For each position held from yesterday's 3:15 PM session, get its current quote and assess how it reacted to the open.

Hard exits — sell immediately (market order) if:
- Current price is at or below the stop-loss target from the handoff — execute without hesitation
- Current price is at or above the take-profit target from the handoff — lock in the gain
- Stock gapped down significantly at open (more than 3% below yesterday's close) — the overnight thesis has likely failed
- Earnings or surprise news overnight caused an adverse move

Note: Robinhood does not support stop or limit trigger orders on fractional shares. There are no standing stop-loss orders in the market — this manual check at session open IS the stop-loss mechanism. Always check prices against handoff targets before doing anything else.

Discretionary exits — sell only if there is a real thesis break, not just red noise. "Broad market is down" or "not beating SPY today" is NOT by itself a reason to sell — that is normal noise and the defined stop-loss exists to handle real downside. A discretionary exit requires BOTH the price condition AND the thesis condition below:
- Price condition: the stock has round-tripped more than half of an opening gap-up, OR is down more than 1.5% from entry (moves smaller than 1.5% against entry are noise — hold and let the stop do its job)
- Thesis condition: the original catalyst has concretely failed or reversed (negative news, downgrade, guidance cut, sector-specific bad news) — not merely "the market is red" or "no relative strength" with nothing else behind it

If only the price condition is met but the thesis is still intact, hold — do not exit on price action alone.

Hold and monitor if:
- Stock gapped up and is continuing to trend higher with strong volume — let it run
- Stock opened flat but is now building momentum with increasing volume
- The catalyst is still developing and the move has not fully played out yet

For each position output your decision and reasoning.

---

STEP 3 — Calculate available buying power
After accounting for any planned sells from Step 2:
- Remaining investment value = current positions you are keeping, at market value
- Available to invest = (total account value x 0.75) minus remaining investment value
- Buyable today = the lesser of available to invest OR settled cash on hand
- Remember: cash from any sells placed right now will not be settled until tomorrow — only use cash that was already settled before this session
- If buyable amount is less than $10, skip Steps 4 and 5 and go to Step 6

Never use unsettled cash. Never let total invested positions exceed 75% of account value.

MARKET REGIME GATE — check before buying:
Get SPY's current change % from prior close via get_equity_quotes(["SPY"]): (last_trade_price - adjusted_previous_close) / adjusted_previous_close.
- If SPY is DOWN more than 2% on the day: this is a risk-off regime. SKIP all new buys (skip Steps 4 and 5, go to Step 6). Momentum longs have a much lower win rate when the broad market is selling off hard. Note "Market regime gate triggered — SPY down [X]%, no new buys."
- If SPY is DOWN 1% to 2%: caution regime. You may buy but reduce all position sizes by 50% and require a stronger-than-usual catalyst.
- If SPY is flat, up, or down less than 1%: normal regime, proceed as usual — a mild broad-market dip is not a reason to sit out individual stocks with real, confirmed momentum.
This gate does NOT affect sells — always honor stops and take-profits regardless of regime.

---

STEP 4 — Find morning momentum candidates
You are looking for stocks showing confirmed momentum 30 minutes into the session, not just an opening spike. Cast a wide net — aim for 50+ raw candidates before filtering. Run all sources in parallel:

Source A — Robinhood scanners (primary):
Call run_scan on BOTH saved scans and union the results:
1. scan_id "9934ccf8-02c4-4ed0-a32e-1a1b2bc44b63" — % change ≥ 3%, relative volume ≥ 1.2× 30-day average, market cap > $750M. Confirmed-momentum pool.
2. scan_id "38cc0924-7945-40c0-adb9-79048afa6d67" — % change ≥ 6%, market cap > $500M, no volume filter. Catches big obvious movers that a noisy or lagging relative-volume reading would otherwise exclude (a stock up 8% on real news is a candidate regardless of what its volume ratio says).
If both return zero, the bar genuinely isn't being cleared right now — do not lower it ad hoc to force candidates.

Source B — Robinhood built-in lists:
Call get_popular_lists and get_watchlist_items on every list that could contain movers: Daily Movers, 100 Most Popular, 52-Week Highs, Top Movers, sector lists. Add any tickers not already in Source A.

Source C — Web searches (run all in parallel):
- "top stock gainers this morning [current date]"
- "stock market news today [current date] biggest movers"
- "analyst upgrades today [current date]"
- "earnings beats this morning [current date]"
- "FDA approval [current date]"
- "merger acquisition announced today [current date]"
Extract every ticker mentioned and add any not already in Sources A/B.

Source D — Sector momentum:
Use get_equity_quotes on the sector ETFs (XLK, XLV, XLE, XLF, XLI, XLC) to find today's top 1-2 sectors by change %. Robinhood has no per-sector ticker screener, so use the leading sector as a tiebreaker/booster on candidates already found in Sources A-C rather than a standalone source of new tickers.

Combine into a master candidate list. For each candidate not already scored by Source A, fetch:
- Current price, change % — get_equity_quotes
- Actual relative volume vs 30-day average — get_equity_historicals (30 days, daily bars) for average volume, compare to today's volume from get_equity_quotes/get_equity_historicals — do not estimate
- VWAP — get_equity_technical_indicators(type="vwap", interval="5minute", start_time=<today's market open>)
- 5-minute OHLCV bars since market open — get_equity_historicals(interval="5minute", start_time=<today's market open>)
- Market cap — get_equity_fundamentals; bid/ask spread — get_equity_quotes

Then screen every candidate against all of the following:

Baseline filters (hard requirements — every candidate must pass all of these):
- Up at least 3% from yesterday's close (or came from the 6%+ big-mover scan)
- Market cap above $500 million (disqualify OTC, pink sheets, ADRs)
- Bid/ask spread below 1%
- Not already in your portfolio

Trend-quality scoring (not a hard gate — weigh these when ranking candidates, don't reject solely for missing one):
- Actual relative volume ≥ 1.2× is a positive signal; ≥ 1.5× is a strong signal. A candidate with a big move (≥6%) and weak relative volume is still eligible — the price move itself is the momentum signal when volume data is thin or lagging.
- Price above VWAP and above the 9:30-10:00 AM opening range high is a strong "still trending, not fading" signal — prefer these, but a candidate slightly below one of these with a strong catalyst and no signs of reversal is still worth including, just ranked lower.
- Price trend from 5-min bars shows higher highs or consolidation above open, not a hard fade to new lows.

Hard disqualifiers — reject immediately, no exceptions:
- Any pending binary event: FDA decision, foreign government merger/acquisition regulatory clearance (e.g. China SAMR, EU approval), clinical trial readout, court ruling. These can gap -15% or more with zero warning and no time to react before the next monitoring window.
- Speculative thesis combined with declining underlying fundamentals (e.g. revenue falling, widening losses, analyst price target well above current fundamentals). Story stocks need improving financials to sustain a move, not just a narrative.
- Stock has moved more than 15% in either direction over the past 5 trading days and today's move is not driven by a brand-new, clearly dated catalyst. High recent volatility means wide intraday swings the hourly midday monitor cannot protect against.

Morning-specific filters:
- Momentum is confirmed — stock moved up at open AND is still trending up or consolidating above the open price at 10:00 AM, not fading
- Has an identifiable catalyst (news, upgrade, earnings beat, FDA approval, M&A, sector event)
- Broad market is not in a sharp downtrend that would overwhelm individual stock momentum
- No earnings today after close that would create undue risk for a same-day hold

For every candidate that passes all filters, do a brief news headline search ("[TICKER] stock news today") to confirm the catalyst and check for any negative counterweight stories.

Score each qualifying candidate on: percentage gain + volume pace + catalyst strength + price stability since open. Rank and select up to 4 candidates. If no stock passes all filters, skip buying today and explain why.

---

STEP 5 — Size and place morning buys
Select up to 4 candidates from Step 4. Divide the buyable amount from Step 3 evenly across them (e.g., 4 picks = each gets one-quarter of buyable cash), but cap any single position at 25% of total account value. If fewer candidates qualify, split the buyable amount across those instead.

For each position, set stop-loss and take-profit as follows:
- Stop-loss: use the opening 30-minute low as a reference, but hard cap at 4% below entry price. If the 30-minute low is more than 4% below your intended entry, the stock is too volatile for the current monitoring cadence — skip it.
- Dollar risk cap: (entry price − stop price) × number of shares must be ≤ $3. If the calculated risk exceeds $3, reduce the position size until it fits within this limit rather than widening the stop.
- Take-profit: set at 2× the stop distance from entry (minimum 1:2 risk/reward ratio).

Place dollar-amount market orders for each — fractional shares are fine. Orders are GFD (good for day).

---

STEP 6 — Place all orders simultaneously
Place all sell orders from Step 2 and all buy orders from Step 5 at the same time. Do not wait for sells to confirm before placing buys — they are funded independently.

---

STEP 7 — Summary report
Output a clean summary including:
- Overnight positions exited: ticker, overnight change %, reason for exit, total gain/loss %
- Overnight positions kept: ticker, current gain/loss %, updated stop-loss and take-profit targets
- Morning positions bought: for each — ticker, shares, dollar amount, catalyst, stop-loss and take-profit targets
- Skipped actions and why
- Portfolio allocation after all orders: invested % vs cash %
- Settled cash available
- Broad market context: SPY and QQQ direction, and whether it is helping or hurting positions today

Then email this summary to yourself using the Gmail MCP tools. Send to aqmeyer123@gmail.com with subject "Robinhood 10 AM session — [DATE]". Body = the summary above, formatted cleanly in plain text. Lead with a one-line headline: total account value, day's P&L, and number of positions held. If the market regime gate or portfolio sync flagged anything notable, put it at the top.

---

STEP 8 — Write handoff to the 3:15 PM prompt
After completing the summary, overwrite the `## HANDOFF FROM LAST 10 AM SESSION` block in `robinhood_1515_trading/SKILL.md` (relative to the root of the cloned `claude-trading-tasks` repo) with the following information:
- Today's date and time
- Every open position you are holding: ticker, shares, average entry price, current stop-loss, current take-profit, and the thesis in one sentence
- Settled cash remaining
- Total account value
- Any notes the 3:15 PM agent should know (e.g. positions approaching targets, catalysts still developing, anything unusual)

Replace the entire block from the `## HANDOFF FROM LAST 10 AM SESSION` line through the closing `---` with fresh content. Do not modify anything else in that file.

After writing the file, commit and push it back to the repo:
```
git add robinhood_1515_trading/SKILL.md
git commit -m "10 AM handoff [DATE]"
git push
```

Note: after you write this block, the 12:00 PM midday reassessment agent will read it, potentially open or close positions, trail stops, and overwrite this same block with updated information. The 1 PM and 2 PM stop-loss monitors and the 3:15 PM agent will all read whichever version is most recent. Write your handoff cleanly so the 12 PM agent has accurate targets to work from.

---

STEP 9 — Append closed trades to trade log
For every position you SOLD in this session (from Step 2 exits), append one row per trade to `trade_log.csv` in the repo root:

Format: `date,ticker,shares,entry_price,exit_price,entry_session,exit_session,catalyst,sector,pnl_pct,pnl_dollar,exit_reason`

- `entry_session`: the session that opened the position (from handoff — "3:15PM", "10AM", or "12PM")
- `exit_session`: "10AM"
- `exit_reason`: "stop_loss", "take_profit", or "discretionary"
- `pnl_pct`: (exit_price - entry_price) / entry_price × 100, rounded to 2 decimal places
- `pnl_dollar`: (exit_price - entry_price) × shares, rounded to 2 decimal places
- `catalyst`: one word describing the original entry catalyst (earnings_beat / analyst_upgrade / fda / merger / sector_momentum / other)
- `sector`: one word (tech / energy / healthcare / financials / consumer / industrial / other)

Do NOT log positions that are still open — only completed (exited) trades.

Include the trade_log.csv in the git commit from Step 8.