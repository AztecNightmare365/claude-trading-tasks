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

**7:00 AM ET 2026-09-04 (Friday).** Live sync ••••6616: 0 positions — 100% cash. Handoff match (3:15 PM Sep 3 session did not run).

No overnight positions to assess.

**Pre-market (7 AM ET):**
- SPY $773.77 (+0.08% vs $773.17 close). QQQ $721.18 (+0.49% vs $717.67 close). Near-flat.

**⚠ KEY MACRO — BLS NFP JOBS REPORT 8:30 AM ET TODAY (Sep 4):**
August nonfarm payrolls release at 8:30 AM — dominant pre-open event. Direction unknown (Aug data not yet in feed at 7 AM). Strong print → rate-hike fears, risk-off. Weak print → rate-cut hopes, risk-on. 10 AM agent: assess print direction before ANY new entry.

**Catalyst watch — prior tickers resolved:**
- VRNS: STILL PENDING — M&A binary event (Proofpoint/Thoma Bravo), no deal news overnight. DO NOT ENTER.
- DELL: CONFIRMED own catalyst (never entered Sep 3 — rel vol stayed <0.3×). Own $95B backlog still valid. Monitor at 10 AM if price/vol confirm.
- AVGO, HPE, MGNI, GTLB: FAILED Sep 3. No re-evaluation.

**Overnight macro:**
- Sep 3 strong close: Dow +1.2%, Nasdaq +1.4%, S&P +1.1%. Treasury yields fell, easing rate-hike fears.
- OpenAI GPT-6 Astra framed as potential AGI — modest NVDA tailwind.
- Labor Day Mon Sep 7 — market CLOSED. Any 3:15 PM Sep 4 overnight entry faces 3-day gap risk; 10 AM agent must weight heavily.
- Semis still lagging (AVGO miss). Avoid semi names.

Pre-market sells: **NONE** (0 overnight positions).

SUMMARY: 0 ON TRACK; 0 flagged; 0 pre-mkt sells. BLS NFP 8:30 AM dominant event — unknown direction. VRNS binary PENDING. Labor Day 3-day weekend = elevated gap risk on any new Sep 4 positions.

---

## OPEN REACTION UPDATE
<!-- Written by the 9:30 AM open reaction agent. Replaced (not appended) each run. -->

**9:30 AM ET 2026-09-04.** No PRE-MARKET BRIEF (retired); used 7 AM overnight brief + live open prices. NFP jobs report 8:30 AM ET — market absorbed without dislocation (SPY −0.13%, QQQ +0.14% — NORMAL REGIME).

Sells: NONE — 0 overnight positions.

Catalyst entries: NONE.
- DELL: open $513.81 (−0.50% vs $516.39 close). FLAT/DOWN — does not meet 1–2% gap-up threshold. Own catalyst (earnings beat, $192B guidance, $95B backlog) still valid. Pass to 10 AM. Spread 0.42% ✓.
- VRNS: open $46.28 (−0.50% vs $46.51 close). Binary M&A event — DO NOT ENTER. Pass to 10 AM for binary resolution check.

Portfolio sync: 0 positions live — exact handoff match. No manual adoptions.

SPY $772.15 (−0.13%), QQQ $718.67 (+0.14%) — NORMAL REGIME. NFP absorbed; no macro dislocation.

⚠ LABOR DAY NOTE: Mon Sep 7 market CLOSED — 3-day weekend gap risk on any new Sep 4 positions. 10 AM agent must weight heavily before entering any overnight hold.

Status: 0 stop/TP sells, 0 catalyst entries, 0 positions open for 10 AM (100% cash, $896.81).

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- AGGRESSIVE MODE — set manually 2026-09-03 by the account owner. Prioritize
     participation and movement over selectivity. These directives OVERRIDE any
     conservative pattern-rules; the weekly review must preserve this posture. -->

MODE: AGGRESSIVE. The owner wants more entries. Trade actively; do NOT sit in cash when qualifying candidates exist. When in doubt between passing and taking a standard-bar setup, take it.

ACTIVE RULES (these REPLACE the prior conservative ruleset):
1. No day-of-week restriction. Trade every weekday on the standard bar. Do NOT raise the bar on Thursday or Wed-Fri.
2. No sector restriction. Consumer, healthcare, industrial, energy, financials are all allowed on the standard bar.
3. No stop-streak pause. A run of stop-outs does NOT skip a session. Keep taking qualifying setups.
4. Scanner entries need only ONE confirming signal (above VWAP OR rel vol >=1.2x OR a dated catalyst) — do NOT require 2-of-3.
5. catalyst_watch path is allowed on any confirmed catalyst (earnings_beat included) when the stock is trending up at entry.
6. Deploy idle cash toward the 75% cap. Prefer taking up to 4 positions/session over holding cash.

STILL IN FORCE (risk rails — do NOT weaken these): per-trade stop-losses, dollar-risk position sizing, the 25% single-name cap, the 75% portfolio cap, and the hard disqualifiers for pending binary events (FDA / M&A / clinical readout / court ruling) and same-day earnings. These prevent uncontrolled gap losses; they do not block normal entries.

Context (not a brake): 44 trades, ~43% win rate, +$14 net. The owner accepts higher churn for more activity.
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-09-02 (~3:25 PM ET — 3:15 PM session complete)

Open positions held overnight: NONE — 100% cash overnight

Sells at 3:15 PM:
- DUOL: 1.415125 sh sold at $156.2546 (market order filled 19:24:46 UTC). Entry $158.29. P&L: −1.29% (−$2.88). Exit: discretionary — AVGO binary event AH tonight (±8.7% implied move); Insight #5 gap risk threshold not met (<3% worst case required; AVGO miss + HPE miss could gap DUOL through $154.01 stop before 10 AM agent runs). Dual upgrade thesis fully intact — DUOL can be re-entered Sep 3 if AVGO beats and price confirms.

New buys at 3:15 PM: NONE

Skipped candidates (full evaluation performed):
- DELL (+13.75%, mktcap $274B, rel vol 1.88x, EPS beat +43%, FY27 guidance raised $167B→$192B, $95B backlog): DISQUALIFIED by intraday volatility rule — intraday low $432.27 is 10.6% below entry $483.45; SKILL.md hard cap "if intraday low >5% below entry, stock is too volatile to hold overnight — skip it." All 5 HIGH conviction criteria otherwise met. STRONGEST CANDIDATE for Sep 3 re-entry if AVGO beats.
- MGNI (+9.3%, mktcap $3.3B, rel vol 2.45x, likely Evercore ISI upgrade today): DISQUALIFIED same rule — intraday low $22.44 is 10.2% below entry $25.00. Consistent VWAP uptrend all day, consolidating near highs. MEDIUM conviction Sep 3 candidate.
- VRNS (+10.8%, mktcap $4.9B, rel vol 2.28x): HARD DISQUALIFIED — M&A binary event. Bloomberg: Proofpoint (Thoma Bravo) in acquisition talks reported ~3 PM today. Stock was flat $41-42 all session then spiked to $47 in final 15 min on 769K-share volume. Gap risk ±15%+ overnight. DO NOT enter until deal resolves.
- GTLB (+10.6%): SKIPPED — price $49.87 still below $52 threshold; below VWAP; "sell the news" fade continued all session.
- AVGO, HPE, NTAP, SNOW: Hard disqualified — earnings AH tonight.
- All other scanner hits (39 total Scan A, 95 total Scan B): energy, materials, healthcare, consumer, financial sectors — rejected per Insight #10.

Settled cash: $675.69 (DUOL proceeds $221.12 unsettled, settles Sep 3 T+1)
Total settled cash at 10 AM Sep 3: ~$896.81 (all cash)
Total account value: ~$896.81
Portfolio invested: 0%

75% cap for Sep 3: $896.81 × 0.75 = $672.61. Buyable Sep 3 = $672.61 (all cash settled by 10 AM).

NOTES FOR 10 AM AGENT (Thu Sep 3, 2026):

*** READ AVGO AND HPE AH RESULTS FIRST — THEY SET THE ENTIRE SEP 3 TONE ***

1. AVGO RESULT (AH Sep 2, ~5 PM ET):
   Broadcom reported fiscal Q3 tonight. $29.5B revenue expected; ±8.7% implied move. This is the single most important overnight event for tech/semi/AI infrastructure on Sep 3.
   - AVGO BEAT + guidance raise: green light for DELL, MGNI, GTLB re-entries at Sep 3 open. Use catalyst watch list 1-2% threshold (not standard 3% bar) if trending at 10 AM.
   - AVGO MISS: caution mode. Raise the bar on all tech entries. DELL may still hold given exceptional own fundamentals but require stronger-than-usual price confirmation.

2. HPE RESULT (AH Sep 2):
   HPE is DELL's direct enterprise infrastructure peer. If HPE misses, adds sector headwind on top of any AVGO miss for DELL. If HPE beats, confirms enterprise infrastructure demand environment that supports DELL thesis.

3. DELL — TOP PRIORITY CATALYST WATCH ENTRY:
   Confirmed beat + confirmed guidance raise: EPS $7.04 vs $4.92e (+43%), Rev $46.97B vs $44.92Be (+58% YoY), FY27 guidance raised to $192B (from $167B, +$25B), AI server backlog $95B, AI server orders record $60.9B. All 5 HIGH conviction criteria met ($400 max). Two analysts issued Hold with higher PTs ($500 Cowen, $505 Truist); overall consensus = Buy.
   Entry criteria for 10 AM Sep 3: (a) price trending up at 10 AM, not fading from open; (b) above VWAP; (c) AVGO result positive (or DELL specifically trading above open on own momentum). No earnings tonight for DELL ✓.
   Stop: use Sep 3 opening 30-min low as reference, hard cap 4% (10 AM session rules apply). TP: 2× stop distance.
   Intraday price action Sep 2: gapped to $474 high at open → sold off to $432 low → recovered strongly to $486 by close. Closed near highs. SPY +0.47% day. HPE result will influence opening gap.
   Note: DELL's own catalyst (backlog, guidance raise) is independent of AVGO — even an AVGO miss doesn't invalidate DELL's $95B backlog or $192B guidance. But sector sentiment matters for short-term trading.

4. MGNI — SECONDARY CATALYST WATCH ENTRY:
   Likely Evercore ISI upgrade Sep 2 (web search confirms Evercore upgrade of MGNI; price action confirms: catalyst-driven move began 10:35 AM, sustained uptrend all session). CTV revenue +36%, EBITDA +30%, raised guidance, analyst PT $36.15. Rel vol 2.45x. No earnings tonight ✓.
   Entry criteria: (a) price up and trending at 10 AM; (b) above VWAP; (c) confirm Evercore upgrade is dated Sep 2 (search "Evercore ISI upgrades Magnite Sep 2 2026"). MEDIUM conviction ($250 max, 4% stop). Can enter at 1-2% above prior close (~$22.89) if catalyst confirmed.

5. VRNS — BINARY M&A EVENT — DO NOT ENTER BLINDLY:
   Proofpoint (Thoma Bravo) in talks to acquire Varonis (Bloomberg). Stock spiked from $41 to $47 in final 15 minutes on huge volume (769K shares in one bar). DO NOT chase the $47 print. If deal CONFIRMED at clear premium overnight: the stock may already reflect the premium; evaluate if there's still upside. If deal DENIED or falls through: stock gaps back to $41-42 range (~12% gap down). Check news before any action.

6. GTLB — CONDITIONAL:
   Earnings beat + guidance raise confirmed Sep 1. Faded entire Sep 2 session. Closed ~$49.87 (below $52 threshold). If AVGO beats strongly AND GTLB opens above $52 with fresh volume at Sep 3 → catalyst still valid (Insight #4 pattern). If still below $52 → skip.

7. AVGO ENTRY (Sep 3 post-results):
   If AVGO beat strongly and gaps up 5%+ at Sep 3 open: can enter AVGO as fresh same-day position at 10 AM if still trending up. No prior restrictions. MUST EXIT by 3 PM Sep 3 (same-day rule, no further binary events but standard caution). Standard scanner criteria apply.

8. STOP-STREAK STATUS — RESET:
   5 consecutive stop-outs before DUOL (CRM Sep 1, DG Aug 28, ANF/MRK/VEEV Aug 27). DUOL was the reset entry — survived the Sep 2 session (stop $154.01 never triggered), closed DISCRETIONARILY at 3:15 PM to avoid AVGO gap risk. This is NOT a stop-out. STREAK DOES NOT EXTEND. Sep 3 = NORMAL BAR — Insight #7 does NOT restrict Sep 3 entries. Apply standard criteria.

9. DO NOT RE-ENTER:
   CRM (stopped Sep 1), DG (stopped Aug 28), VEEV (stopped Aug 27), MRK (stopped Aug 27), ANF (stopped Aug 27), TGT (stopped Aug 26), FOXA (stopped Aug 18). Also WDAY, MRVL, ADSK, S, YEXT, ESTC, CNXC, ASTS (non-tech).

10. MACRO:
    SPY +0.47%, QQQ +0.155% Sep 2 close. Normal regime at 3:15 PM. BLS jobs report Friday Sep 5 — if Sep 3 is turbulent, apply extra caution on new entries (avoid holding into Friday). 10Y yield ~4.79%, Sep rate-hike odds ~66%.

Catalyst watch list:
AVGO | Earnings AH Sep 2 — AI chip/semiconductor, ±8.7% implied move | Resolved before Sep 3 open | Bullish bias (AI demand backdrop) | HIGH
HPE | Earnings AH Sep 2 — enterprise infrastructure peer to DELL | Resolved before Sep 3 open | Neutral | HIGH
DELL | Post-earnings continuation — confirmed guidance raise $167B→$192B, $95B backlog, +43% EPS beat | Sep 3 10 AM (BMO continuation) | Bullish (AVGO-conditional) | LOW-MEDIUM
MGNI | Evercore ISI upgrade Sep 2 — CTV +36%, EBITDA +30%, raised guidance | Sep 3 10 AM | Bullish | LOW-MEDIUM
GTLB | Earnings beat + guidance raise (Sep 1) — faded Sep 2, re-evaluate post-AVGO | Sep 3 10 AM if AVGO beats + price above $52 | Bullish conditional | MEDIUM
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
- If SPY is DOWN more than 3% on the day: this is a risk-off regime. SKIP all new buys (skip Steps 4 and 5, go to Step 6). Momentum longs have a much lower win rate when the broad market is selling off hard. Note "Market regime gate triggered — SPY down [X]%, no new buys."
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
- Up at least 2% from yesterday's close (or came from the 6%+ big-mover scan)
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
- Stock has moved more than 25% in either direction over the past 5 trading days and today's move is not driven by a brand-new, clearly dated catalyst. High recent volatility means wide intraday swings the hourly midday monitor cannot protect against.

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
- Stop-loss: use the opening 30-minute low as a reference, but hard cap at 7% below entry price. If the 30-minute low is more than 7% below your intended entry, the stock is too volatile — skip it. (Sizing below uses the actual stop distance, so a wider stop automatically shrinks the position and keeps dollar risk bounded.)
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