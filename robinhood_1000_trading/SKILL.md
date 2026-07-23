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

**Generated: 2026-07-23 ~9:15 AM ET**

---

### OVERNIGHT POSITIONS: 2 HELD

| Ticker | Shares | Entry | Stop | TP | Pre-Mkt Price | vs Jul 22 Close | Flag |
|--------|--------|-------|------|-----|--------------|----------------|------|
| AAPL | 0.288213 | $327.50 | $317.32 | $347.86 | $324.00 | -$1.89 (-0.58%) | **ON TRACK** |
| MMM | 0.474448 | $174.94 | $169.00 | $186.82 | $170.00 | -$0.76 (-0.45%) | **ON TRACK** ⚠️ CRITICAL — bid $169.10, $0.10 above stop |

> **Note**: AAPL price from Robinhood extended-hours (`last_non_reg_trade_price`) as of 9:15 AM ET. MMM last non-reg trade $170.00 as of 8:44 AM ET; current bid $169.10 (9:13 AM ET) — only $0.10 above stop $169.00.
> **Polygon API unavailable** — all pre-market prices sourced from Robinhood quotes.
> **Cash**: ~$673 total shown by Robinhood; ~$415.01 settled + ~$258.11 unsettled (GM $107.67 + WDC $61.47 + SMCI $88.97 proceeds, ALL settle at open July 23 → full ~$673 usable at 10 AM).

---

### POSITION DETAIL

**AAPL — ON TRACK**
Pre-market $324.00 (-0.58% vs Jul 22 close $325.89; bid $323.90/ask $323.98 — tight spread). Stop $317.32 is $6.68 (2.06%) below — adequate buffer. TP $347.86 is 7.4% away. Entry $327.50; currently $3.50 (-1.07%) below entry.

Overnight context: GOOGL Q2 reported AH July 22 — revenue +24% ($119.8B) and Google Cloud +82% ($24.8B), both beats. EPS $9.11 vs $2.88 est (massive beat). GOOGL stock is DOWN -3.63% pre-market not on AI/cloud miss but on capex overhang ($195–205B full-year 2026 projection). This is NOT a miss on AI/cloud execution — it is an investment cost concern. Per the handoff exit rule: GOOGL beat on AI/cloud → **positive for AAPL AI thesis** — the "GOOGL miss weakens Apple AI" condition is NOT met. AAPL discretionary exit is NOT triggered (condition b fails). Alibaba Qwen/China AI approval thesis remains intact. Earnings July 30 (7 days) — no binary event this week.

**Hold — AAPL stop well-buffered, thesis intact. Do NOT discretionary-exit on broad tech weakness alone. Stop unchanged at $317.32.**

**MMM — ON TRACK (⚠️ CRITICAL STOP PROXIMITY)**
Pre-market last trade $170.00 (-0.45% vs Jul 22 close $170.76; data as of 8:44 AM ET). Current bid $169.10 / ask $171.99 (as of 9:13 AM ET — very wide spread, thin pre-market). Stop $169.00 is $1.00 (0.59%) above last trade; bid is $169.10 — only **$0.10 above stop on the bid side**.

No new adverse MMM-specific news found for July 23. Thesis intact: Q2 earnings beat ($2.40 EPS vs $2.27 est, raised FY EPS $8.80–$8.95). Broad market weakness (SPY -1.03%) creates gap-down risk at open.

**⚠️ 10 AM AGENT: CHECK MMM FIRST AT OPEN. Stop is $169.00. With bid at $169.10 pre-market, MMM may open at or below stop. If MMM at or below $169.00 at open — sell immediately (0.474448 shares, market order, stop triggered). Do NOT widen stop. Do NOT wait to see if it recovers.**

---

### MACRO CONTEXT (pre-market July 23, 2026)

| Index | Jul 22 Close | Pre-Mkt Price | Change% | Note |
|-------|-------------|--------------|---------|------|
| SPY | $747.41 | $739.70 | **-1.03%** | TSLA/GOOGL earnings drag |
| QQQ | $705.35 | $694.75 | **-1.50%** | Tech under pressure |

**Regime gate status**: SPY -1.03% pre-market — in the CAUTION ZONE (1–2% down). NOT triggering the hard -2% gate. 10 AM agent: reduce new buy sizes by 50%, require stronger-than-usual catalyst for any new entries today.

---

### KEY OVERNIGHT DEVELOPMENTS

**1. GOOGL EARNINGS BEAT — STOCK DOWN ON CAPEX OVERHANG (AAPL READ-THROUGH: POSITIVE)**
Alphabet Q2: Revenue +24% ($119.8B, beat), Google Cloud +82% ($24.8B, massive beat), EPS $9.11 vs $2.88 est. However, company projected $195–205B CapEx for full year 2026 — investors selling on investment cost burden. GOOGL -3.63% pre-market. Key point: the AI/cloud business itself is accelerating, which validates the AI spending thesis and is positive for AAPL's Apple Intelligence/AI positioning. This is NOT a GOOGL AI miss — it's an overspend concern. AAPL discretionary exit condition NOT triggered.

**2. TSLA EARNINGS MISS — BROAD TECH PRESSURE**
Tesla Q2: EPS $0.33 vs $0.44 est (miss). Revenue beat (auto +23%), deliveries 480K record. Stock -5.52% pre-market. No direct portfolio exposure (GM stopped out July 22). Broad Nasdaq headwind — amplifying QQQ -1.50%.

**3. MMM STOP NEARLY AT BID — CRITICAL FOR OPEN**
MMM bid $169.10 as of 9:13 AM ET, stop $169.00. With SPY -1.03% and broad market negative, MMM faces gap-down risk at 9:30 AM open. No adverse MMM-specific news. 10 AM agent must check MMM immediately at open.

**4. LARGE BUYING POWER UNLOCKS TODAY**
~$258.11 in proceeds (GM $107.67 + WDC $61.47 + SMCI $88.97) settle at open July 23. Total available buying power ~$673. Strong dry powder for 10 AM session — prioritize earnings-beat candidates.

**5. EARNINGS SEASON ACTIVE (JULY 23)**
ServiceNow (NOW) +7.25% pre-market after Q2 beat — no direct portfolio exposure but signals SaaS/enterprise software is working. 166 companies reporting today. Active earnings-beat environment.

---

### FLAGS

| Ticker | Shares @ Entry | Pre-Mkt Price | vs Jul 22 Close | Stop Distance | Flag |
|--------|---------------|--------------|----------------|---------------|------|
| AAPL | 0.288213 @ $327.50 | $324.00 | -0.58% | $6.68 (2.06%) above stop $317.32 | **ON TRACK** |
| MMM | 0.474448 @ $174.94 | $170.00 (bid $169.10) | -0.45% | **$1.00 (0.59%) above stop $169.00; bid $0.10 above stop** | **ON TRACK** ⚠️ CRITICAL |

---

### ONE-LINE SUMMARY
**2 positions ON TRACK, 0 formally flagged; MMM pre-market bid $169.10 is $0.10 above stop $169.00 — check MMM first at open and sell immediately if at/below $169.00. AAPL -0.58% ($324.00) — GOOGL beat on AI/cloud means discretionary exit NOT triggered; hold. SPY -1.03%, QQQ -1.50% (TSLA miss + GOOGL capex overhang) — caution regime, 50% position sizing on new buys. ~$673 buying power available (unsettled proceeds settle at open).**

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

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-07-23 (~3:25 PM ET — 3:15 PM session complete)

Open positions held overnight (4 total):

- AAPL: 0.288213 shares, entry $327.50, stop-loss $317.32, take-profit $347.86, overnight flag: YES
  3:15 PM price: $320.815 | vs entry: -$6.69 (-2.04%)
  Thesis: Apple Intelligence / Alibaba Qwen China AI regulatory approval + HSBC Buy PT $366 + Morgan Stanley PT raise today. Tim Cook CEO transition (Sept 1, 2026 → John Ternus) assessed as smooth/planned — NOT a thesis break. Broad market weakness (SPY -1.41%, QQQ -2.19%) driving lower, not AAPL-specific news.
  Trail trigger $337.86 NOT reached — stop unchanged at $317.32.
  ⚠️ EARNINGS JULY 30: Must NOT hold through July 30 earnings. The July 29 3:15 PM agent MUST exit AAPL before close if not already stopped/TP'd.
  entry_type: scanner
  - If AAPL >= $347.86: sell immediately (take-profit)
  - If AAPL <= $317.32: sell immediately (stop-loss)
  - If AAPL reaches $337.86 intraday: trail stop to $327.50 (breakeven) immediately

- MMM: 0.474448 shares, entry $174.94, stop-loss $169.00, take-profit $186.82, overnight flag: YES
  3:15 PM price: $169.52 | vs entry: -$5.42 (-3.10%)
  ⚠️⚠️ CRITICAL: Only $0.52 (0.31%) above stop. MMM breached $169.00 intraday TWICE today (low $168.62) and recovered both times. Oil at $100/barrel (Brent) + Iran war escalation are macro headwinds overnight. Very high probability of stop trigger at tomorrow's open.
  Thesis: Q2 2026 earnings beat ($2.40 EPS vs $2.24 est.), FY EPS guidance raised $8.80-$8.95. No adverse MMM news. Broad-market pressure only — NOT a thesis break.
  DO NOT widen stop. Let the stop work at $169.00.
  entry_type: scanner
  - If MMM >= $186.82: sell immediately (take-profit)
  - If MMM <= $169.00: sell immediately (stop-loss — VERY HIGH PROBABILITY)

- ALLE: 0.520000 shares, entry $157.79 (live Robinhood avg cost), stop-loss $154.68, take-profit $164.85, overnight flag: YES
  Opened by 12 PM reassessment
  3:15 PM price: $155.51 | vs entry: -$2.28 (-1.44%) | vs Jul 22 close $139.95: +$15.56 (+11.11%)
  ⚠️ NEAR STOP: Only $0.83 (0.53%) above stop. Fading from 1:05 PM high of $159.27.
  Thesis: Q2 2026 earnings beat ($2.40 adj. EPS vs $2.22 est., +8.1%); organic revenue +6.9%; FY guidance raised. Allegion (commercial security products) — not directly tied to oil/Iran. Thesis intact.
  Trail trigger $160.95 (2% above entry) NOT reached — stop unchanged at $154.68.
  entry_type: scanner
  - If ALLE >= $164.85: sell immediately (take-profit)
  - If ALLE <= $154.68: sell immediately (stop-loss)
  - If ALLE reaches $160.95 intraday: trail stop to $157.79 (breakeven) immediately

- HON: 0.243810 shares, entry ~$245.27 (market GFD placed ~3:24 PM ET, order ID: 6a626a78-94e1-4c7d-aa2a-f771d0d04bde), stop-loss $233.01, take-profit $269.79, overnight flag: YES
  NEW POSITION — entered 3:15 PM session July 23, 2026
  3:15 PM price: ~$245.27 | vs entry: ~flat (just entered)
  Thesis: Q2 2026 earnings beat (EPS $1.95 vs $1.80 est., +8.3%); revenue $9.72B (massive beat); FY 2026 EPS guidance raised $8.05-$8.35 (+25-29% YoY growth); Q3 guidance $2.05-$2.20. Industrial sector (XLI +1.50% today, outperforming SPY -1.41% by 2.9%). No binary events tonight. Volume 1.35× 30-day average.
  Dollar risk cap applied: $2.99 risk per trade (0.243810 shares × $12.26/share). Caution regime buy (50% size reduction).
  Trail trigger $250.18 (2% above entry) → if reached, trail stop to $245.27 (breakeven)
  entry_type: scanner
  - If HON >= $269.79: sell immediately (take-profit)
  - If HON <= $233.01: sell immediately (stop-loss)

Sells executed this session: NONE

Settled cash remaining: ~$531.28 ($591.08 minus $59.80 HON buy)
Total account value: ~$844.83
Portfolio invested: ~37.1% (4 positions, ~$313.55 equity at 3:15 PM prices)

---

NOTES FOR 10:00 AM AGENT (July 24, 2026):

1. ⚠️⚠️ CHECK MMM FIRST — CRITICAL STOP:
   MMM at $169.52 vs stop $169.00. Only $0.52 buffer (0.31%). Breached stop TWICE intraday today (low $168.62). Oil at $100/barrel (Brent) from Iran war escalation creates overnight gap-down risk.
   If MMM at or below $169.00 at open: sell immediately (0.474448 shares, market order). Do NOT widen stop.

2. ⚠️ ALLE NEAR STOP:
   ALLE at $155.51 vs stop $154.68 — only $0.83 buffer. Fading since 1:05 PM high. Thesis (earnings beat, guidance raised) intact. Let stop work. If ALLE at or below $154.68: sell immediately (0.520000 shares, market).

3. ⚠️ AAPL NEAR STOP + EARNINGS TIMELINE:
   AAPL at $320.815 vs stop $317.32 — $3.495 buffer. Down -2.04% from entry. Thesis intact (AI/China approval). EARNINGS JULY 30: if AAPL has not recovered above entry $327.50 by the July 29 3:15 PM session, that agent MUST exit before close — do NOT hold through a binary event while underwater.

4. HON — NEW OVERNIGHT POSITION:
   HON entered at ~$245.27 (0.243810 shares, $59.80). Industrial sector outperformed SPY by 2.9% today. Thesis: Q2 earnings beat + guidance raised (+25-29% EPS growth). No binary events tonight or tomorrow morning. Stop $233.01, TP $269.79.

5. MARKET CONTEXT:
   SPY -1.41%, QQQ -2.19% at close. Oil surged to $100/barrel (Brent) on Iran war escalation — inflation fears. Tesla -14%, Alphabet -6% post-earnings. Industrial (XLI +1.50%) outperforming. Risk-off environment — apply caution to new Friday buys (historically 2/6 win rate for Wed-Fri entries per Learned Insights).

6. AH EARNINGS TONIGHT (July 23) — CATALYST WATCH:
   INTC: Reporting AH tonight. Down -2.67% today on caution. If INTC beats, could gap up at 10 AM. Check 5-day move before entry (INTC up 327% YTD — verify it doesn't violate the >20% 5-day disqualifier; today's -2.67% is NOT earnings-related). Use 1-2% open confirmation threshold (catalyst watch entry).
   RTX + LMT: Both reporting AH tonight. Defense sector (Iran war tailwind). Check results at 10 AM.
   TMUS: Reporting AH tonight, EPS est. $2.61.

7. TOMORROW BMO (July 24):
   AXP (American Express) reports BMO tomorrow — financial sector, consumer spending theme. Evaluate at 10 AM open if beat confirmed.

8. SCANNERS: 0 results for 9th consecutive session. Market regime hostile for momentum entries. Only HON from web research qualified tonight.

Catalyst watch list:
INTC | Q2 2026 earnings (AH tonight July 23) | AH tonight → evaluate 10 AM July 24 | Positive (server demand, foundry progress; stock down -2.67% today on caution) | HIGH (binary ~12% expected swing; check 5-day move; 327% YTD run — confirm disqualifier clear before entry)
AXP | Q2 2026 earnings (BMO July 24) | BMO tomorrow → evaluate 10 AM July 24 | Neutral-positive (consumer resilient vs. inflation) | MEDIUM
RTX | Q2 2026 earnings (AH tonight July 23) | AH tonight → evaluate 10 AM July 24 | Positive (defense, Iran war demand) | MEDIUM
LMT | Q2 2026 earnings (AH tonight July 23) | AH tonight → evaluate 10 AM July 24 | Positive (defense contracts, Iran war) | MEDIUM

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
- If a position in the handoff is NOT in the actual portfolio: the user sold it manually. Note "USER CLOSED [TICKER] manually" and do not act on it. If you can determine the exit price from recent history, append it to trade_log.csv with exit_reason "user_manual" and entry_type "manual".
- If a position exists in the actual portfolio but is NOT in the handoff: the user bought it manually. Adopt it — get its current quote, estimate an entry (use user's average cost from portfolio), and manage it going forward. Note "ADOPTED user position [TICKER]" and tag it entry_type=manual.
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
   - Tag any position entered this way as entry_type=catalyst_watch in the handoff (and, when it later closes, in the trade log) so the weekly review can measure how the early-entry path performs vs standard scanner entries. Standard Step 5 buys are entry_type=scanner.
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
- Every open position you are holding: ticker, shares, average entry price, current stop-loss, current take-profit, the thesis in one sentence, and its entry_type tag (catalyst_watch / scanner / manual — carry it forward unchanged for positions you inherited; set it when you open a position)
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

Format: `date,ticker,shares,entry_price,exit_price,entry_session,entry_type,exit_session,catalyst,sector,pnl_pct,pnl_dollar,exit_reason`

- `entry_session`: the session that opened the position (from handoff — "3:15PM", "10AM", or "12PM")
- `entry_type`: how the position was originally sourced (from handoff) — "catalyst_watch" (entered via the catalyst watch list early-entry path), "scanner" (standard momentum/scanner entry), or "manual" (opened by the user, detected via portfolio sync). Default to "scanner" if the handoff doesn't specify.
- `exit_session`: "10AM"
- `exit_reason`: "stop_loss", "take_profit", or "discretionary"
- `pnl_pct`: (exit_price - entry_price) / entry_price × 100, rounded to 2 decimal places
- `pnl_dollar`: (exit_price - entry_price) × shares, rounded to 2 decimal places
- `catalyst`: one word describing the original entry catalyst (earnings_beat / analyst_upgrade / fda / merger / sector_momentum / other)
- `sector`: one word (tech / energy / healthcare / financials / consumer / industrial / other)

Do NOT log positions that are still open — only completed (exited) trades.

Include the trade_log.csv in the git commit from Step 8.