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

**7 AM brief for 2026-08-07 — fired catastrophically late, actually ran ~10:40 PM ET (15.7h late), AFTER market close.** By the time this session executed, the entire day's chain (9:30AM/10AM/12PM/3:15PM) had already run, closed, and pushed — INTC and TTMI were sold at their stops by the 10AM session (logged in trade_log.csv), SHOP's stop trailed twice (→breakeven→$147.61), and both remaining positions (CRL, SHOP) were carried into the 3-day weekend by the 3:15PM agent. There was no pre-market window left to protect and nothing left for this session to act on — market open/close for 8/7 is already fully resolved in `## HANDOFF FROM LAST 3:15 PM SESSION` above. No orders placed, no trade log changes (would duplicate 10AM's entries), no handoff edits (3:15PM's block is current and correct).

*** FLAG FOR AARON: 2nd late-firing incident on record (9:30AM agent ran 4h15m late on 8/5), and by far the worst — the 7AM safety net didn't run in its protective window at all today. A catastrophic overnight gap would have gone uncaught. Schedule needs fixing; until then, any late 7AM firing should check whether the day's sessions already ran (git log / handoff dates) before touching positions, and stand down if so. ***

Sanity check only (positions per 3:15PM close, unchanged since): CRL $263.37 (+1.67% vs entry, stop $252.07) — OK, no breach. SHOP $150.62 (+3.08%, stop $147.61) — OK, no breach, 1.79% from TP $153.32.

SUMMARY: 0 positions actioned (day already closed out by the full session chain before this agent ran), 0 pre-market sells (no pre-market window remained), 2 positions carried into the weekend (CRL/SHOP, both healthy per 3:15PM handoff). Scheduling failure flagged for Aaron.

---

## OPEN REACTION UPDATE
<!-- Written by the 9:30 AM open reaction agent. Replaced (not appended) each run. -->

**9:30 AM ET session, 2026-08-10.** Sells: NONE. CRL $267.14 (+3.13% vs entry $259.04, stop $252.07, TP $272.98) — OK, no breach, no gap-down. SHOP $152.49 (+4.36% vs entry $146.12, stop $147.61, TP $153.32) — OK, no breach, only $0.83 (0.5%) from TP, watch closely. SPY -0.03%, QQQ -0.22% — normal regime.

Catalyst entries: NONE. TTWO $256.34 (+3.99% vs Fri close $246.50) — Q1 FY27 beat reported BMO 8/7 (rev $1.53B vs $1.36B est, guidance reaffirmed), fully priced in over the weekend, no fresh news since. Handoff note #6 explicitly bars the catalyst_watch path for TTWO (Learned Insight: catalyst_watch+earnings_beat = 0/4) — passed to 10 AM for standard scanner confirmation, not entered here. BRK.B $536.31 (+2.78% vs Fri close $521.80) — Q2 beat mostly currency-driven (~5% underlying op. earnings growth), insurance underwriting -13%; no volume data available at 9:30 to confirm the handoff's "unusual volume" bar. Not a momentum play per handoff — not entered, passed to 10 AM.

Positions adopted via portfolio sync: PLTR (2.0 sh, avg $171.98, current $175.51, +2.05%) — live in the account but not in the handoff, so the user bought it manually. Adopted, entry_type=manual, protected with a 4% stop at $168.49, take-profit at $189.55 (2x the stop distance above adopt price, matching the standard 1:2 risk/reward used elsewhere in this account).

Status: 0 stop/TP sells, 0 catalyst entries, 3 positions open for 10 AM (CRL, SHOP, PLTR).

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-08-08. Based on 33 closed trades. -->

OVERALL: Win rate 39.4% (13/33), profit factor 1.60, net P&L +$27.53 (avg win +5.76%, avg loss -2.01%)

TOP RULES (read before every session):
1. catalyst_watch + earnings_beat is 0/4, -$10.03 net (BKR, SLB, KO, MA) — never use the catalyst_watch early-entry path on earnings_beat catalysts. The 1-2% threshold before crowd confirmation continues to fail on this specific combination. (N=4)
2. 12PM entries are the account's worst: 1/5 = 20% win rate, -$19.43 net ($14.73 of that from a single AMD re-entry). Require scanner confirmation + exceptional setup, or skip the session entirely. (N=5)
3. Manual entries outperform scanner entries: 5/8 = 62.5% win rate, +$32.80 net vs scanner 8/21 = 38.1%, +$4.76 net — high-conviction manual entries on confirmed catalysts are the account's profit engine. Do not reflexively dismiss manual theses. (N=8 manual, N=21 scanner)
4. Tech sector leads all others: 10/20 = 50% win rate, +$32.52 net. Continue leaning into tech over all other sectors. (N=20)
5. Monday-Tuesday are the productive days: 7/11 = 63.6% win rate, +$41.28 net. Wed-Fri: 6/22 = 27.3%, -$13.75 net. Raise the bar on Wednesday through Friday — do not force entries. (Mon-Tue N=11; Wed-Fri N=22)
6. Stop-triggered rate jumped to 48.5% (16/33), well above the <40% target. Aug 5-7 triggered 5 stops in 7 trades. If the scanner drought continues, pass rather than forcing low-conviction entries that hit stops immediately. (N=33)
7. earnings_beat catalyst: 6/19 = 31.6%, +$22.98 net — but AMZN and PLTR alone account for +$50.23 of those gains. Strip those 3 trades out and earnings_beat is 3/16 = 18.75%, deeply net-negative. Treat earnings_beat with skepticism unless the magnitude of beat + guidance raise is genuinely exceptional. (N=19)
8. 10AM session is best by dollar: 9/23 = 39.1% win rate, +$42.56 net — but win rate declined from 46.7% at the 23-trade mark. Protect dry powder for only the highest-conviction setups. (N=23)
9. analyst_upgrade catalyst: 2/3 = 66.7% win rate, +$1.76 net — consistently the best catalyst type by win rate. Prioritize in screening. (N=3, small sample but holds)
10. sector_momentum alone is not a reliable signal: 2/6 = 33.3% win rate, +$0.11 net — recent losses in QCOM, AMAT, INTC, NTSK. Require a specific dated catalyst in addition to sector momentum before entering. (N=6)

AVOID: Re-entering a ticker that has already been traded in the same session — AMD at 12PM (-$14.73, -9.82%) is the account's largest single-trade loss, caused by opening a second AMD position hours after the 10AM entry had already closed profitably (+$5.05). Never open a new position in a ticker already closed or exited that same trading day.

LEAN INTO: Manual tech entries on confirmed earnings beats with raised guidance, held through the print rather than exited pre-earnings — AMZN (+$21.30), PLTR Aug 3 (+$21.03), and PLTR Aug 4 (+$7.90) are the 3 largest wins and together produce essentially all profit above breakeven (+$50.23 combined). These require genuine pre-existing conviction plus a confirmed beat + raise — not just an earnings date on the calendar.

RAW STATS:
- Best catalyst: analyst_upgrade (66.7% win rate, N=3); by net dollar: earnings_beat (+$22.98, N=19, dominated by 3 outlier wins)
- Best sector: tech (50% win rate, +$32.52 net, N=20); worst: energy (0%, -$4.07, N=2) and financials (0%, -$2.99, N=3)
- Best session to open: 3:15PM (3/5 = 60% win rate, N=5, small sample); best by dollar net: 10AM (+$42.56, N=23)
- Stop triggered rate: 48.5% of trades (16/33) — ABOVE <40% TARGET, needs immediate attention
- TP hit rate: 9.1% of trades (3/33) — still well below the >30% target
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-08-07 (~3:20 PM ET — 3:15 PM session complete)

Open positions held overnight (2 total):

- CRL: 0.289530 shares, avg entry $259.04, stop-loss $252.07, take-profit $272.98, overnight flag: YES
  3:15 PM price: $263.37 | vs avg entry: +$4.33 (+1.67%) | day change: -0.81%
  entry_type: scanner
  Thesis: Charles River Laboratories Q2 2026 beat (EPS $3.02 vs est., $1B revenue, raised FY guidance, Aug 5). Healthcare/bioservices. No binary events Monday.
  Stop NOT trailed — position up only +1.67%, below the 2% trailing threshold. Stop remains at $252.07.
  - If CRL >= $272.98: sell immediately (take-profit, 0.289530 shares, market order)
  - If CRL <= $252.07: sell immediately (stop-loss — no discretion)

- SHOP: 0.513281 shares, avg entry $146.12, stop-loss $147.61 (TRAILED from $146.12 — protects ~$0.79/share above breakeven), take-profit $153.32, overnight flag: YES
  3:15 PM price: $150.62 | vs avg entry: +$4.50 (+3.08%) | day change: +2.16%
  entry_type: scanner
  Thesis: Shopify Q2 2026 beat (revenue $3.58B +33.7% YoY, GMV +32%, beat and raise). Analyst upgrades: Morgan Stanley OW $192, Jefferies Buy $160. AI commerce narrative strengthening. No binary events.
  *** TP WATCH: $150.62 vs TP $153.32 — only $2.70 (1.79%) away. If SHOP hits $153.32 at any point Monday, sell immediately (0.513281 shares, market order). Stop trailed to $147.61 (2% below close). ***
  - If SHOP >= $153.32: sell immediately (take-profit, 0.513281 shares, market order)
  - If SHOP <= $147.61: sell immediately (stop-loss — locks in ~$0.79/share profit above breakeven)

Portfolio sync (3:15 PM reconciliation):
  - CRL: confirmed ✓ (0.289530 sh, avg $259.04)
  - SHOP: confirmed ✓ (0.513281 sh, avg $146.12)
  - No manual positions detected — only CRL and SHOP in live account

Sells executed at 3:15 PM: NONE
  No stop-loss or take-profit triggers hit. No discretionary exits.

Buys executed at 3:15 PM: NONE
  Both scanners returned 0 results — 11th consecutive session drought.
  Friday into 3-day weekend (next market day: Monday Aug 10). Candidates reviewed and rejected:
  - NET: $296.90 (+4.38%) — continued fading from AM high $324.73 to afternoon $296.90. Did NOT close near/above $310 threshold set by 12PM agent. Fading momentum, not in scanner.
  - ABNB: $175.34 (+15.64%) — intraday low $163.45 is 6.78% below entry, exceeds 5% overnight volatility cap. HARD DISQUALIFIED. Also trading above average analyst PT ($161 avg).
  - QCOM: $167.29 (+4.30%) — not scanner-confirmed, low volume (23% of avg per 12PM note), no today-specific catalyst. Broader QCOM thesis is prior Q3 beat, not today-specific.
  - MRNA: $58.49 (+8.60%) — FDA approved mRNA flu vaccine (mFLUSIVA) today for adults 50+. Landmark catalyst BUT stock PARING GAINS after announcement ("buy the rumor sell the news"), no major revenue until 2027, not scanner-confirmed.
  - TTWO: $242.11 (+4.15%) — earnings AH tonight. HARD DISQUALIFIED (binary overnight risk).
  - AMAT: $541.08 (+2.58%) — below 3% bar, not in scanner, low volume.

Market conditions at close (Aug 7, 2026 — Friday):
  SPY +0.60% | QQQ +1.09% — normal regime, positive. No regime gate triggered.
  Leading sectors: tech/small-caps. Rate-cut narrative driving (July jobs -23K, unexpected losses).
  Scanners: 0 results (11th consecutive session drought).

Settled cash remaining: $518.12
Unsettled (settles Aug 10): ~$212.67 (INTC ~$74.95 + TTMI ~$137.70 from 10AM stops)
Total account value: $884.35
Portfolio invested: $153.57 (~17.4%) — well within 75% cap ✓

NOTES FOR 10:00 AM AGENT (Monday August 10, 2026 — AFTER 3-DAY WEEKEND):

1. SHOP TP WATCH: $150.62 at close vs TP $153.32 ($2.70 = 1.79% away). Stop trailed to $147.61. If SHOP gaps up and touches $153.32 at or after Monday open, sell immediately (0.513281 shares, market order). Analyst upgrades (MS OW $192, Jefferies $160) + Q2 beat thesis remains very strong. Check for any adverse weekend news (macro, sector).

2. CRL: $263.37 at close vs TP $272.98 (3.65% away). Stop at $252.07 (4.29% below close). CRL pulled back -0.81% on the day but thesis intact (Q2 beat, raised FY guidance). No binary events expected Monday. Check premarket for any adverse weekend news (bioservices sector, macro healthcare policy).

3. 3-DAY WEEKEND RISK: Both CRL and SHOP have been held through Saturday and Sunday. Check for any adverse weekend news before acting at 10AM. Geopolitical, macro, or sector-specific events over the weekend can cause gap-downs that require immediate action.

4. MONDAY CASH POSITION: $518.12 settled + $212.67 unsettled settling Monday at open = ~$730.79 total cash. Monday 10AM is the historically strongest session (46.7% win rate, +$45.22 net). Fresh week starts the scanner drought clock over — run both scanners immediately.

5. SCANNER DROUGHT: 11 consecutive sessions without a scanner hit. A new week beginning Monday should be treated fresh — do NOT carry the drought pessimism forward. If either scanner returns results Monday, evaluate with the standard full process, not extra skepticism from the streak.

6. TTWO AH CATALYST: Take-Two Interactive reported earnings AH tonight (Aug 7). If TTWO beat estimates and is gapping up Monday morning with ≥3% change and relVol ≥1.2×, evaluate via the standard scanner path (NOT catalyst_watch path — per Learned Insights, catalyst_watch + earnings_beat = 0/4, -$10.03). Implied earnings move was ±7.76%. HIGH binary risk — require scanner confirmation.

7. RATE-CUT NARRATIVE: July jobs report showed -23,000 jobs (unexpected losses), reducing Fed rate-hike fears. This drove broad market gains on Friday (+0.60% SPY, +1.09% QQQ). Rate-sensitive and growth sectors (tech, small-caps, homebuilders, utilities) may continue to benefit Monday. Lean into tech names with scanner confirmation.

8. NET/ABNB STATUS: Both were too volatile or not meeting close strength criteria for a Friday overnight entry. By Monday, they will have aged 3 days post-earnings. Evaluate fresh with Monday's scanner. Note ABNB ($175 current) is trading ABOVE the average analyst price target (~$161), which is a fundamental headwind for new entries.

9. MRNA: FDA approved first mRNA flu vaccine (mFLUSIVA) on Aug 7. Stock pared gains (+8.60% at close, $58.49). If MRNA consolidates and appears in scanner Monday with ≥3% day change and relVol ≥1.2×, it is a fresh candidate — the FDA approval gives it a real, dated catalyst. But no major revenue until 2027, so require strong scanner confirmation before entering.

Catalyst watch list (for 10 AM agent, Monday Aug 10, 2026):
TTWO | earnings_beat (AH tonight Aug 7, result available by Monday open) | Result by Mon open | Direction bias: MEDIUM (can swing either way, implied ±7.76%) | Risk level: HIGH — scanner confirmation required, do NOT use catalyst_watch path
BRK.B | Q2 earnings (AH tonight or Saturday release) | Result by Mon open | Direction bias: NEUTRAL (large cap, consensus $5.24 EPS, +3% revenue growth) | Risk level: LOW — not a momentum play, skip unless >2% gap with unusual volume

Settled cash remaining: $518.12
Unsettled (settles Aug 10): ~$212.67 (INTC ~$74.95 + TTMI ~$137.70)
Total account value: $884.35
Invested: $153.57 (~17.4%) — well within 75% cap ✓

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