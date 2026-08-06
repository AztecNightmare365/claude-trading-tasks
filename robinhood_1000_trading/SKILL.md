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

**7:00 AM ET, 2026-08-06**

POSITIONS:
- HON 0.2436sh: $248.00 (-0.05%). Stop $248.00 = AT STOP. CRITICAL BREACH. No adverse news (PT raises: Mizuho $265, BMO $276). SELL AT OPEN.
- INTC 0.7525sh: $99.52 (-1.52%). Stop $99.67 = BELOW STOP. CRITICAL BREACH. Sector weakness, no stock-specific news. SELL AT OPEN.
- MU 0.0836sh: $846.46 (-5.23%). Stop $903. CRITICAL BREACH, well below. Cause: SNDK soft guidance + Asia memory selloff. SELL AT OPEN.
- CRL 0.2895sh: ~$264.19 (+1.33%, stale/thin data). ON TRACK - raised FY guide, 52wk high.
- SHOP 0.5133sh: $143.90 (-0.24%). ON TRACK - MS OW $192PT, Jefferies Buy $160PT init.

PRE-MKT SELLS: NONE. Robinhood rejects extended-hours orders on fractional shares - HON/INTC/MU all fractional, no order could be placed despite 3 breaches. Hard platform limit, not discretionary. 9:30 AM agent MUST sell all 3 at open immediately, no discretion.

CATALYST WATCH:
- WDC -16.0% premkt (beat EPS/rev+guide, sold off anyway) - FAILED, skip.
- SNDK -9.9% premkt (beat, soft guidance) - FAILED, skip. WDC+SNDK = MU contagion source.
- DDOG -17.2% premkt (BMO, figures not yet indexed) - FAILED, skip.
- CEG +4.4% premkt (EPS beat $2.55 vs $2.34, rev slight miss, FY guide raised) - CONFIRMED GAP UP, flag 9:30 entry.
- HWM +3.8% premkt (reports ~7AM, figures pending, price bullish) - CONFIRMED GAP UP, re-verify 9:30.

MACRO: SPY +0.14%, QQQ -0.53% (memory/semis dragging tech). Dow futures +0.2% (record highs), S&P +0.1%, Nasdaq -0.1%. Fed's Cook: "running out of room for disinflation." Rates held 3.50-3.75%, Sept hike hinted. Jobs report 8/7, CPI 8/12.

SUMMARY: 2 ON TRACK (CRL/SHOP), 3 CRITICAL STOP BREACH (HON/INTC/MU) - sell blocked by fractional-share rule, urgent sell-at-open; 2 catalyst CONFIRMED gap-up (CEG/HWM), 3 FAILED (DDOG/WDC/SNDK).

---

## OPEN REACTION UPDATE
<!-- Written by the 9:30 AM open reaction agent. Replaced (not appended) each run. -->

**9:30 AM ET session, 2026-08-05 — fired late, ran ~1:43 PM ET (17:44 UTC), ~4h15m after actual open.**

NO ACTION TAKEN. By the time this session executed, the 10 AM and 12 PM sessions had already run in full (handoff in `robinhood_1515_trading/SKILL.md` timestamped ~12:15 PM ET): QCOM sold at stop-loss (-1.24%/-$0.93) and AMAT sold at stop-loss (-1.37%/-$1.03), HON's stop trailed $246.63→$248.00, MU's stop trailed $858.50→$903.00, and the catalyst watch list already evaluated (AMD FAILED; WDC/SNDK still PENDING — earnings AH tonight 8/5, unresolved). Applying this session's 9:30-open stop logic now, against stale 7 AM stop levels, would mislabel a 1:43 PM price as "the open" and risk double-selling or contradicting the 12 PM session's already-current stops. Stood down instead.

Sanity check only (no orders): HON $248.49 vs live stop $248.00 — OK. INTC $101.69 vs stop $96.74 — OK. MU $919.77 vs live stop $903.00 — OK. No breach.

Catalyst watch: no change from 12 PM note — AMD FAILED, WDC/SNDK PENDING (AH tonight), nothing new to resolve at this hour.

Status: 0 sells, 0 catalyst entries (session superseded by 10 AM/12 PM), 3 positions open for 10 AM/12 PM handoff (HON, INTC, MU) — already current there.

**Flag for Aaron: this routine is being triggered ~4 hours late. If the schedule isn't fixed, treat future 9:30 AM firings the same way — check whether 10 AM/12 PM already ran before acting.**

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- Updated by weekly review agent (out-of-cycle refresh). Last updated: 2026-08-04. Based on 23 closed trades. -->

OVERALL: Win rate 43.5% (10/23), profit factor 2.59, net P&L +$37.02 (avg win +4.31%, avg loss -1.77%)

TOP RULES (read before every session):
1. earnings_beat catalyst has flipped positive: two outsized Aug 3 wins (AMZN +$21.30, PLTR +$21.03, both manual entries on confirmed beats with raised guidance) pushed it from -$7.94 to +$35.86 net, though win rate is still sub-50% at 5/14 = 35.7%. Do not blanket-avoid earnings_beat, but still require strong confirmation (EPS beat magnitude + guidance raise) — 9 of 14 trades still lost. (N=14)
2. catalyst_watch + earnings_beat is still the account's clearest loser: 0/4 wins, -$10.03 net (BKR, SLB, KO, MA). Continue excluding earnings_beat from the catalyst_watch early-entry path. (N=4)
3. Tech is the strongest sector by a wide margin: 7/11 = 63.6% win rate, +$41.90 net — both Aug 3 blowout wins (AMZN, PLTR) were tech. Lean into tech setups. (N=11)
4. 12PM entries remain weak: 1/4 = 25% win rate, -$4.70 net. Require an exceptional setup or skip the session. (N=4)
5. Financials sector is a trap: 0/3 wins, -$2.99 net (GS, BLK, MA). Require strong XLF confirmation before entering. (N=3)
6. analyst_upgrade catalyst leads all types by win rate: 2/3 = 66.7%, +$1.76 net. Small sample but consistent. (N=3)
7. Early-week (Mon-Tue) beats late-week (Thu-Fri), and the gap widened: Mon-Tue 5/8 = 62.5% win rate, +$43.06 net; Thu-Fri 3/10 = 30% win rate, -$5.25 net. Do not force Thursday/Friday setups. (Mon+Tue N=8; Thu+Fri N=10)
8. 10AM remains the money session: 7/15 = 46.7% win rate, +$45.22 net — essentially the entire account's profit. Protect this session's dry powder for the best setups. (N=15)
9. Stop-triggered rate improved to 39.1% (9/23), now under the <40% target for the first time. Keep entry discipline — do not credit this to luck from two large TP hits offsetting it. (N=23)
10. TP hit rate rose to 8.7% (2/23) from 0% — both hits (AMZN, PLTR) were manual tech entries on confirmed earnings beats with raised guidance, held into the print rather than exited pre-earnings. Still well below the >30% target. (N=23)

AVOID: catalyst_watch + earnings_beat combination — still 0/4, -$10.03 net. Buying the 1-2% threshold on earnings beats before crowd validation continues to fail regardless of the standard earnings_beat path's recent turnaround.

LEAN INTO: Tech names on confirmed earnings beats with raised guidance, held through the print rather than exited pre-earnings — AMZN (+$21.30) and PLTR (+$21.03) are now the two largest wins in account history and both came from this exact setup (manual entry, not catalyst_watch or scanner). This does not mean holding every earnings position blind — both had strong pre-existing theses and confirmed beats, not just an earnings date on the calendar.

RAW STATS:
- Best catalyst by $ net: earnings_beat (+$35.86, N=14, win rate 35.7%); best by win rate: analyst_upgrade (66.7%, N=3)
- Worst catalyst: catalyst_watch-sourced earnings_beat (0%, -$10.03, N=4)
- Best sector: tech (63.6% win rate, +$41.90 net, N=11); worst: financials (0%, -$2.99, N=3)
- Best session to open: 10AM (46.7% win rate, +$45.22, N=15); worst: 12PM (25%, -$4.70, N=4)
- Stop triggered rate: 39.1% of trades (9/23) — now under the <40% target
- TP hit rate: 8.7% of trades (2/23) — up from 0%, still below the >30% target
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-08-06 (~3:21 PM ET — 3:15 PM session complete)

Open positions held overnight (4 total):

- INTC: 0.752483 shares, avg entry $99.67, stop-loss $99.67 (BREAKEVEN), take-profit $105.47, overnight flag: YES
  3:15 PM price: $100.40 | vs avg entry: +$0.73 (+0.73%) | day change: -0.65%
  entry_type: scanner
  Thesis: Semiconductor sector momentum with breakeven stop — risk-free overnight roll.
  Trail note: if INTC hits $103.50 intraday, trail stop to $101.50.
  - If INTC <= $99.67: sell immediately (stop-loss — no discretion)
  - If INTC >= $105.47: sell immediately (take-profit, 0.752483 shares, market order)

- CRL: 0.289530 shares, avg entry $259.04, stop-loss $252.07, take-profit $272.98, overnight flag: YES
  3:15 PM price: $259.42 | vs avg entry: +$0.38 (+0.15%) | day change: -0.50%
  entry_type: scanner
  Thesis: Q2 2026 beat (EPS $2.42 vs $2.10 est.), raised FY guidance, preclinical research demand recovery. No binary event.
  - If CRL <= $252.07: sell immediately (stop-loss — no discretion)
  - If CRL >= $272.98: sell immediately (take-profit, 0.289530 shares, market order)

- SHOP: 0.513281 shares, avg entry $146.12, stop-loss $142.52, take-profit $153.32, overnight flag: YES
  3:15 PM price: $145.81 | vs avg entry: -$0.31 (-0.21%) | day change: +1.09%
  entry_type: scanner
  Thesis: Q2 2026 beat (revenue +29% YoY, GMV +23%, operating income $404M vs $347M est.), raised FY guidance. No binary event.
  - If SHOP <= $142.52: sell immediately (stop-loss — no discretion)
  - If SHOP >= $153.32: sell immediately (take-profit, 0.513281 shares, market order)

- TTMI: 1.000000 shares, avg entry $143.07, stop-loss $138.95, take-profit $151.31, overnight flag: YES
  3:15 PM price: $141.48 | vs avg entry: -$1.59 (-1.11%) | day change: +7.81%
  entry_type: manual (user opened before 12 PM session)
  Thesis: TTM Technologies Q2 beat (revenue +37% YoY, EPS $0.99 vs $0.92), FY26 guidance raised to ~$5.00 EPS vs $4.04 consensus; AI/data center PCB demand surging. No binary event.
  Trail note: if TTMI hits $148.00 intraday, trail stop to $143.07 (breakeven).
  - If TTMI <= $138.95: sell immediately (stop-loss — no discretion)
  - If TTMI >= $151.31: sell immediately (take-profit, 1.000000 shares, market order)

Portfolio sync (3:15 PM reconciliation):
  - INTC: confirmed ✓ (0.752483 sh, avg $99.67)
  - CRL: confirmed ✓ (0.289530 sh, avg $259.04)
  - SHOP: confirmed ✓ (0.513281 sh, avg $146.12)
  - TTMI: confirmed ✓ (1.000000 sh, avg $143.07 — manual entry, user-purchased intraday Aug 6)
  - PAYC: SOLD at stop-loss this session ($211.9901, -0.76%, -$0.57) — stop $213.62 breached

Sells executed at 3:15 PM (1 total):
  PAYC: 0.351085 shares sold at $211.9901 (market order)
  Reason: Hard stop-loss breach — breakeven trail stop $213.62, price fell to $211.99 (-0.76% vs entry $213.6233). Opened by 10 AM session (scanner, LOW conviction, earnings_beat catalyst). Stop trailed to breakeven by 12 PM — trade became risk-free, then declined through it.
  Proceeds: ~$74.42 UNSETTLED (settles Aug 7)

Buys executed at 3:15 PM: NONE
  Reason: Both scanners returned 0 results (8th consecutive drought). Thursday historically weak (30% win rate). No web-sourced candidates cleared the exceptional-setup bar without scanner confirmation. Unity (U) was the strongest candidate (+16.66% on Q2 beat) but not scanner-confirmed and 12 PM agent had already declined it on the same grounds.

Market conditions at close (Aug 6, 2026 — Thursday):
  SPY -0.07% | QQQ -0.25% — normal regime, mildly negative. No regime gate triggered.
  Energy sector leading: XLE +1.44%, XOP +1.13%
  Scanners: 0 results (8th consecutive session drought).
  INTC -0.65% | CRL -0.50% | SHOP +1.09% | TTMI +7.81% (still up big from earnings gap)

Settled cash remaining: $308.67
Unsettled (settles Aug 7): ~$209.44 (HON ~$59.63 + MU ~$75.31 from 10AM + PAYC ~$74.42 from 3:15PM)
Total account value: ~$885.53
Portfolio invested: ~$367 (~41.4%) — well within 75% cap ✓

NOTES FOR 10:00 AM AGENT (Friday Aug 7, 2026):

1. TTMI WATCH: Still down -1.11% from entry ($141.48 vs $143.07). Stop $138.95 is 1.73% below close. Trail trigger ($148.00) NOT reached today. PCB/AI data center thesis intact. If TTMI gaps below $138.95 premarket or at open, sell at open immediately. If it recovers toward $148+, trail stop to breakeven ($143.07).

2. INTC BREAKEVEN STOP: Risk-free hold (stop $99.67 = entry). Currently $100.40 (+0.73%). Semiconductor sector mixed. If INTC gaps below $99.67, sell at open. Trail trigger: $103.50 → stop $101.50.

3. CRL: Slightly above entry (+0.15%), no adverse news. Healthcare/bioservices thesis intact (Q2 beat + guidance raise). Stop $252.07 is 2.7% below close.

4. SHOP: Slightly below entry (-0.21%) but outperforming (+1.09% on day). Thesis intact (massive Q2 beat). Stop $142.52 is 2.6% below close.

5. PAYC CLOSED: Exited at stop-loss (-0.76%, -$0.57). Breakeven trail worked — limited loss to essentially zero. Tech earnings_beat thesis did work initially (stock up 25%+ at peak), then reversed through the breakeven stop. Win rate on this path still relevant.

6. SCANNER DROUGHT: 8th consecutive session. Friday historically weak (same 30% win rate as Thursday per Learned Insights). If scanner is still empty at 10 AM, set very high bar — "exceptional setup" only. Do NOT force positions on a Friday scanner drought.

7. AH CATALYSTS TONIGHT (Aug 6): NET (Cloudflare) and ABNB (Airbnb) report after close tonight.
   *** CRITICAL: catalyst_watch + earnings_beat = LEARNED INSIGHTS AVOID (0/4, -$10.03). Do NOT enter NET or ABNB via the 1-2% catalyst_watch threshold. Only enter if they appear in scanner at ≥3% with relVol ≥1.2x (standard path). ***
   - NET (-2.99% today, ~$284): beat expected (~$665M rev, $0.27 EPS est.). At ATH, needs substantial beat to move.
   - ABNB (-1.40% today, ~$150): $3.58B rev est. (+15.6%), travel demand. Enter only via scanner.

8. BMO TOMORROW (Aug 7): TTWO, PPL, VST, PAA report before market open.
   - VST (Vistra Corp, energy/power): AI data center electricity demand tailwind. Watch for guidance on power capacity. If beat + raised guide + scanner confirmed, evaluate per standard path.
   - TTWO (Take-Two Interactive, gaming): GTA 6 cycle. Uncertain direction.
   - PPL, PAA: utilities/midstream — low momentum potential.

9. UNITY (U) NOTE: Up +16.66% today on Q2 BMO beat (EPS $0.28 vs $0.25, revenue +24% YoY, guidance raised). NOT entered (Thursday, no scanner confirmation). If U appears in scanner at open (≥3%, relVol ≥1.2x), standard path applies. If it fades to scanner range and is closing strong Friday, evaluate — but still requires scanner confirmation.

10. BUYING POWER OPENING FRIDAY: Full $209.44 in unsettled proceeds (HON + MU + PAYC) settles tomorrow Aug 7 → adds to morning buying power alongside current $308.67 settled for estimated ~$518+ total at open. However Friday is historically weak — protect dry powder for genuinely exceptional setups.

Catalyst watch list (for 10 AM agent, Friday Aug 7, 2026):
  NET  | earnings_beat | AH tonight (Aug 6) | Positive bias (beat expected) | MEDIUM — *** AVOID catalyst_watch path. Scanner only. ***
  ABNB | earnings_beat | AH tonight (Aug 6) | Positive bias | MEDIUM — *** AVOID catalyst_watch path. Scanner only. ***
  VST  | earnings | BMO Aug 7 | Positive-leaning (data center power demand, AI tailwind) | MEDIUM
  TTWO | earnings | BMO Aug 7 | Uncertain (gaming cycle) | MEDIUM

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