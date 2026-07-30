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

**7:15 AM ET, 2026-07-30**

POSITIONS (5 held, from 7/29 3:15PM handoff):
- AAPL $336.71 (-0.44%). Stop $330.27 (buf 1.91%). ON TRACK. Earnings AMC tonight, no leak.
- MMM $177.25 (-0.39%). Stop $174.94 (buf 1.30%). ON TRACK.
- HON $240.33 (-0.33%). Stop $233.01 (buf 3.05%). ON TRACK. New insider sale $4.15M (not escalating).
- CRM $183.25 (-2.72%). Stop $187.60 (trailed). **CRITICAL STOP BREACH** (-2.32%). No CRM-specific news — broad Wed selloff (Dow -2.19%/S&P -1.52%/Nasdaq -1.74%, post-FOMC hawkish dissent) + META AH miss hit growth names. Limit sell tried at bid $182.21 — REJECTED, fractional shares can't limit-sell outside regular hours. 9:30 AM: SELL AT OPEN, no discretion.
- KO $88.40 (-0.76%). Stop $88.64. **CRITICAL STOP BREACH** (-0.27%, marginal). Thesis intact (Q2 beat/guidance raise). Same rejection. 9:30 AM: SELL AT OPEN, no discretion.

PRE-MARKET SELLS: None — CRM & KO rejected by broker (fractional-share limit orders barred extended hours; market-only, regular hours). Platform limit, not discretion.

CATALYST WATCH:
- MSFT $425.35 (+8.92%). CONFIRMED GAP UP (EPS $4.74 vs $4.23, rev $90.0B vs $87.6B). Flag 9:30 AM entry, 1-2% above prior close.
- META $537.00 (-8.30%). FAILED (EPS miss $6.18 vs $7.22, capex/FCF concerns). SKIP.
- MA $561.85 (-0.26%). PENDING, not released (call 9AM ET). Verify at open.

MACRO: FOMC held 3.50-3.75% (3 hawkish dissents) — Dow -2.19%/S&P -1.52%/Nasdaq -1.74% Wed close, 30Y yield highest since 2007. Premarket: SPY +0.56%, QQQ +1.18% (MSFT beat > META miss). Regime NORMAL.

SUMMARY: 3 ON TRACK (AAPL/MMM/HON); 2 CRITICAL STOP BREACH (CRM/KO) — sell blocked by fractional-share rule, must sell at 9:30 AM open, no discretion; 0 pre-market sells executed. Catalyst: 1 confirmed (MSFT), 1 failed (META), 1 pending (MA).

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-07-25. Based on 12 closed trades. -->

OVERALL: Win rate 42% (5/12), profit factor 1.47, net P&L +$4.40 (avg win +3.25%, avg loss -1.68%)

TOP RULES (read before every session):
1. 12PM entries are a persistent drain: 0/3 wins, -$6.17 net, avg -2.42% per trade. All three midday entries (OKTA, SMCI, ALLE) were losses. Hold 12PM buys to a drastically higher bar or skip the session entirely; do not buy at noon without an exceptional setup. (N=3)
2. 10AM is the money session: 57% win rate (4/7), +$10.38 net. The open is where the edge lives — prioritize 10AM entries and protect that session's dry powder for the best setups. (N=7)
3. Let stops work — don't cut by hand. Stop exits: 3/5 = 60% win rate, +$4.71 net. Discretionary exits: 2/7 = 29%, -$0.31 net. Hand-cutting on price action or "the market is red" costs real money. The stop is the exit mechanism. (N=12)
4. earnings_beat catalyst: 2/6 = 33% win rate, +$2.15 net. The two wins (ABT, GM) came from 10AM entries on strong opens. Earnings beats alone don't guarantee success — confirm momentum at the open, don't buy a fading earnings-beat stock. (N=6)
5. Early-week (Mon-Tue) entries: 3/3 = 100% win rate. Late-week (Thu-Fri) entries: 0/4 = 0%. Don't force Thursday or Friday setups — the early-week edge is real and now backed by minimum data. (Mon+Tue N=3; Thu+Fri N=4)
6. tech sector: 2/5 = 40% win rate, -$0.81 net. Losers (OKTA -$1.62, SMCI -$3.03, NTSK -$1.29) overwhelm the two winners. Require a cleaner catalyst and stronger open confirmation on tech entries. (N=5)
7. TP hit rate is 0% (0/12) — no trade has ever reached its 1:2 take-profit. Trailed stops capture all winner exits. Consider a nearer first target or partial scale-out so the 1:2 is occasionally realized. (N=12)
8. Stop triggered rate: 42% (5/12) — marginally above the <40% target for the first time. Do not widen stops to manage this metric; fix entry quality instead. (N=12)
9. No catalyst_watch trades yet (feature launched 2026-07-23; 0 trades tagged catalyst_watch). Cannot compare early-entry path vs scanner. Need at least 3 catalyst_watch entries to draw conclusions. (N=0)

AVOID: 12PM entries. OKTA, SMCI, and ALLE — three consecutive midday buys, three losses, -$6.17 total. The 12PM session has a 0% win rate over its entire history. Unless the setup is truly exceptional (above VWAP, unquestionable catalyst, strong sustained momentum), don't buy at noon.

LEAN INTO: Mon-Tue 10AM entries on confirmed earnings beats with a strong open. RHI, ABT, and NBIS are the template — morning buys early in the week on a clean catalyst that opened well and held momentum. 3/3 wins, +$8.65 net on these three trades alone.

RAW STATS:
- Best catalyst: earnings_beat (33% win, +$2.15 net, N=6 — only catalyst with N≥3)
- Best sector: industrial (33% win, +$1.18 net, N=3); worst: tech (40% win, -$0.81 net, N=5)
- Best session to open: 10AM (57% win rate, +$10.38, N=7); worst: 12PM (0% win rate, -$6.17, N=3)
- Stop triggered rate: 42% of trades (target: <40%) — marginally above target
- TP hit rate: 0% of trades (target: >30%) — miss; TPs never reached, trailed stops exit first
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-07-29 (~3:30 PM ET — 3:15 PM session complete)

Open positions held overnight (5 total):

- AAPL: 0.588580 shares, avg entry $330.27, stop-loss $330.27 (breakeven — unchanged), take-profit $347.86, overnight flag: YES
  3:15 PM price: ~$342.71 | vs avg entry: +$12.44 (+3.77%) | day change: +0.77%
  entry_type: scanner (original) / manual (add-on)
  Thesis: Apple Intelligence + Alibaba Qwen China AI regulatory approval + HSBC Buy PT $366. Intraday high $344.19 at 2 PM, consolidating into close around $342-343. Stop at breakeven — risk-free. TP $347.86 is $5.15 (1.50%) away.
  ⚠️ EARNINGS DEADLINE: July 30 AMC — 3:15 PM agent on July 30 MUST exit AAPL before close. DO NOT hold through earnings.
  - If AAPL >= $347.86: sell immediately (take-profit, 0.588580 shares, market order)
  - If AAPL <= $330.27: sell immediately (stop-loss — breakeven)

- MMM: 0.474448 shares, entry $174.94, stop-loss $174.94 (breakeven — unchanged), take-profit $186.82, overnight flag: YES
  3:15 PM price: ~$178.82 | vs entry: +$3.88 (+2.22%) | day change: -2.01%
  entry_type: scanner
  Thesis: Q2 2026 earnings beat ($2.40 EPS vs $2.24 est.); FY EPS guidance raised; Microsoft Azure AI partnership. Down on day (XLI -2.44% — Iran oil spike drove industrial sector weakness), but thesis intact. Stop at breakeven — risk-free.
  Buffer: $3.88 (2.22%). TP $186.82 is $8.00 (4.47%) away.
  - If MMM >= $186.82: sell immediately (take-profit, 0.474448 shares, market order)
  - If MMM <= $174.94: sell immediately (stop-loss — breakeven)

- HON: 0.243604 shares, avg entry $245.48, stop-loss $233.01, take-profit $269.79, overnight flag: YES
  3:15 PM price: ~$243.58 | vs avg entry: -$1.90 (-0.77%) | day change: -1.40%
  entry_type: scanner
  Thesis: Q2 2026 earnings beat (EPS $1.95 vs $1.82 est.); automation orders +16%; FY guidance raised. BofA upgraded Jul 28 to Neutral PT $265, RBC PT $298. FOMC rate-hold (confirmed today) positive long-term for industrials. Down on day but stop buffer comfortable.
  Buffer to stop: $10.57 (4.44%). Trail trigger $250.18 NOT hit.
  - If HON >= $269.79: sell immediately (take-profit, 0.243604 shares, market order)
  - If HON <= $233.01: sell immediately (stop-loss)
  - If HON reaches $250.18 intraday: trail stop to $245.48 (breakeven) immediately

- CRM: 0.365839 shares, entry $174.94, stop-loss $187.60 (TRAILED — set by 2 PM session), take-profit $190.48, overnight flag: YES
  3:15 PM price: ~$189.57 | vs entry: +$14.63 (+8.36%) | day change: +4.45%
  entry_type: scanner
  Thesis: $1.6B, 3-year Agentic Enterprise License Agreement with U.S. Veterans Affairs. Intraday high today: $190.18 — missed TP by only $0.30. Stop trailed at $187.60 locks in minimum ~$12.66 gain/share. Position recovering into close after 3 PM pullback.
  ⚡ NEAR TP: If CRM reaches $190.48: sell immediately (0.365839 shares, market order). First-ever TP hit!
  - If CRM >= $190.48: sell immediately (take-profit, 0.365839 shares, market order)
  - If CRM <= $187.60: sell immediately (stop-loss — trailed)

- KO: 1.785898 shares, entry $90.3243, stop-loss $88.64, take-profit $93.69, overnight flag: YES
  3:15 PM price: ~$88.93 | vs entry: -$1.39 (-1.54%) | day change: +0.75%
  entry_type: catalyst_watch
  Thesis: Q2 2026 earnings beat BMO July 28 ($0.97 EPS vs $0.92 est.); consumer staples defensive play (FOMC rate-hold + Iran geopolitical risk = defensive bid).
  ⚠️⚠️ NEAR STOP — CRITICAL: Stop $88.64. Buffer only $0.29 (0.33%).
  🚨 STOP TOUCHED TODAY: KO intraday low on July 29 was EXACTLY $88.64 at the 9:30 AM open. Recovered to $90.92 intraday high, then declined all afternoon back near stop.
  - If KO >= $93.69: sell immediately (take-profit, 1.785898 shares, market order)
  - If KO <= $88.64: sell immediately (stop-loss)

Sells executed this session: 0
Buys executed this session: 0
New buys rationale: SKIPPED — 9th consecutive zero on both momentum scanners. Only F (+4.04%) cleared 3% bar — disqualified (auto sector headwinds from Iran oil spike +7%, revenue miss $44.9B vs $46.8B est., limited overnight catalyst). BE +1.08% and TXN +0.18% (analyst upgrades) below bar. Semiconductor priority watchlist entirely red (MU -6.37%, AMAT -4.54%, SNDK -2.22%). MSFT/META AH tonight = elevated macro uncertainty. Do not force trades.

Settled cash remaining: ~$282.32 (unchanged — no trades)
Total account value: ~$856.35 (AAPL $201.78 + MMM $84.81 + HON $59.32 + CRM $69.35 + KO $158.77 = $574.03 invested + $282.32 cash)
Portfolio invested: ~67.0% (under 75% cap)

---

NOTES FOR 10:00 AM AGENT (Wednesday July 30, 2026):

1. ⚠️⚠️ KO NEAR STOP — CHECK FIRST: Stop $88.64. Close ~$88.93 = buffer $0.29 (0.33%). Intraday low today was EXACTLY $88.64 (stop touched at 9:30 AM open, bounced, recovered to $90.92, then declined all afternoon). If KO opens AT OR BELOW $88.64: sell immediately (1.785898 shares, market order). No discretion.

2. ⚡ CRM NEAR TP — CHECK SECOND: Price ~$189.57 at close, TP $190.48 = $0.91 (0.48%) away. Intraday high today $190.18 (nearly hit TP by $0.30). Stop $187.60 locks in minimum ~$12.66 gain/share. If CRM opens at or above $190.48: sell immediately (0.365839 shares, market order). First-ever TP hit possible!

3. ⚠️ AAPL EARNINGS DEADLINE — TODAY: Must exit AAPL BEFORE July 30 close (earnings AMC tonight). DO NOT hold through earnings. If TP $347.86 hit before close: take-profit (0.588580 shares). Otherwise: the 3:15 PM agent on July 30 MUST sell before close. Stop at breakeven $330.27 — risk-free to hold until then.

4. OVERNIGHT CATALYSTS — BIG TECH (both report AH July 29 — results known by 10 AM):
   - MSFT Q4: EPS est $4.23, Revenue est $87.61B, Azure growth 39-40% expected. If strong beat + capex guidance reasonable → positive for tech/QQQ → AAPL tailwind.
   - META Q2: EPS est $7.23, Revenue est $59.50B. Margin (>41%) and capex guidance are the swing factor. If both MSFT and META beat → risk-on open for tech; if both miss → AAPL gap-down risk (still above breakeven stop, so protected).

5. MA EARNINGS BMO TODAY: Mastercard Q2 before market open. EPS est $4.77 (+14.9% YoY), Revenue est $9.06B (+11.4% YoY). 4 consecutive beats. If MA beats and opens +1-2%+ with sustained momentum: consider catalyst-watch entry (not fading from open spike). Risk: LOW.

6. BROAD MARKET CONTEXT at 3:15 PM July 29: SPY -0.22%, QQQ +0.01%. Iran surprise attacks on US forces drove oil +7% (XLE +1.62%). FOMC held rates 3.50-3.75% (3 hawkish dissenters). Industrials weak (XLI -2.44%). Semiconductors crushed (MU -6.37%, AMAT -4.54%). Consumer staples and defensives held.

7. HON: -0.77% from entry, down -1.40% today. Stop $233.01 buffer $10.57 (4.44%). Trail trigger $250.18 not hit. Hold — let stop work.

8. MMM: +2.22% from entry, stop at breakeven $174.94 — risk-free. Down -2.01% today (industrial sector weakness). Hold.

9. BUYING POWER: ~$68 available (75% cap), but scanner environment thin — 9th consecutive zero. Wait for confirmed morning momentum. MA beat could be the first real catalyst watch entry.

10. SCANNER ENVIRONMENT: 9th consecutive zero session. F (+4.04% on yesterday's earnings EPS beat) was only mover above bar — skipped for reasons above. Analyst upgrades today: BE +1.08% (Clear Street Buy PT $290), TXN +0.18% (Arete Buy PT $405), F Citi upgrade.

Catalyst watch list:
MSFT | Q4 2026 earnings AH Jul 29 | AH Jul 29 (affects Wed open) | BULLISH if Azure >39% + capex guidance reasonable (EPS est $4.23, revenue est $87.61B) | MEDIUM
META | Q2 2026 earnings AH Jul 29 | AH Jul 29 (affects Wed open) | BULLISH if margins >41% + ad revenue strong (EPS est $7.23, revenue est $59.50B) | MEDIUM
MA   | Q2 2026 earnings BMO Jul 30 | BMO today (by 10 AM) | BULLISH — 4/4 beat history; EPS est $4.77, revenue est $9.06B | LOW

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