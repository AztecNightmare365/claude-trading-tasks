---
name: robinhood-1000-trading
description: Trading bot
---

Morning Repositioning Agent — 10:00 AM (Market Open Strategy)

You are an autonomous momentum trading agent managing my Robinhood agentic cash account. This routine runs at 10:00 AM ET every trading day, 30 minutes after market open. Your job is to evaluate how overnight positions performed through the open, react to early morning momentum, and reposition the portfolio for the rest of the trading day. The first 30 minutes of trading (9:30 to 10:00 AM) is the most volatile period — by 10:00 AM you have enough data to make informed decisions without chasing the open spike.

Execute all steps in order, then place all orders simultaneously.

---

## OVERNIGHT BRIEF
<!-- Updated by this agent each morning. Read by the 9:15 AM and 9:30 AM agents. -->

**7:22 AM ET, 2026-08-04**

POSITIONS:
- HON: $246.27 pre-mkt (-0.20% vs close $246.77; +0.32% vs entry $245.48). Stop $233.01 (5.4% buf). TP $269.79 (9.5% away). ON TRACK — no adverse news; CAT's record BMO beat + BofA Neutral/$265PT support HON/XLI thesis.
- PLTR remainder (0.223341 sh, avg $122.59): $143.73 pre-mkt (+17.3% vs entry). TP $132.42 far exceeded. TP BREACH — SELL AT OPEN per 3:15PM handoff (fractional, wait for 9:30 print, no AH limit).

PRE-MARKET SELLS: None.

FYI: new manual buy AMD 0.392426 sh @ $509.65 (7:17 AM ET, extended hours, user-placed) — not an overnight hold, no stop set, flag for 10AM sync. AMD reports Q2 AFTER CLOSE tonight — same-day earnings risk, must exit before close.

CATALYST WATCH:
- CAT: BMO beat, rev $20.5B vs $19.31B est, record qtr. Pre-mkt +9.28% ($907 vs $830). CONFIRMED — GAP UP. 9:30 entry 1-2% above close if trending.
- SPOT: BMO beat (300M subs, margin record) but pre-mkt -4.41% ($465 vs $486) on guidance/margin concern. CONFIRMED — FLAT/DOWN. Do not chase.
- VRTX: AH beat 8/3 (rev +12%, guidance raised) but pre-mkt -1.52%. CONFIRMED — FLAT/DOWN.
- AMD: reports AFTER CLOSE today, not BMO. Pre-mkt +5.21% is AI-sector/PLTR halo, not earnings-driven. PENDING.

MACRO: SPY +0.24% pre-mkt, QQQ +0.90%. Futures positive continuing Monday's rally (S&P +1.48%); Iran de-escalation, lower oil. No Fed surprise — only scheduled Bowman/Cook speeches. Factory Orders at 10am (minor); no CPI/jobs today.

SUMMARY: 1 ON TRACK (HON), 1 TP-breach carryover (PLTR, sell at open); 0 pre-market sells; 1 catalyst CONFIRMED-GAP UP (CAT), 2 CONFIRMED-FLAT/DOWN (SPOT, VRTX), 1 PENDING (AMD, reports tonight). New unplanned AMD position needs 10AM stop-loss + same-day exit plan.

---

## OPEN REACTION UPDATE
<!-- Written by the 9:30 AM open reaction agent. Replaced (not appended) each run. -->

**9:30 AM ET, 2026-08-03** (no fresh OVERNIGHT BRIEF today — last one dated 7/31, treated as stale/informational only, not actioned. No PRE-MARKET BRIEF — 9:15 AM routine retired. Acted on raw 7/31 3:15PM handoff + live quotes.)

Sells: AMZN — TP hit. Open $278.29, filled avg $284.9062 vs entry $270.19 / TP $282.22. +5.45% / +$21.30. 1.447125 sh sold, full position closed.

Holds: HON $247.11 (open $245.47) vs stop $233.01 / TP $269.79 — ON TRACK, held. Trail trigger $250.18 not yet hit.

Catalyst entries: None — catalyst watch list confirmed empty for BMO Monday 8/3 (per 7/31 handoff notes). No buys this session (surgical stops/TP + catalyst-only mandate; no momentum scan run).

Market regime: SPY +0.56%, QQQ -0.05% — normal.

Portfolio sync: 2 positions adopted, not in 7/31 handoff (user manual buys):
- SONY: 6.452334 sh, avg entry $23.25, open $22.70, current $22.85. Protective stop set at 4% below open: $21.79. entry_type=manual.
- PLTR: 1.223341 sh, avg entry $122.62, open $126.75, current $124.98. Protective stop set at 4% below open: $121.68. entry_type=manual.

Status: 1 TP sell (AMZN), 0 catalyst entries, 3 positions open for 10 AM (HON, SONY, PLTR).

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-08-01. Based on 19 closed trades. -->

OVERALL: Win rate 36.8% (7/19), profit factor 0.85, net P&L -$2.93 (avg win +2.65%, avg loss -1.70%)

TOP RULES (read before every session):
1. 12PM entries remain a zero: 0/3 wins, -$6.17 net. No midday buy has ever won. Skip the session or require a truly exceptional setup — above VWAP, unquestionable catalyst, confirmed sustained momentum. (N=3)
2. earnings_beat catalyst is the biggest liability: 2/11 = 18.2% win rate, -$7.94 net. The market prices in beats before the open — buying into an earnings gap does NOT guarantee continuation. Require a confirmed gap-up still trending up at 10AM with volume, not just a positive EPS print. (N=11)
3. catalyst_watch early-entry path is failing: 0/4 wins, -$10.03 net vs scanner 7/15 = 46.7%, +$7.10. All 4 losses were earnings_beat catalyst. The 1-2% threshold buys before confirmation and loses when the gap fades. Do not use catalyst_watch for earnings_beat plays — only apply it to analyst_upgrade or high-confidence catalysts confirmed still trending up at 10AM. (N=4 catalyst_watch, N=15 scanner)
4. Tech sector is the account's edge: 4/7 = 57.1% win rate, +$1.95 net. Tech on non-earnings catalysts (analyst_upgrade, sector_momentum, "other") is where the wins concentrate. Lean into tech when the setup is clean. (N=7)
5. Financials sector is a trap: 0/3 wins, -$2.99 net. GS, BLK, MA — three consecutive losses. Require strong XLF momentum and broad market confirmation before buying any financial-sector play. (N=3)
6. analyst_upgrade catalyst leads all types: 2/3 = 66.7% win rate, +$1.76 net. Both wins came from tech entries (WDC, AAPL). Prioritize analyst upgrades in screening. (N=3)
7. Early-week (Mon-Tue) beats late-week (Thu-Fri): Mon-Tue 3/5 = 60% win rate, +$4.58 net; Thu-Fri 2/9 = 22.2%, -$6.72 net. Thursday is the worst day (7 trades, 28.6% win rate, -$4.84 net). Do not force Thursday or Friday setups. (Mon+Tue N=5; Thu+Fri N=9)
8. 10AM is the money session: 5/12 = 41.7% win rate, +$6.74 net. Protect this session's dry powder for the best setups. (N=12)
9. Stop triggered rate: 47.4% (9/19) — above the <40% target and worsening. Fix entry quality; do not widen stops to manage the metric. (N=19)
10. TP hit rate: 0% (0/19) — no trade has ever hit the 1:2 take-profit. Consider a nearer first target (1.5× stop distance) or partial scale-out at 1× to realize profits before the trailed stop exits. (N=19)

AVOID: The catalyst_watch + earnings_beat combination. BKR, SLB, KO, and MA — four catalyst_watch trades on earnings-beat setups, four losses, -$10.03 total. Buying at the 1-2% threshold on earnings beats means buying before crowd validation; the gap fades and the stop triggers. Do not use the early-entry path for earnings beats.

LEAN INTO: Tech non-earnings setups. NBIS (+3.65), WDC (+1.48), CRM (+0.86), AAPL (+1.90) — the account's strongest returns come from tech names on analyst_upgrade or sector_momentum catalysts with real open confirmation. When tech leads on a Mon-Tue morning and an analyst upgrade clears the scanner, that is the highest-conviction setup in the data.

RAW STATS:
- Best catalyst: analyst_upgrade (66.7% win rate, +$1.76 net, N=3); worst: earnings_beat (18.2%, -$7.94, N=11)
- Best sector: tech (57.1% win rate, +$1.95 net, N=7); worst: financials (0%, -$2.99, N=3)
- Best session to open: 10AM (41.7% win rate, +$6.74, N=12); worst: 12PM (0%, -$6.17, N=3)
- Stop triggered rate: 47.4% of trades (target: <40%) — above target, fix entry quality
- TP hit rate: 0% of trades (target: >30%) — zero; no TP has ever been hit
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-08-03 (~6:55 PM ET — 3:15 PM session completed late in AH; AH PLTR partial exit executed)

Open positions held overnight (1 full + 1 fractional remainder):

- HON: 0.243604 shares, avg entry $245.48, stop-loss $233.01, take-profit $269.79, overnight flag: YES
  Regular close: $246.79 (+1.54% on day) | AH: $245.70 | vs avg entry: +$0.22 (+0.09%)
  entry_type: scanner
  Thesis: Q2 2026 earnings beat (EPS $1.95 vs $1.82 est.); automation orders +16%; FY guidance raised. BofA PT $265, Citi PT $279. XLI industrial sector strong all day (ETN +5.57% on dual catalyst: Q2 beat + Evercore ISI upgrade). Trail trigger $250.18 NOT hit (closed $246.79). CAT reports BMO Aug 4 — if beats, validates XLI momentum. No binary events for HON.
  - If HON >= $269.79: sell immediately (take-profit, 0.243604 shares, market order)
  - If HON <= $233.01: sell immediately (stop-loss — no discretion)
  - If HON reaches $250.18 intraday: trail stop to $245.48 (breakeven) immediately

- PLTR (FRACTIONAL REMAINDER — 0.223341 shares): avg entry $122.62, overnight flag: *** SELL AT OPEN — PRIORITY #1 ***
  AH: ~$143.62 | vs avg entry: +$21.00 (+17.1%) | TP ($132.42) FAR EXCEEDED
  entry_type: manual (user opened — adopted at 10 AM session)

  *** CRITICAL: SELL REMAINING 0.223341 SHARES AT MARKET OPEN (9:30 AM) — fractional market order ***

  Context: PLTR reported massive Q2 2026 earnings beat AH August 3:
    - Revenue: $1.94B vs $1.80B estimate (+7.8% beat, +93% YoY growth)
    - EPS: $0.41 vs $0.33 estimate (+24.2% beat)
    - U.S. commercial revenue: +149% YoY
    - FY 2026 guidance raised to $8.15-8.16B (vs $7.69B estimate)
    - AH reaction: ~$143-144 (+14% from regular close $125.89, +17% vs entry $122.62)

  Action already taken in AH (this session): 1 share sold at $143.6499 (order 6a711c3c, filled 6:54 PM ET Aug 3). P&L on that share: +$21.03 / +17.14%. Proceeds ~$143.65 UNSETTLED (settle Aug 5).
  Remaining: 0.223341 fractional shares → must sell via regular-hours market order at 9:30 AM open (fractional orders only in regular hours).
  Expected open price: $138-148 range based on AH $143.62. Est. proceeds on remainder: ~$32 UNSETTLED (settle Aug 5).

  IMPORTANT: DO NOT apply the tiered sell strategy or delay — simply sell all 0.223341 shares at market open. The position is already substantially exited. Take the remaining gain cleanly.

  If PLTR opens flat or lower than AH (~$143): still sell at open — the TP was triggered and position must close.
  After sale, proceeds UNSETTLED (settle Aug 5). Do NOT use for Aug 4 purchases.

Portfolio sync (3:15 PM reconciliation):
  - HON: confirmed in live portfolio — 0.243604 shares, avg $245.48 ✓
  - PLTR: confirmed in live portfolio — was 1.223341 shares, avg $122.62 ✓ (now 0.223341 remaining after 1-share AH sell)
  - SONY: confirmed SOLD by 12 PM session (order 6a70be19, 6.452334 shares at $22.6526, 12:13 PM ET) ✓
  - AMZN: confirmed SOLD by 9:30 AM session (order 6a709920, 1.447125 shares at $284.9062) ✓
  - No new manual positions detected.

Sells executed this session (3:15 PM / AH):
  PLTR: 1 share sold at $143.6499 AH (order 6a711c3c, 6:54 PM ET, extended_hours limit order, GFD). P&L: +$21.03 / +17.14%. exit_reason: take_profit (TP $132.42 far exceeded).

Buys executed this session: None.
  Rationale: Both momentum scanners returned 0 (18th consecutive zero). Market closed before session ran. No viable overnight buys:
    - SNDK (+6.18% close, +8.24% AH): Earnings August 5 AH — hard exit rule, no overnight hold through earnings
    - GLW (+6.08%): Intraday low ~$130-133 estimated >9% below close $146.66 — overnight volatility hard disqualifier
    - ETN (+5.57%): earnings_beat primary catalyst (18.2% win rate), below scanner volume threshold
    - BLZE (+34.8% including AH): Moved >15% total — disqualified (>15% recent move rule)
    - AMRC (+24.8% AH), VRTX (AH beat): earnings_beat catalyst — worst type per Learned Insights, skip
    - ALNY (+7.18%): Analyst upgrade (66.7% win rate) but catalyst already resolved, market closed, fractional orders blocked in AH

Settled cash remaining: $94.53
Unsettled cash: $702.09 ($558.44 from AMZN+SONY settling Aug 4 + $143.65 from PLTR 1-share AH sale settling Aug 5)
PLTR remainder sale proceeds (at 10AM open Aug 4): ~$32 est. → UNSETTLED, settle August 5
Total account value (AH): ~$888.53 (HON ~$59.83 + PLTR remainder ~$32.11 + settled $94.53 + unsettled $702.09)
Portfolio invested: ~10.4% (HON + PLTR remainder — minimal, mostly cash)

---

NOTES FOR 10:00 AM AGENT (Tuesday August 4, 2026):

1. PLTR REMAINDER — SELL AT OPEN (PRIORITY #1): Sell 0.223341 shares at market open (9:30 AM), market order, regular hours. No strategy, no tiers — just close it. 1 share already sold in AH at $143.65. Proceeds ~$32, UNSETTLED (settle Aug 5). Do NOT use for same-day purchases.

2. MASSIVE BUYING POWER AVAILABLE TUESDAY: $94.53 settled now + $558.44 settling today Aug 4 (AMZN+SONY) = $652.97 available buying power. Highest dry powder in account history. Tuesday is historically the strongest session (Mon-Tue 60% win rate, +$4.58 net). Quality setups only — do NOT force buys. The $32 PLTR remainder proceeds settle Aug 5.

3. HON — HOLD AND MONITOR: Closed +1.54% on day, $246.79. AH: $245.70. Thesis intact (Q2 earnings beat, BofA PT $265, Citi PT $279). Trail trigger $250.18 not hit. If CAT beats BMO Tuesday, XLI momentum likely continues — positive for HON.

4. ETN CARRY-FORWARD: Eaton +5.57% today (Q2 earnings beat + Evercore ISI upgrade Outperform, PT $502). At 10AM: if still trending with volume confirmation, may qualify as scanner entry. Treat as earnings_beat primary (18.2% win rate) — only enter if 3%+ from prior close with volume above 1.2x average. Do NOT use catalyst_watch path.

5. GLW CARRY-FORWARD: Corning +6.08% today (Truist upgrade Hold→Buy, PT $175). AH: $148.85 (+7.67%). Disqualified overnight due to >9% intraday range. At 10AM: if above VWAP ($141-144), volume near/above 14.5M avg — eligible as fresh scanner entry (analyst_upgrade = 66.7% win rate). Note: PT cut from $205 to $175 (valuation-driven). Still a watchout for the 5-day volatility disqualifier — July 28 -20.2% gap day is the edge of the 5-day window.

6. ALNY: Alnylam Pharmaceuticals +7.18% today (Raymond James upgrade to Strong-Buy, PT $420). Analyst_upgrade = best catalyst type (66.7% win rate). Catalyst already resolved Monday. At 10AM: check if 3%+ from prior close with volume (standard scanner bar — do NOT use catalyst_watch 1-2% path since catalyst resolved same day, not overnight).

7. SNDK — INTRADAY ONLY: SanDisk +6.18% close, +8.24% AH. Strong sector momentum. If clears scanner at 10AM (3%+, volume 1.2x), may enter — but MUST EXIT by Aug 4 close. Earnings August 5 AH. No overnight hold.

8. WDC: DO NOT ENTER UNDER ANY CIRCUMSTANCES. Earnings August 5 AH.

9. VRTX AH EARNINGS: Vertex Q2 beat AH tonight (rev +12% YoY, $3.33B; guidance raised $13.1-13.2B). DO NOT use catalyst_watch 1-2% threshold — standard scanner bar only (3%+, volume). earnings_beat = 18.2% win rate per Learned Insights.

10. BROAD MARKET: SPY +1.42%, QQQ +1.75% today. Dow hit record. Oil -6% (Iran peace talks). Favorable environment for quality setups Tuesday. Watch AMD, CAT BMO results — will set tone for tech/industrial session.

Catalyst watch list (BMO August 4 / AH resolved August 3):
  AMD | earnings_beat | BMO Aug 4 | Bullish (AI chip demand, data center, 8+ consecutive beats) | HIGH — scanner-only (3%+ with volume at 10AM); DO NOT use 1-2% catalyst_watch threshold per Learned Insights rule #3
  CAT | earnings_beat | BMO Aug 4 | Bullish (XLI momentum, ETN just beat, industrial demand strong, AH +1.4% pre-positioning) | HIGH — scanner-only
  SPOT | earnings_beat | BMO Aug 4 | Bullish (premium subscribers, AI features) | MEDIUM — scanner-only
  VRTX | earnings_beat | AH resolved Aug 3 | Positive (rev +12% YoY, guidance raised $13.1-13.2B) | HIGH — scanner-only (not catalyst_watch path); apply standard 3% scanner bar

---

## AFTER-HOURS UPDATE

_Retired 2026-07-29: the 5 PM after-hours routine is disabled. This block is no longer written. Read overnight positions from the 3:15 PM handoff instead._

---

PRE-CHECK — Market day verification
Before doing anything else, check today's date. If today is Saturday or Sunday, output "Market closed — weekend. No action taken." and stop immediately. Do not proceed to Step 1.
Also check if today is a US federal market holiday (New Year's Day, MLK Day, Presidents Day, Good Friday, Memorial Day, Juneteenth, Independence Day, Labor Day, Thanksgiving, Christmas). If it is, output "Market closed — [holiday name]. No action taken." and stop.

---

STEP 1 — Account snapshot
Before pulling live data, read the following blocks from this file in order (they may already contain actions taken by earlier agents this morning):
1. `## OVERNIGHT BRIEF` (written by the 7 AM overnight watch agent) — check for any pre-market sells or severe flags. Note which positions, if any, it already sold.
2. `## OPEN REACTION UPDATE` (written by the 9:30 AM open reaction agent) — check for stop/TP sells at the open print and any catalyst watch list entries it already made. Positions marked "SOLD BY 9:30 AM AGENT" in the handoff must NOT be re-actioned.
3. `## PRE-MARKET BRIEF` (written by the 9:15 AM agent) — flags for STOP BREACH, TP BREACH, THESIS BROKEN, and the Catalyst Watch List Status subsection.

If these blocks don't exist yet (agents haven't run), proceed directly with the raw `## HANDOFF FROM LAST 3:15 PM SESSION` data.

Then retrieve current account state:
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
First check the `## OPEN REACTION UPDATE` block (written by the 9:30 AM agent) — it may have already entered one or more CATALYST CONFIRMED — GAP UP tickers at the open print. If a ticker was already entered by the 9:30 AM agent, do NOT re-enter it; just adopt it as an open position and manage its stop/TP going forward.

Read the catalyst watch list from the `## HANDOFF FROM LAST 3:15 PM SESSION` block. Then check the `## PRE-MARKET BRIEF`'s "Catalyst Watch List Status" subsection (written by the 9:15 AM agent) — it already resolved each ticker's overnight catalyst and pre-market gap into CATALYST CONFIRMED — GAP UP / CONFIRMED — FLAT/DOWN / FAILED / PENDING / NO DATA. Use that as your starting point, then re-confirm at 10 AM (news can develop after 9:15, and you must verify the stock is still trending up now, not just pre-market). If the brief has no such subsection, resolve each ticker yourself. For each ticker on the list:
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
- Position sizing — quality-tiered (4% intraday stop basis):
  - HIGH conviction ($250 max position): ALL five criteria met — (1) scanner-confirmed, (2) relative volume ≥ 1.5x, (3) price above VWAP, (4) trading in top 25% of intraday range, (5) analyst_upgrade or sector_momentum catalyst (earnings_beat alone does NOT qualify). Dollar risk limit: $10.00.
  - MEDIUM conviction ($150 max position): scanner-confirmed + most criteria present but one missing. Dollar risk limit: $6.00.
  - LOW conviction ($75 max position): not in scanner, OR earnings_beat as sole catalyst, OR relative volume < 1.2x. Dollar risk limit: $3.00.
  - Calculate shares as: min(tier_max_dollars, dollar_risk_limit ÷ (entry − stop)) ÷ entry. Use whichever constraint is tighter. If a pick doesn't fit any tier at minimum viable size, skip it.
  - Each candidate gets its full tier-capped amount. If cash is insufficient for all picks, cut lower-tier positions first.
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

**EMAIL DISABLED (2026-07-29, usage reduction).** Do NOT send any email for this routine. Output the summary to the session transcript only. Aaron still gets a push notification when the routine finishes, and the city dashboard reads the handoff, so the email was pure duplicated cost on every run. Conditional CRITICAL alerts in other routines are unaffected.

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