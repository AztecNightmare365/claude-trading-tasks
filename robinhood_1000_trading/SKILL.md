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

**7:00 AM ET 2026-09-16.** Live sync ••••6616: 2 positions (ATEC/FPS) — exact match Sep 15 handoff.

**ATEC ON TRACK** | PM $10.66 (last trade 8 PM ET AH; no fresh PM print today) | 0.00% vs $10.66 close | stop $10.50 | +$0.16 (+1.5%) above stop | bid $9.61/ask $11.78 (22% spread — illiquid noise, use open print). No adverse overnight news. Thesis intact (CEO insider buy Sep 10, UBS PT $16). Medtech = least FOMC-sensitive.

**FPS ON TRACK** | PM $31.74 | +1.20% vs $31.36 close | stop $29.50 | +$2.24 (+7.1%) above stop | bid/ask $31.70/$31.99 (0.9%). Motley Fool overnight article confirms Q4 beat thesis (94% YoY rev, AI capex secular theme). No adverse news.

**Pre-market sells placed:** NONE.

**Catalyst — TCOM:** PM $40.79 (+3.92% vs $39.25 close). Q2 reported AH Sep 15: rev +6% YoY (RMB15.7B; decelerated from Q1 +17%); net loss $361M (RMB5.2B one-time regulatory penalty); international platform +50% YoY. CATALYST CONFIRMED — PRE-MARKET GAP UP. ⚠️ Beat+raise per handoff NOT fully met (revenue decelerated; no guidance raise confirmed). Bid $40.70/ask $41.00 (0.7% — tight). FOMC day = LOW tier only ($150 max). Flag for 10 AM: confirm at open with VWAP + relVol ≥1.2x before entry.

**Macro:** SPY PM $759.63 (+0.30%), QQQ PM $708.40 (+0.55%) — cautiously positive pre-FOMC. FOMC 2 PM ET: 92% probability 25bps hike to 3.75–4.00% (Warsh hawkish; largely priced in). 10Y yield ~5.04%. Brent ~$107 (Saudi drone attack elevated).

**SUMMARY:** 2 positions ON TRACK (ATEC/FPS), 0 flagged, 0 pre-market sells. TCOM CONFIRMED +3.92% PM gap but mixed result (beat+raise unconfirmed); LOW tier at 10 AM. Email sent (TCOM gap alert).

---

## OPEN REACTION UPDATE
<!-- Written by the 9:30 AM open reaction agent. Replaced (not appended) each run. -->

**9:30 AM ET 2026-09-16.** No PRE-MARKET BRIEF (retired); used 7 AM overnight brief + live open prices.

**Sells executed: NONE.**
- ATEC: open $10.59 (vs $10.66 close, −0.65%) | stop $10.50 | buffer +$0.09 | HELD ✓
- FPS: open $33.285 (vs $31.36 close, +6.13%) | stop $29.50 | buffer +$3.785 | HELD ✓

**Catalyst — TCOM:** open $40.54 (+3.29% vs $39.25 close) | GAP UP confirmed. First 5-min bar unverifiable (API error; <1 min of trading at query time). 7 AM brief flagged for 10 AM confirmation (VWAP + relVol ≥1.2x). **Passed to 10 AM.** LOW tier ($150 max) on FOMC day.

**Portfolio sync:** Exact match (ATEC/FPS). 0 manual adoptions.

**SPY** $759.45 (+0.27%), **QQQ** $708.43 (+0.55%) — NORMAL REGIME. FOMC decision 2 PM ET.

**Notes for 10 AM:**
- FPS opened $33.285 > $32.75 trail trigger → consider trailing stop $29.50 → $31.25
- ATEC opened $10.59, below $11.00 trail trigger → stop unchanged at $10.50
- TCOM: enter if still ≥1% above $39.25 + VWAP hold + relVol ≥1.2x + first bar positive. LOW tier ($150, stop 4% below entry, TP 2× stop distance).

**Status:** 0 sells, 0 catalyst entries, 2 positions open for 10 AM (ATEC + FPS).

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-09-12. Based on 59 closed trades. -->

MODE: AGGRESSIVE (owner-set 2026-09-03). Trade actively; do NOT sit in cash when qualifying candidates exist. The insights below are scoring/sizing preferences, NOT participation gates.

OVERALL: Win rate 37.3%, profit factor 0.99, net P&L -$1.56

SCORING / SIZING PREFERENCES (rank & size by these — never skip a session over them):
1. Monday entries: 6/8 = 75.0% WR, avg +$7.01/trade — give Monday setups a scoring boost; size at HIGH tier when all other criteria met. (N=8)
2. Tuesday entries: 8/12 = 66.7% WR, avg +$1.32/trade — strong day; score at HIGH tier for qualifying setups. Includes Sep 8 sector momentum wins (MU +$7.75, SNDK +$14.24). (N=12)
3. Manual (conviction) entries: 8/16 = 50.0% WR, net +$12.68 — when user or agent flags a ticker with high conviction on a confirmed catalyst, size at HIGH tier. (N=16)
4. Tech sector: 16/38 = 42.1% WR — dominant sector with most data; score tech setups above equal-quality non-tech. (N=38)
5. Earnings_beat + explicit guidance raise in mega-cap tech: AMZN + PLTR ×3 = $58.37 from 4 trades — 45% of all gross wins. Prioritize confirmed-raise tech beats; size at HIGH tier. (N=4 qualifying)
6. analyst_upgrade catalyst: 2/4 = 50.0% WR — solid; score above sector_momentum; take all qualifying setups. (N=4 — small sample, continue tracking)
7. 3:15PM session: 5/10 = 50.0% WR — best session win rate; size at STANDARD-HIGH for overnight holds with intact thesis; watch tail risk from consumer/high-vol overnight holds (see SIZE-DOWN). (N=10)
8. 10AM session: 15/39 = 38.5% WR, net +$38.01 — reliable morning session with best absolute net P&L; apply normal scoring. (N=39)
9. earnings_beat catalyst overall: 12/30 = 40.0% WR — most reliable single-word catalyst; score above sector_momentum and "other". (N=30)
10. sector_momentum catalyst: 4/12 = 33.3% WR — weakest repeating catalyst. HARD REQUIREMENT (not just a sizing preference): a sector_momentum-only entry must show relative volume >=1.5x AND price above VWAP before it's allowed at all — missing either one, skip the candidate entirely rather than sizing down. When both are present, still start at STANDARD or LOW tier unless paired with a stronger signal (manual, tech sector, Mon/Tue). (N=12)

SIZE-DOWN (don't skip — just take smaller): catalyst_watch entry path (0/6 = 0.0% WR, -$19.49 net — every catalyst_watch entry has lost; size at LOW tier until win rate improves; confirm VWAP hold + continued uptrend at time of entry). Thursday entries (3/20 = 15.0% WR, avg -$2.78/trade — worst day by far; take qualifying setups but start at STANDARD, not HIGH; do not stack multiple new Thursday entries in same sector). Industrial sector (1/6 = 16.7% WR — LOW-STANDARD tier). Consumer overnight holds (2/5 = 40% but DG -$10.08, ANF -$10.48, KO -$4.55 are three of the account's largest single losses — LOW tier for any overnight consumer hold). 12PM session (2/9 = 22.2% WR, avg -$2.70/trade — size ~20% smaller; never re-enter a ticker already stopped or traded same day).
LEAN INTO (rank highest, size larger): Manual tech entries on confirmed earnings beat + raised guidance — AMZN (+$21.30) + PLTR ×3 (+$37.07) = $58.37 from 4 trades, 45% of all gross wins. Pattern: large-cap tech, explicit guidance raise confirmed, high-conviction entry. No other trade category approaches this dollar contribution.

STILL IN FORCE (risk rails — never weaken): per-trade stop-losses, dollar-risk sizing, 25% single-name cap, 75% portfolio cap, sector cap (max 2 open positions / 40% of account value in one sector at a time — see each session's Step 3/4), sector_momentum-catalyst entries hard-gated on relative volume >=1.5x AND price above VWAP (not a sizing-only preference), hard disqualifiers for pending binary events (FDA/M&A/clinical/court) and same-day earnings.

RAW STATS:
- Best catalyst: analyst_upgrade (50.0% WR, N=4); earnings_beat (40.0% WR, N=30, best absolute $ contribution)
- Best sector: tech (42.1% WR, N=38); healthcare (50.0% WR, N=4 — small sample)
- Best session to open: 3:15PM (50.0% WR, N=10); best by net $: 10AM (+$38.01, N=39)
- Stop triggered rate: 55.9% of trades (33/59)
- TP hit rate: 11.9% of trades (7/59)
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-09-16 (~3:30 PM ET — 3:15 PM session complete)

Open positions held overnight: **2 (FPS + LITE)**

| Ticker | Shares | Entry Price (actual) | Stop | TP | Overnight | Thesis (1 line) | Entry Type |
|--------|--------|----------------------|------|----|-----------|-----------------|------------|
| FPS | 5.063291 | $31.60 | $33.75 | $35.80 | YES | Q4 FY26 beat+raise: EPS $0.25 vs $0.23, rev $461.7M (+94% YoY), guidance raised $2.4–2.6B; data center power infra; closed $35.20 (above $35.00 hold threshold) | scanner |
| LITE | 0.279569 | $894.23 | $855.18 | $972.33 | YES | CEO raised LT guidance at ECOC 2026 (~$40 EPS power by FY2028, "big order uptick"); Deutsche Bank Buy $1,200 + Evercore ISI Outperform $1,100 initiated Sep 16; AI photonics/optics secular theme | scanner |

⚠️ BOTH STOPS ARE MENTAL — no standing stop orders in Robinhood (fractional shares).

3:15 PM prices and status:
- FPS: $35.196 at 3:29 PM ET | stop $33.75 | buffer +$1.45 (+4.1%) | HELD ✓ | above $35.00 → overnight hold confirmed
- LITE: $894.395 at 3:29 PM ET | entry $894.23 | stop $855.18 | buffer +$39.22 (+4.4%) | BOUGHT $250.00 (0.279569 sh) | fills: 6aaaeddb-0821-4e43-8bf8-89a7f113450f
- ATEC: SOLD $10.4401 (stop_loss; price hit $10.445 at 3:27 PM vs stop $10.50) — DO NOT RE-ENTER

Settled cash: $342.74
Total account value: $860.62
Portfolio invested: 49.8% (FPS ~20.7%, LITE ~29.1%)
Buying power (settled, spendable): $342.74
SPY close: ~$751.82 (−0.74% vs Sep 15 close $757.39) — post-FOMC mild sell-off; NORMAL REGIME

Sessions completed today (Sep 16):
- 7 AM: ATEC/FPS on track; TCOM confirmed +3.92% PM gap (mixed Q2, LOW tier flagged); FOMC 2 PM ET flagged
- 9:30 AM: ATEC opened $10.59 (HELD, stop $10.50); FPS opened $33.285 (HELD, trail trigger activated)
- 10 AM: No sells. No buys. FPS stop trailed $29.50 → $31.25. TCOM skipped (fading).
- 12 PM: No sells. No buys. FPS stop trailed $31.25 → $33.75. ATEC stop unchanged (1.5% rule).
- 3:15 PM: ATEC SOLD $10.4401 (stop_loss, +4.82%/+$4.12). LITE BOUGHT $250.00 @ $894.23. FPS HELD.

---

NOTES FOR 7 AM / 10 AM AGENT (Thu Sep 17, 2026):

⚠️ FOMC RESULT CONFIRMED: Fed hiked 25bps to 3.75–4.00% on Sep 16 at 2:00 PM ET. Post-FOMC: SPY went from +0.44% at noon to −0.74% at 3:15 PM (broad market mild sell-off, ~−1.2% intraday swing from peak post-decision). 10Y yield ~4.95–5.04%. Decision was largely priced in (88-92% probability). Market regime entering Sep 17: NORMAL (SPY −0.74% on Sep 16; no caution/risk-off trigger).

⚠️ FPS CRITICAL — TP VERY CLOSE ($35.80):
- FPS at $35.196 at 3:29 PM Sep 16. Closed above $35.00 → overnight hold confirmed. TP $35.80 = only $0.60 (+1.7%) away. Stop $33.75 (pre-surge multi-touch support zone, mental).
- Sep 16 intraday high: $35.40 at 11:45 AM. FPS has been very close to TP today.
- If FPS opens above $35.80 in pre-market or at open → SELL IMMEDIATELY at market (TP hit).
- If FPS opens $34.50–$35.80 with positive momentum → hold; consider trailing stop to $34.20–34.50 (Sep 16 afternoon intraday support zone).
- If FPS breaks above $35.50 at any point → trail stop aggressively to $34.50–34.70 (pre-surge support confirmed).
- Beat+raise thesis intact. Data center power infra secular. No binary events overnight.

⚠️ LITE — NEW OVERNIGHT POSITION:
- Entry $894.23 (0.279569 sh, $250.00 MEDIUM tier, scanner). Stop $855.18 (Sep 16 opening-bar intraday low). TP $972.33 (+8.7% from entry).
- Catalyst: CEO guidance raise at ECOC 2026 conference (LT EPS ~$40 by FY2028, "big order uptick in AI optics demand") + Deutsche Bank initiated Buy @ $1,200 + Evercore ISI initiated Outperform @ $1,100 — all Sep 16.
- At close: $894.40, slightly BELOW VWAP ($902.95) due to post-FOMC broad market pull. Thesis NOT broken — entire market sold post-FOMC. AI photonics/optics = multi-day secular catalyst.
- ⚠️ If LITE opens below $855.18 → SELL IMMEDIATELY (stop triggered).
- At 7 AM / 10 AM: check pre-market level. If pre-market above $870 and trend recovering → thesis intact, hold. LITE prev close Sep 15 = $838.96; even at $855 it's +1.9% from last close.
- Dollar risk check: 0.279569 sh × $39.05 stop distance = $10.92 (within $12.50 MEDIUM limit ✓).

⚠️ ATEC SOLD — DO NOT RE-ENTER:
- Sold at $10.4401 (stop triggered; stop was $10.50; price fell to $10.445 by 3:27 PM). 
- P&L: +4.82% / +$4.12. 6-day hold (Sep 10 3:15 PM session → Sep 16 3:15 PM).
- Add ATEC to standing DO NOT RE-ENTER list.

MACRO OVERNIGHT Sep 16–17:
- Brent crude ~$107+ (Saudi drone attack on pipeline infrastructure; geopolitical risk elevated)
- 10Y yield ~4.95–5.04% post-FOMC
- Middle East: AMZN lost cloud data centers in Bahrain/UAE; geopolitical risk ongoing
- Sep 17 economic data: weekly jobless claims 8:30 AM ET; any Fed speaker commentary
- Sep 17 earnings: ~3 BMO, ~6 after close; no high-conviction beat candidates identified

DO NOT RE-ENTER (standing bans — carry forward):
ATEC (stopped Sep 16 stop_loss), ORCL (sold Sep 15 stop_loss), BE (sold Sep 15 stop_loss), META, AVAV (stopped Sep 10)
SNDK (stopped Sep 10 12PM), MU (stopped Sep 10 12PM), GLW (stopped Sep 10 9:30AM), COHR (stopped Sep 10 9:30AM), ALAB (stopped Sep 10 9:30AM), CRM (stopped Sep 1), DG (stopped Aug 28), VEEV/MRK/ANF (stopped Aug 27), TGT (stopped Aug 26), FOXA (stopped Aug 18). WDAY, MRVL, ADSK, S, YEXT, ESTC, CNXC, ASTS, HPE, AVGO, MGNI, GTLB.
VRNS: M&A binary (Proofpoint/Thoma Bravo) STILL PENDING.
SWKS: Pending acquisition of QRVO — M&A binary, hard disqualifier.
QRVO: Target of SWKS acquisition — hard disqualifier.
VAL: Pending merger with RIG (Transocean) — M&A binary, hard disqualifier.
ODD, CSR, ADBE, ACVA, RH, RDDT: Standing bans (see prior sessions).
LUXE: Earnings miss BMO Sep 16 — banned.
AMRX: Pending acquisition of Kashiv BioSciences ($750M, shareholder approval required) — M&A binary, hard disqualifier.
BBNX: Dilutive $150M secondary offering closing this week — skip.
TCOM: Failed $40.50 re-entry threshold at 3:15 PM Sep 16 ($40.43); no longer a watch candidate.

Catalyst watch list for Thu Sep 17, 2026: none identified with sufficient conviction.

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

SECTOR CAP — check before sizing any buy: look at the LIVE portfolio's sector mix (not just today's adds). Never open a position that would put more than 2 open positions, or more than 40% of total account value, in the same sector at once — tech included, even for priority-watchlist or scanner-boosted candidates. If a candidate would breach this, skip it (or shrink to whatever room remains) rather than concentrating further. Sept 10 2026 lost $29 in one session to 5 same-sector (tech/semi) stops firing together — this cap exists to stop that correlated pile-up from recurring.

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