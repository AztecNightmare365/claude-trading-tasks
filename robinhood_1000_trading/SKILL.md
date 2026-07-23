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

**Generated: 2026-07-22 ~9:15 AM ET**

---

### OVERNIGHT POSITIONS: 4 HELD

| Ticker | Shares | Entry | Stop | TP | Pre-Mkt Price | vs Jul 21 Close | Flag |
|--------|--------|-------|------|-----|--------------|----------------|------|
| AAPL | 0.288213 | $327.50 | $317.32 | $347.86 | ~$327.56 | -$0.18 (-0.05%) | **ON TRACK** |
| MMM | 0.474448 | $174.94 | $169.00 | $186.82 | ~$170.95 | +$0.19 (+0.11%) | **ON TRACK** ⚠️ narrow stop |
| GM | 1.321866 | $78.677 | $76.29 | $83.45 | ~$80.19 | +$0.67 (+0.84%) | **ON TRACK** — trail trigger $80.25 within $0.06 |
| WDC | 0.110219 | $544.37 | $517.15 | $598.81 | ~$522.92 | -$25.47 (-4.64%) | **⚠️ GAP DOWN WARNING** |

> **Cash**: ~$313.25 settled + ~$86.67 unsettled (NBIS proceeds, settle July 22 at open — usable at 10 AM)
> **Note**: Polygon API unavailable. Pre-market prices from Robinhood extended-hours quotes (`last_non_reg_trade_price`).

---

### POSITION DETAIL

**AAPL — ON TRACK**
Pre-market $327.56 (-0.05% vs Jul 21 close $327.74; bid $327.55/ask $327.75 — tight spread). Stop $317.32 is $10.24 (3.1%) below — solid buffer. TP $347.86 is 6.2% away. Trail trigger $337.86 not reached — stop unchanged at $317.32. **Thesis strengthened overnight**: Apple received China regulatory approval for Alibaba Qwen AI integration — the core bull thesis confirmed. Separately, reports of Apple exploring AI chip company acquisitions. Earnings July 30 (8 days) — no binary event this week. Market dragged by TSLA/GOOGL earnings positioning (QQQ -0.86% pre-market) but AAPL-specific catalyst is positive. **Hold — thesis strengthened, stop well-buffered.**

**MMM — ON TRACK (NARROW STOP BUFFER)**
Pre-market $170.95 (data as of 8:30 AM ET; +0.11% vs Jul 21 close $170.76; bid $170.00/ask $172.00 — very wide spread, thin pre-market). Stop $169.00 is $1.95 (1.14%) below. Thesis intact — Q2 earnings beat $2.40 EPS vs $2.27 est, raised FY EPS to $8.80–$8.95 (already known from yesterday). No new adverse MMM-specific news overnight. Broad market slightly lower (SPY -0.32%, Nasdaq futures -1.26%) — monitor for gap-down risk at open. **Hold — stop NOT breached, thesis intact. Do NOT widen stop. Sell immediately if MMM opens at or below $169.00.**

**GM — ON TRACK (TRAIL TRIGGER $80.25 IMMINENT)**
Pre-market $80.19 (+0.84% vs Jul 21 close $79.52; bid $77.66/ask $80.20 — wide spread). Stop $76.29 is $3.90 (4.88%) below — adequate. Trail trigger $80.25 only $0.06 away. Earnings already reported (Q2 EPS $3.57 vs $3.29 est, raised FY EBIT $14–16B). Broad market cautious pre-TSLA/GOOGL earnings — pre-market auto pricing muted. **10 AM AGENT: If GM trades at or above $80.25 at any point, immediately trail stop to breakeven $78.677. Watch GM early.**

**WDC — ⚠️ GAP DOWN WARNING (STOP $517.15 ONLY $5.77 AWAY)**
Pre-market $522.92 (-$25.47, -4.64% vs Jul 21 close $548.39; bid $522.00/ask $523.00). Stop $517.15 has only $5.77 (1.1%) buffer. Pre-market range reportedly included lows near $516.80 — potentially touching below stop transiently. **Driver: SK Hynix suffered >15% single-day collapse overnight** (worst in company history) after Q2 earnings estimates came in 8% below consensus, raising fears the memory supercycle is slowing. TSMC capex reset amplifying concerns across chip sector. WDC directly exposed as a memory/storage play. **Additional risks: WDC earnings July 29 (next Wednesday) is a binary event one week out. Kioxia merger discussions add uncertainty.** The 4.64% pre-market drop directly challenges the AI storage demand thesis (while HDD thesis may still hold, the sector-wide reassessment is damaging). **10 AM AGENT: CHECK WDC IMMEDIATELY. If WDC at or below $517.15 at open — sell (0.110219 shares, market order, stop triggered). If above stop but below $530, discretionary exit is strongly warranted given sector thesis risk and upcoming binary event. If recovered above $530, reassess thesis before holding.**

---

### MACRO CONTEXT (pre-market July 22, 2026)

| Index | Jul 21 Close | Pre-Mkt Price | Change% vs Jul 21 | Note |
|-------|-------------|--------------|-------------------|------|
| SPY | $748.28 | ~$745.90 | **-0.32%** | Futures lower |
| QQQ | $708.97 | ~$702.89 | **-0.86%** | Tech profit-taking |

**Regime gate status**: SPY -0.32% pre-market — below the -2% hard trigger. Normal regime technically, but market is negative. 10 AM agent: apply extra caution on new buys; no new buys in memory/chip sector.

---

### KEY OVERNIGHT/PRE-MARKET DEVELOPMENTS

**1. TSLA + GOOGL EARNINGS TONIGHT — TECH PROFIT-TAKING IN PROGRESS**
Tesla and Alphabet report Q2 2026 after close today. Nasdaq futures -1.26%, QQQ -0.86% pre-market as investors take profits ahead of earnings volatility. Primary macro headwind for today's session. No direct portfolio exposure but creates broad tech pressure on AAPL and WDC.

**2. SK HYNIX COLLAPSES >15% — MEMORY SECTOR ROUT (CRITICAL FOR WDC)**
SK Hynix suffered its largest single-day drop ever. KIS Securities estimates came in 8% below consensus, signaling the memory supercycle may be peaking. Global chip/memory stocks under pressure. WDC -4.64% pre-market is the direct portfolio casualty. MU, INTC also likely lower.

**3. AAPL CHINA AI APPROVAL — POSITIVE CATALYST CONFIRMED**
Apple received Chinese regulatory approval for Alibaba Qwen AI integration overnight — the core thesis for AAPL overnight hold confirmed. Thesis strengthened. Offsets broad tech weakness for AAPL specifically.

**4. OIL/MIDDLE EAST TENSIONS ESCALATING**
Oil prices at 6-week highs as Middle East tensions renewed (opposite of yesterday's ceasefire hopes). Adds macro risk premium to the session. Negative for growth equities broadly.

**5. NBIS PROCEEDS SETTLE TODAY**
~$86.67 from NBIS sale (July 21) settles at open July 22, boosting buying power to ~$400 total. Confirm with Robinhood before using.

---

### FLAGS

| Ticker | Shares @ Entry | Pre-Mkt Price | vs Jul 21 Close | Stop Distance | Flag |
|--------|---------------|--------------|----------------|---------------|------|
| AAPL | 0.288213 @ $327.50 | ~$327.56 | -0.05% | $10.24 (3.1%) above stop $317.32 | **ON TRACK** |
| MMM | 0.474448 @ $174.94 | ~$170.95 | +0.11% | $1.95 (1.14%) above stop $169.00 | **ON TRACK** ⚠️ narrow |
| GM | 1.321866 @ $78.677 | ~$80.19 | +0.84% | $3.90 (4.88%) above stop $76.29 | **ON TRACK** — trail $80.25 imminent |
| WDC | 0.110219 @ $544.37 | ~$522.92 | -4.64% | **$5.77 (1.1%) above stop $517.15** | **⚠️ GAP DOWN WARNING** |

---

### ONE-LINE SUMMARY
**3 positions ON TRACK, 1 GAP DOWN WARNING. WDC pre-market -4.64% ($522.92) on SK Hynix memory sector collapse — stop $517.15 only $5.77 (1.1%) away; 10 AM agent sell immediately if at/below stop, discretionary exit if below $530. AAPL thesis strengthened (China AI approval). MMM stop buffer $1.95 — do not widen. GM trail trigger $80.25 within $0.06. SPY -0.32%, QQQ -0.86% — regime gate not triggered but market cautious pre-TSLA/GOOGL earnings.**

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

Last updated: 2026-07-22 (~3:22 PM ET — 3:15 PM session complete)

Open positions held overnight (2 total):

- AAPL: 0.288213 shares, entry $327.50, stop-loss $317.32, take-profit $347.86, overnight flag: YES
  3:15 PM price: $324.49 | vs entry: -$3.01 (-0.92%)
  Thesis: Apple Intelligence / Alibaba Qwen China AI regulatory approval (confirmed overnight July 22) + HSBC Buy PT $366. No earnings until July 30 (8 days).
  GOOGL reported AH tonight — if GOOGL beat on AI/cloud, positive for AAPL AI sentiment. Evaluate for discretionary exit ONLY if BOTH: (a) AAPL below entry $327.50 at open AND (b) GOOGL miss concretely weakens Apple AI thesis.
  Trail trigger $337.86 not reached — stop unchanged at $317.32.
  - If AAPL >= $347.86: sell immediately (take-profit).
  - If AAPL <= $317.32: sell immediately (stop-loss).
  - If AAPL reaches $337.86 intraday: trail stop to $327.50 (breakeven) immediately.

- MMM: 0.474448 shares, entry $174.94, stop-loss $169.00, take-profit $186.82, overnight flag: YES
  3:15 PM price: $170.43 | vs entry: -$4.51 (-2.58%) | vs Jul 21 close: -$0.33 (-0.19%)
  Thesis: Q2 2026 earnings beat ($2.40 EPS vs $2.27 est, +5.7%), organic sales +5.4% YoY, FY EPS guidance raised to $8.80-$8.95. Industrial sector. Thesis fully intact — no negative news.
  Stop unchanged at $169.00. Do NOT widen.
  - If MMM >= $186.82: sell immediately (take-profit).
  - If MMM <= $169.00: sell immediately (stop-loss — ⚠️ CRITICAL: only $1.43 buffer, watch closely at open).

Sells executed at 3:15 PM (2 total):

- GM: 1.321866 shares sold at market, filled $81.4501 avg
  Entry: $78.677 (10 AM session July 21). Trailing stop trailed to $82.32 at 2 PM session.
  Price at 3:15 PM: $81.44 — BELOW trailed stop $82.32. Hard stop-loss exit executed.
  Realized P&L: +$3.67 (+3.53%). Proceeds: ~$107.67 UNSETTLED (settle July 23).

- WDC: 0.110219 shares sold at market, filled $557.80 avg
  Entry: $544.37 (3:15 PM session July 21). Trailing stop at $555.63.
  Discretionary exit: 2 PM agent strongly recommended closing today. WDC earnings July 29 (binary event — hard rule: must close before July 25). Only $1.42 buffer above stop at evaluation ($557.05 vs stop $555.63). Locked in +2.47% rather than carry binary earnings risk.
  Realized P&L: +$1.48 (+2.47%). Proceeds: ~$61.47 UNSETTLED (settle July 23).

No new buys: Both momentum scanners returned 0 for 4th consecutive time today. CRWV (+4.69%) and DOCN (+3.19%) were the only candidates clearing the 3% bar (both analyst upgrades). Analyst upgrade catalyst has historically underperformed in this account (-2.10% avg loss). GOOGL earnings AH tonight created direct AI/cloud sector uncertainty for both. Did not clear the raised bar for late-session overnight buys.

Settled cash remaining: $415.01 (GM and WDC proceeds unsettled — settle July 23)
Unsettled cash: ~$258.11 (SMCI $88.97 + GM $107.67 + WDC $61.47 — ALL settle July 23)
Total cash shown by Robinhood: ~$673.12
Total account value: ~$847.50
Portfolio invested: ~20.6% (2 positions, ~$174.38 equity)

---

NOTES FOR 10:00 AM AGENT (July 23, 2026):

1. ⚠️ CHECK GOOGL + TSLA EARNINGS RESULTS FIRST: Both reported AH tonight (July 22). This sets the context for AAPL.
   - GOOGL beat on AI/cloud → positive for AAPL AI thesis (Alibaba Qwen/Apple Intelligence). Hold AAPL.
   - GOOGL missed on AI/cloud → BOTH conditions for AAPL discretionary exit may now be met (AAPL was already below entry $327.50 at 3:15 PM close). Evaluate immediately at open.
   - TSLA: No current direct portfolio exposure (GM was stopped out). Broad market tone only.

2. ⚠️ MMM NEAR STOP — CRITICAL: 3:15 PM close $170.43, stop $169.00. Only $1.43 buffer (0.84%). Thesis intact (Q2 earnings beat + raised FY EPS guidance). If MMM gaps down below $169.00 at open, sell immediately (0.474448 shares, market order). Do NOT widen stop.

3. LARGE BUYING POWER UNLOCKS JULY 23: ~$258.11 in proceeds settle at open (SMCI $88.97 + GM $107.67 + WDC $61.47). Total buying power available: ~$673 settled. Strong dry powder — prioritize earnings-beat candidates at 10 AM.

4. AAPL CONTEXT: Closed at $324.49 (-0.92% vs entry $327.50, well above stop $317.32). Down on the day with broad tech weakness (QQQ -0.30%). Apple Intelligence/Alibaba Qwen thesis confirmed overnight. Exit rule: ONLY if BOTH AAPL below entry AND GOOGL miss concretely weakens Apple AI thesis. Price noise alone is not grounds for exit.

5. OIL AT $88 (WTI): 11th consecutive night of US airstrikes on Iran. Oil/inflation risk elevated. Energy is the leading sector. If oil names clear 3%+ bar, they are legitimate candidates for next 10 AM buy.

6. EARNINGS SEASON ACTIVE (July 23): 166 companies report. Look for morning earnings-beat movers — the best catalyst type in this account's history (-0.83% avg loss, per Learned Insights).

7. SECTOR CONTEXT: Tech underperformed today (QQQ -0.30%). Utilities and Energy led. GOOGL/TSLA results tonight will determine whether tech recovers tomorrow.

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

Catalyst Watch List — check this BEFORE running the scanners:
Read the catalyst watch list from the `## HANDOFF FROM LAST 3:15 PM SESSION` block. First check the `## PRE-MARKET BRIEF`'s "Catalyst Watch List Status" subsection (written by the 9:15 AM agent) — it already resolved each ticker's overnight catalyst and pre-market gap into CATALYST CONFIRMED — GAP UP / CONFIRMED — FLAT/DOWN / FAILED / PENDING / NO DATA. Use that as your starting point, then re-confirm at 10 AM (news can develop after 9:15, and you must verify the stock is still trending up now, not just pre-market). If the brief has no such subsection, resolve each ticker yourself. For each ticker on the list:
1. Confirm whether the catalyst resolved overnight and in which direction — start from the brief's status, then search "[TICKER] news [today's date]" to catch anything since 9:15. Treat a brief status of FAILED as disqualifying unless fresh news clearly reverses it; treat PENDING / NO DATA as "must resolve now before entry."
2. Get the current quote via get_equity_quotes.
3. If the catalyst confirmed positively AND the stock is up at open AND still trending up (not fading back toward yesterday's close) at 10:00 AM:
   - Add it to the master candidate list. It is eligible to enter at 1–2% above yesterday's close — the standard 3% bar does not apply to confirmed catalyst watch list entries.
   - Still apply all hard disqualifiers: market cap >$500M, bid/ask spread <1%, no new binary event, no earnings today AH.
   - Use the same stop-loss / take-profit framework as Step 5: 30-minute low as reference, hard cap 4% below entry, dollar risk cap ≤$3.
4. If the catalyst did NOT confirm (earnings miss, adverse outcome, no material news): skip this ticker. Do not enter on a failed catalyst regardless of price action.
5. If the handoff contains no catalyst watch list, or it is empty ("none"), proceed directly to Source A.

Source A — Robinhood scanners (primary):
Call run_scan on BOTH saved scans and union the results:
1. scan_id "9934ccf8-02c4-4ed0-a32e-1a1b2bc44b63" — % change ≥ 3%, relative volume ≥ 1.2× 30-day average, market cap > $750M. Confirmed-momentum pool.
2. scan_id "38cc0924-7945-40c0-adb9-79048afa6d67" — % change ≥ 6%, market cap > $500M, no volume filter. Catches big obvious movers that a noisy or lagging relative-volume reading would otherwise exclude (a stock up 8% on real news is a candidate regardless of what its volume ratio says).
If both return zero, the bar genuinely isn't being cleared right now — do not lower it ad hoc to force candidates.

Priority sector watchlist — always check directly, regardless of scanner results:
SNDK, MU, INTC, WDC, AMAT, QCOM (memory/semiconductor). This has historically been the account's strongest-performing sector — big moves on green tech days. Pull each via get_equity_quotes: if QQQ is up on the day and the ticker is up 2%+ from prior close, add it to the candidate list even if it doesn't independently clear the general 3% bar. When ranking in Step 4's scoring, give these a boost over an equal-quality non-watchlist candidate. They still must clear every hard disqualifier below — this sector reports earnings often, so always check the earnings date before buying.

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
- Catalyst status carry-forward: for every ticker that was on the catalyst watch list, note how it resolved — "ENTERED at [price]" if you bought it, "CONFIRMED but not entered ([one-line reason])" if the catalyst was positive but you passed (flat at open, ranked out), or "FAILED — do not chase" if the catalyst missed. The 12 PM / 1 PM / 2 PM sessions use this to give a confirmed-catalyst ticker a scoring boost if it shows up in their scanners later. If there was no watch list, write "Catalyst watch list: none."

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