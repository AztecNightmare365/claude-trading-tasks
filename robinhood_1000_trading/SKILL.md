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

**7:00 AM ET 2026-08-31.** Live sync ••••6616: 1 position — CRM only. Exact match 3:15 PM Aug 28 handoff.

- **CRM** $254.18 pre-mkt (−0.71% vs $256.00 close; +2.74% vs entry $247.41). Bid $254.07 / Ask $254.49; spread 0.165%. **⚠ CRITICAL STOP BREACH** — stop $255.50, breached by $1.32 (0.52%). No adverse overnight news; thesis intact (Claudeforce/Agentforce beat+raise confirmed). Only overnight item: Phillip Securities raised PT $166→$243, maintains Neutral (PT below current price — minor). NOT pre-mkt selling: breach is 0.52% noise-level on a +24% week; thesis intact; position profitable; waiting for open print is better per Insight #1. **9:30 AM AGENT: SELL IMMEDIATELY (market, 0.543874 sh) if CRM ≤ $255.50 at open. No discretion.**

Pre-market sells: **NONE.**

**Catalyst watch:**
- ESTC: $99.43 pre-mkt (−0.48% vs $99.91 close); well below $103 threshold. **CATALYST CONFIRMED — FLAT/DOWN.** No $103+ open expected; pass at 10 AM unless surges.
- SNDK: $1,488 (+0.20% vs $1,484.98 close); spread 0.13%. **CATALYST PENDING** — conditional on QQQ up. QQQ −0.17% pre-mkt; condition not met. Verify at open.
- MU: $928.84 (−0.43% vs $932.86 close); spread 0.11%. **CATALYST PENDING** — same QQQ-up condition. Not met. Verify at open.

**Macro:**
- US 10Y yield +1.03% to 4.72% — Sep rate hike odds ~57% post-Warsh; SaaS headwind.
- S&P futures −0.17%; DAX −0.78%; Oil +3.45% ($86.28) — mild risk-off tone.
- Week ahead: BLS August jobs report Friday (critical for Sep hike); PANW/DELL/AVGO/SNOW earnings.

SUMMARY: 1 CRITICAL STOP BREACH (CRM — thesis intact, not pre-mkt sold; 9:30 AM enforce at open); 0 pre-market sells; 0 catalysts confirmed/gap-up; 1 FLAT/DOWN (ESTC), 2 PENDING (SNDK/MU).

---

## OPEN REACTION UPDATE
<!-- Written by the 9:30 AM open reaction agent. Replaced (not appended) each run. -->

**9:30 AM ET 2026-08-31.** No PRE-MARKET BRIEF (retired); used 7 AM overnight brief + live open prices.

Sells: NONE.
- CRM: open $255.88 (stop $255.50, TP $277.10). ABOVE stop — no action. ON TRACK — hold.
  Note: first-bar low $255.08 briefly dipped below stop; last_trade_price $255.88 used as open print per SKILL.md Step 2. 3-day weekend gap fully absorbed; thesis intact.

Catalyst entries: NONE.
- ESTC: CONFIRMED — FLAT/DOWN at open ($99.23, −0.68% vs $99.91 close). No entry. Pass to 10 AM.
- SNDK: PENDING — QQQ-up condition NOT met (QQQ −0.06% at open). SNDK +1.41%, first bar positive ($1,488.28→$1,504.79). Pass to 10 AM; re-evaluate if QQQ recovers.
- MU: PENDING — same QQQ-up condition NOT met. MU +1.18%, first bar positive ($931.32→$942.71). Pass to 10 AM.

Portfolio sync: CRM only — exact handoff match (0.543874 sh, entry $247.41). No manual adoptions.

SPY $767.27 (−0.27%), QQQ $715.97 (−0.06%) — NORMAL REGIME.

CRM: open $255.88 (+3.42% vs entry $247.41; −0.05% vs prior close $256.00). Stop $255.50. TP $277.10. ON TRACK — hold.

Status: 0 stop/TP sells, 0 catalyst entries, 1 position open for 10 AM (CRM).

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-08-29. Based on 44 closed trades. -->

OVERALL: Win rate 43.2% (19/44), profit factor 1.16, net P&L +$14.05 (avg win +5.10%, avg loss -2.48%)

TOP RULES (read before every session):
1. Thursday is now the worst trading day: 3/13 = 23.1% WR, -$27.34 net. Aug 27 collapse (MRK -$6.02, ANF -$10.48, VEEV -$5.65 — all stopped out Friday open) confirms the pattern. Raise bar sharply on Thursdays: require confirmed guidance raise + rel vol ≥2× before any new Thursday entry. If conviction bar cannot be cleared, pass entirely. (N=13)
2. Consumer sector is a money trap: 2/5 = 40% WR, -$17.76 net. DG (-$10.08) and ANF (-$10.48) gapped down through stops on "earnings beat" entries. Consumer retail beats frequently carry hidden guidance shortfalls that emerge overnight. Skip consumer retail unless ≥10% EPS beat AND confirmed guidance raise. (N=5)
3. Scanner entries are now net negative: 11/27 = 40.7%, -$8.82 net. Last three scanner entries (ANF, VEEV, DG) all significant losses. Raise scanner bar: require ≥2 of 3 signals — above VWAP, rel vol ≥1.5×, catalyst = analyst_upgrade or earnings_beat WITH confirmed guidance raise. (N=27)
4. Manual entries are the account's only profit engine: 8/13 = 61.5% WR, +$32.90 net vs scanner -$8.82. All durable gains come from high-conviction manual entries. Do not reflexively dismiss manual theses when catalyst is confirmed. (N=13)
5. 3:15PM overnight entries are net negative: 4/8 = 50% WR, -$8.42 net. KO, MRK, ANF all gapped down at next-session open. Before any overnight hold from 3:15PM: (a) no consumer or healthcare sector; (b) confirmed guidance raise on catalyst; (c) gap risk <3% worst case. Losses outweigh wins despite a coin-flip WR — size overnight holds conservatively. (N=8)
6. Monday is the best day to trade: 6/8 = 75% WR, +$56.06 net. Monday entries produce the most profit. Apply standard bar on Mondays — do NOT raise the bar on the account's most productive day. (N=8)
7. Stop rate at all-time worst (52.3%): All 5 new trades since last review hit stops. When 3+ consecutive sessions result in stop-outs, skip the next session and reset rather than forcing new entries. A stop-loss streak signals low-quality market conditions. (N=44)
8. catalyst_watch still 0/4, -$10.03 net: Never use catalyst_watch on earnings_beat catalysts. This path has produced zero wins in 4 attempts. Require VWAP hold + rel vol ≥1.5× before any catalyst_watch entry. (N=4)
9. 12PM is the worst session by net: 2/6 = 33.3% WR, -$15.21 net. Only trade at 12PM if catalyst is fresh and materially stronger than the 10AM bar. Never re-enter a ticker already traded that day — AMD re-entry at 12PM was -$14.73. (N=6)
10. Tech sector is the only reliably profitable sector: 13/24 = 54.2%, +$39.21 net. All non-tech sectors combined: -$25.16 on 20 trades. Concentrate exposure in tech; non-tech requires explicit exceptional justification. Financials (0/3), energy (0/2) are permanent avoids. (N=24 tech, 20 non-tech)

AVOID: Consumer retail overnight holds from 3:15PM — DG (-$10.08) and ANF (-$10.48) both gapped down sharply at next-morning open after Thursday 3:15PM entries on "earnings beat" catalysts. The last 5 new trades produced a net loss of -$28.55 with a 100% stop rate. This is the account's newest recurring failure mode.

LEAN INTO: Manual tech entries on confirmed earnings beats with raised guidance — AMZN (+$21.30), PLTR×3 (+$37.07 combined) anchor the account's profit. All share the same pattern: confirmed beat + explicit guidance raise, tech sector, high-conviction manual entry. No other trade category comes close in net dollar contribution.

RAW STATS:
- Best catalyst: analyst_upgrade (66.7% WR, N=3); earnings_beat net +$20.96 but only reliable with confirmed guidance raise
- Best sector: tech (54.2% WR, +$39.21, N=24); worst: financials (0%, N=3), energy (0%, N=2)
- Best session to open: Monday (75% WR, N=8); best by dollar net: 10AM (+$47.34, N=29)
- Stop triggered rate: 52.3% of trades (23/44) — WORST EVER, FAR above <40% TARGET
- TP hit rate: 11.4% of trades (5/44) — far below >30% TARGET
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-08-28 (~3:15 PM ET — 3:15 PM session complete)

Open positions held overnight (1 total):

- CRM: 0.543874 shares, entry $247.41, stop-loss $255.50 (TRAILED — above morning floor $255.30; protects +3.27% from entry), take-profit $277.10 (12% from entry per Insight #6 extended TP)
  Current at 3:15 PM: $259.75 (+4.99% from entry; +3.06% from yesterday's close $252.05)
  Intraday range Fri Aug 28: $249.00 low (open) → $263.53 high (11:15 AM). Current at 74% of range (top 26%). PM dip to $257.86 at 2:50 PM then recovering to $259.75 at close.
  Thesis: Salesforce Q2 FY2027 confirmed beat + raised guidance. Agentforce + Claudeforce AI $3.4B+ ARR. Jackson Hole absorbed (Warsh inflation-focused — non-disruptive). Stock +22%+ this week; analyst target $265 (Benzinga). Thesis intact through weekend.
  entry_type: scanner | sector: tech | catalyst: earnings_beat (raised guidance confirmed)
  overnight flag: YES — no binary events this weekend; stop $255.50 provides protection

  10 AM Monday (Aug 31) checks:
  a) If CRM ≤ $255.50 → sell market (0.543874 shares) immediately.
  b) If CRM ≥ $277.10 → take profit (market sell, 0.543874 shares).
  c) If CRM between $255.51–$277.09 → evaluate Monday open momentum. Hold if thesis intact and no adverse weekend news.

Sells at 3:15 PM: NONE
- CRM: $259.75 >> stop $255.50, below TP $277.10. HOLD.

New buys at 3:15 PM: NONE
Reasons:
- PD (PagerDuty): +9.74% on day, rel vol 1.50x, tech, bid/ask 0.14% — beat + guidance raise + Canaccord upgrade ($10→$15 today). DISQUALIFIED: intraday low $13.01 vs entry ~$13.86 = 6.1% gap, exceeds 5% overnight volatility hard cap. Do not re-enter today.
- ESTC: $100.34 at close — below $103 handoff recovery threshold. PASS (thesis intact, add to watch list).
- GAP: $23.675 — below $24.50 threshold from 12 PM handoff. PASS.
- NABL: Revenue guidance CUT ($554-559M → $539-542M). Hard disqualifier.
- FLUT: CEO departure, EBITDA −45%, multiple PT cuts. Hard disqualifier.
- ACM: Q3 EPS miss (−$0.50 vs $1.46 est). Hard disqualifier.
- BRAI: Bid/ask 1.04% (exceeds 1% limit). Hard disqualifier.
- SOLS: One-time event (merger termination). SKIP per prior handoff.
- DKNG: Mixed NFL catalyst (FanDuel rivalry rekindled). SKIP.
- Semis (SNDK/MU/INTC/WDC/AMAT/QCOM): All negative today (−0.33% to −4.63%). NVDA beat Aug 26 AH already priced in; sell-the-news dynamic. SKIP.
- WDAY: Failed catalyst — do not chase (per prior handoff).
- Friday 20% WR (Insight #4) — raised bar applied throughout. No candidate cleared it.

Settled cash remaining: $634.93 (broker-confirmed settled buying power)
DG unsettled: $124.49 (T+1 from Aug 28 sale — settles Mon Aug 31, next trading day; Labor Day is Sep 7)
Total cash: $759.42
Total account value: ~$900.75 (CRM ~$141.32 + cash $759.42)
Portfolio invested: 15.7% (CRM only; well below 75% cap)

75% cap check for 10 AM Mon Aug 31: $900.75 × 0.75 = $675.56. CRM ~$141 invested. Available under cap = ~$534. Settled cash Mon = $634.93 + $124.49 (DG settles) = ~$759. Buyable = min($534, $759) = $534.

NOTES FOR 10 AM AGENT (Mon Aug 31, 2026):

1. CRM — PRIORITY HOLD/EXIT CHECK (3-day weekend hold):
   Stop $255.50 (trailed). TP $277.10. Entry $247.41. At 3:15 PM Fri: $259.75 (+4.99%).
   a) If CRM ≤ $255.50 → sell market (0.543874 shares) immediately.
   b) If CRM ≥ $277.10 → take profit.
   c) If between $255.51–$277.09 → check Monday momentum. Thesis intact: Agentforce AI, confirmed beat + raise, analyst target $265+. Hold if no adverse weekend news.
   Weekend risk: no CRM binary events; Jackson Hole resolved; broad market stable at Fri close.

2. ESTC — ELEVATED WATCH FOR MONDAY:
   Closed Fri at $100.34 (+19.79% on day). Confirmed earnings beat +20.7% EPS + guidance raise + analyst upgrades to $108–120. Did not sustain above $103 intraday Fri (faded from open high to $99.05 at noon, recovered to $100.34).
   Enter Monday ONLY if: (a) opens/holds above $103 with upward trend at 10 AM, AND (b) rel vol ≥1.2x, AND (c) above VWAP. If below $103 at 10 AM → PASS. Catalyst: confirmed. Entry_type if entered: scanner | sector: tech.

3. CASH MONDAY (Aug 31):
   Settled at open: $634.93 + $124.49 (DG T+1) = ~$759.42 total cash.
   75% cap: ~$534 available under cap (CRM consuming ~$141 of the $675 cap).
   DO NOT RE-ENTER: DG (stopped Aug 28), VEEV (stopped Aug 27), MRK (stopped Aug 27), ANF (stopped Aug 27), TGT (stopped Aug 26), FOXA (stopped Aug 18). Also WDAY (failed catalyst — do not chase even if continuing).
   ⚠ MONDAY is historically the best day (68.75% WR, Insight #4). Open with fresh eyes; apply normal conviction bar.

4. NVDA / SEMI SECTOR:
   NVDA beat AH Aug 26 (EPS $2.22 vs $2.09 est; rev guidance $106–110B; AWS/Vera partnership). Despite strong report, NVDA −4.63% Fri (sell-the-news). All semis negative Fri.
   Monday setup: semis could bounce if sell-the-news exhausted. Monitor SNDK, MU, AMAT — add only if up ≥2% at 10 AM AND QQQ up on day. Do not chase Friday's direction.

5. BROAD MARKET AT 3:15 PM Fri (reference):
   SPY $769.16 (−0.25%). QQQ $716.05 (−0.70%). Market mixed, not risk-off.
   Best sectors Fri: XLC +1.23% (comm services), XLY +0.81% (consumer disc). Tech mixed (ESTC +19.8%, NVDA −4.6%).
   Jackson Hole: Warsh stressed inflation commitment — markets read as non-disruptive. Stable macro heading into weekend.

Catalyst watch list:
ESTC | Earnings beat +20.7% EPS + raised guidance + analyst upgrades $108-120 | Confirmed AH Aug 27 (in play Fri Aug 28) | Bullish — requires $103+ open with uptrend at 10 AM Mon | LOW
SNDK | NVDA sympathy / semi sector reversal (sell-the-news exhaustion) | Conditional on Mon market open | Neutral-Bullish (require +2% at 10 AM AND QQQ up) | MEDIUM
MU | NVDA sympathy (same as SNDK) | Conditional | Neutral-Bullish | MEDIUM
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
  - HIGH conviction ($400 max position): ALL five criteria met — (1) scanner-confirmed OR a high-conviction manual entry on a confirmed earnings beat + raised guidance, (2) relative volume ≥ 1.5x (waived for manual beat+raise entries where volume data is thin/lagging), (3) price above VWAP, (4) trading in top 25% of intraday range, (5) catalyst is analyst_upgrade, sector_momentum, or earnings_beat WITH raised guidance (a beat alone, without a raise, still does NOT qualify). Dollar risk limit: $16.00.
  - MEDIUM conviction ($250 max position): scanner-confirmed OR manual entry + most criteria present but one missing. Dollar risk limit: $10.00.
  - LOW conviction ($150 max position): not in scanner and no manual conviction basis, OR earnings_beat without a guidance raise as sole catalyst, OR relative volume < 1.2x. Dollar risk limit: $6.00.
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