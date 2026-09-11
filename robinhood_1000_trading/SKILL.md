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

**7:00 AM ET 2026-09-11.** Live sync ••••6616: 0 positions — fully in cash. Exact match with 3:15 PM Sep 10 handoff.

**Overnight positions:** NONE.

**Pre-market sells:** NONE.

**Catalyst watch list:**
- ORCL: PM $163.00 (+6.58% vs $152.94 close). **CATALYST CONFIRMED — GAP UP.** Q1 FY27: Non-GAAP EPS $1.92 vs $1.67 est (+15% beat), rev +30% to $19.35B, OCF +184%. Cloud AI infra beat. Flag for 10 AM entry — confirm trending up at open. Not on banned list.
- ADBE: PM $239.66 (−3.69% vs $248.83 close). **CATALYST FAILED (price).** Q3 FY26 beat ($6.13 EPS vs $5.84 est) + raised FY guidance — BUT CEO transition announced (Narayen → Chakravarthy, Dec 1). AH selling despite beat. **SKIP — do not enter.**
- RDDT: PM $156.10 (+0.49% vs $155.34 close). **CATALYST PENDING (CPI gate).** 6.1% surge played out Thursday Sep 10 (relVol 0.89x, was rejected at 3:15 PM). Now flat. CPI 8:30 AM is the gating factor. MONITOR — if CPI cool and RDDT breaks above $158, re-evaluate at 10 AM.

**Macro:**
- SPY PM $762.11 (+0.56%), QQQ PM $713.11 (+0.62%) — mild green.
- CPI Aug 8:30 AM ET today: exp +0.4% MoM / +3.4% YoY; core +0.2% / +2.4%. Hot PPI yesterday raised hike odds to ~73%. Cool CPI = relief rally; hot = tech sell-off. FOMC Sep 15–16.
- Oil declined overnight (supportive). ORCL beat driving positive tech PM sentiment.

**SUMMARY:** 0 overnight positions, 0 pre-market sells. Catalyst: ORCL CONFIRMED +6.58% (10 AM candidate), ADBE SKIP (CEO transition), RDDT MONITOR (CPI gate). Email sent: ORCL catalyst alert.

---

## OPEN REACTION UPDATE
<!-- Written by the 9:30 AM open reaction agent. Replaced (not appended) each run. -->

**9:30 AM ET 2026-09-11.** No PRE-MARKET BRIEF (retired); used 7 AM overnight brief + live open prices.

**Overnight positions:** NONE. 0 stop/TP sells.

**Portfolio sync:** 0 positions pre-open — exact match with 7 AM brief and 3:15 PM handoff. 0 manual adoptions.

**SPY** $764.59 (+0.89%), **QQQ** $714.64 (+0.84%) — NORMAL REGIME. CPI +0.4% MoM in-line.

**Catalyst entries (1):**
- ORCL: CONFIRMED (Q1 FY27 EPS $1.92 vs $1.67 est +15%, rev +30%, OCF +184%, full-year guidance raised). Initial open quote $165.745 (+8.37%). Filled $155.5899 at 9:34:46 ET — stock faded sharply in first 4 min (+1.73% vs $152.94 close at fill). 2.570860 sh. Stop $149.37 (4% below entry). TP $168.03 (2× stop dist). entry_type: catalyst_watch. Overnight: YES. ⚠️ UBS Buy, PT $250. No binary tonight.

**RDDT:** PENDING → passed to 10 AM (CPI in-line, not cool; 7 AM brief routed RDDT to 10 AM).
**ADBE:** FAILED — CEO transition killed the beat. Skipped.

Status: 0 stop/TP sells, 1 catalyst entry (ORCL), 1 position open for 10 AM.

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-09-05. Based on 48 closed trades. -->

MODE: AGGRESSIVE (owner-set 2026-09-03). Trade actively; do NOT sit in cash when qualifying candidates exist. The insights below are scoring/sizing preferences, NOT participation gates.

OVERALL: Win rate 41.7%, profit factor 1.17, net P&L $15.30

SCORING / SIZING PREFERENCES (rank & size by these — never skip a session over them):
1. Monday entries: 6/8 = 75.0% WR, +$56.06 net — give Monday setups a scoring boost; size at HIGH tier when all other criteria met. (N=8)
2. Tuesday entries: 6/9 = 66.7% WR — strong day; score at HIGH tier for qualifying setups. Dollar net is pulled down by two outlier manual losses (AMD 12PM, AMAT 8/18); underlying win rate is solid. (N=9)
3. Manual (user-selected) entries: 8/13 = 61.5% WR, avg +2.96% — when user manually flags a ticker on a confirmed catalyst, treat as HIGH conviction; size at HIGH tier. (N=13)
4. Tech sector: 14/28 = 50.0% WR, +$40.46 net — the only sector with consistently positive net P&L; all non-tech sectors combined are -$25.16. Give tech a scoring boost over equal-quality non-tech setups. (N=28)
5. "Other" catalyst: 4/6 = 66.7% WR, avg +1.34% — non-standard catalyst setups (product launches, market share gains, supply chain news) win as reliably as manual entries; do not penalize for lacking a textbook catalyst label. (N=6)
6. Earnings_beat with explicit guidance raise in mega-cap tech: AMZN + PLTR ×3 = $58.37 from 4 trades — 54% of all gross wins. Prioritize confirmed-raise tech beats; size at HIGH tier. (N=4 qualifying)
7. 3:15PM tech overnight entries: 4/6 = 66.7% WR — tech holds from 3:15PM are strong; size confidently when stop gap ≤4% and thesis intact. (N=6)
8. analyst_upgrade catalyst: 2/4 = 50.0% WR — solid; score above sector_momentum; take all qualifying setups. (N=4)
9. 10AM session: 13/31 = 41.9% WR, +$45.76 net — standard morning session; apply normal scoring. (N=31)
10. sector_momentum catalyst: 2/7 = 28.6% WR, avg -0.09% — weakest catalyst label. HARD REQUIREMENT (not just a sizing preference): a sector_momentum-only entry must show relative volume >=1.5x AND price above VWAP before it's allowed at all — missing either one, skip the candidate entirely rather than sizing down. When both are present, still start at STANDARD or LOW tier unless paired with a stronger signal (manual, tech sector, Mon/Tue). (N=7)

SIZE-DOWN (don't skip — just take smaller): Consumer sector (2/5 = 40% WR, -$17.76 net; overnight consumer holds are especially destructive: DG -$10.08, ANF -$10.48, KO -$4.55; size at LOW-STANDARD for any overnight consumer hold). Financials (0/3 = 0% WR; size at LOW tier). Thursday entries (2/13 = 15.4% WR, -$25.17 net — far worst day; take qualifying setups but start at STANDARD tier, not HIGH). catalyst_watch entry path (0/5 = 0% WR so far; take these entries but size at LOW tier until win rate improves; confirm VWAP hold + continued uptrend). 12PM session (2/6 = 33.3% WR, -$15.21 net; do not re-enter a ticker already traded same day — AMD 12PM re-entry = -$14.73).
LEAN INTO (rank highest, size larger): Manual tech entries on confirmed earnings beat + raised guidance — AMZN (+$21.30) + PLTR ×3 (+$37.07) = $58.37 from 4 trades, 54% of all gross wins. Pattern: large-cap tech, explicit guidance raise confirmed, high-conviction manual selection. No other trade category approaches this dollar contribution.

STILL IN FORCE (risk rails — never weaken): per-trade stop-losses, dollar-risk sizing, 25% single-name cap, 75% portfolio cap, sector cap (max 2 positions / 40% of account in one sector — see Step 3), sector_momentum-catalyst entries hard-gated on relative volume >=1.5x AND price above VWAP (not a sizing-only preference), hard disqualifiers for pending binary events (FDA/M&A/clinical/court) and same-day earnings.

RAW STATS:
- Best catalyst: "other" (66.7% WR, N=6); earnings_beat (41.4% WR, N=29, +$25.11 net $ — driven by mega-cap tech beats)
- Best sector: tech (50.0% WR, N=28, +$40.46 net); worst: financials (0.0% WR, N=3)
- Best session to open: 3:15PM (50.0% WR, N=10); best by net $: 10AM (+$45.76, N=31)
- Stop triggered rate: 50.0% of trades (24/48)
- TP hit rate: 10.4% of trades (5/48)
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-09-11 (~3:15 PM ET — 3:15 PM session complete)

Open positions held overnight: **3 (ORCL, BE, ATEC)**

| Ticker | Shares | Entry Price | Stop | TP | Overnight | Thesis (1 line) | Entry Type |
|--------|--------|-------------|------|----|-----------|-----------------|------------|
| ORCL | 2.570860 | $155.59 | $149.37 | $168.03 | YES | Q1 FY27 beat+raise (EPS $1.92 vs $1.67, rev +30%, OCF +184%, full-year raised); $664B RPO; cloud AI infra | catalyst_watch |
| BE | 0.622357 | $273.91 | $266.12 | $288.50 | YES | ORCL CEO confirmed BE fuel cells for NM data center; S&P 500 inclusion Sep 21; Zacks #1 Strong Buy | scanner |
| ATEC | 8.585630 | $9.96 | $9.96 | $11.28 | YES | CEO Patrick Miles bought 115,000 shares ($1.01M) Sep 10; UBS Buy PT $16; STOP AT BREAKEVEN — risk-free | scanner |

3:15 PM prices (vs entry and stops):
- ORCL: $151.29 | −2.76% from entry | −1.08% on day | stop $149.37 (buffer $1.92 / 1.27%)
- BE: $275.74 | +0.67% from entry | +6.68% on day | stop $266.12 (buffer $9.62 / 3.49%)
- ATEC: $10.47 | +5.12% from entry | +18.43% on day | stop $9.96 breakeven (buffer $0.51 / 4.87%)

Stop check: All three above stops. No hard exits triggered.
Trail check: ORCL did not recover above $156 (no trail). BE below $279.49 trigger (no trail). ATEC below $10.50 trigger (no trail).

⚠️ ATEC near trail trigger: Closed $10.47 vs trigger $10.50. If ATEC opens Monday at or above $10.50, immediately trail stop to $10.05–$10.10 (intraday support from Sep 11).

No buys this session: Portfolio at 75% cap. Effective available = $1.74 (below $10 minimum). Steps 4 & 5 skipped.

Settled cash: $219.09
Total account value: $869.54
Portfolio invested: 74.8% (at 75% cap — no buying power unless a position stops out)
SPY close: $764.90 (+0.93%) — NORMAL REGIME

Sessions completed Sep 11:
- 7 AM: 0 overnight positions confirmed, ORCL catalyst watch
- 9:30 AM: ORCL bought (catalyst_watch, 2.570860 sh at $155.59)
- 10 AM: BE bought ($273.91, 0.622357 sh); ATEC bought ($9.96, 8.585630 sh)
- 12 PM: ATEC stop trailed $9.345 → $9.96 (breakeven). No other orders.
- 3:15 PM: All three holds. No buys (at cap). No sells.

---

NOTES FOR 7 AM / 10 AM AGENT (Monday Sep 14, 2026):

⚠️ FOMC WEEK: Sep 15–16 meeting. Rate hike 25 bps at ~86–90% probability. Decision Wed Sep 16 at 2 PM ET. Monday's open will reflect FOMC positioning anxiety — do NOT confuse broad-market pressure with individual thesis breaks for our positions.

ORCL ($151.29 close, stop $149.37 — TIGHT $1.92 buffer):
- Thesis intact: Q1 FY27 beat+raise, $664B RPO, cloud AI infra. Multiple Buy ratings (Guggenheim $400, DA Davidson $225, Cantor $284, UBS $250).
- Stock round-tripped entire earnings gap (high $167.67 → close $151.29, near day low). Digesting capex surprise ($28.5B Q1 actual vs $19.3B est) and FOMC anxiety.
- Known concern (NOT new): Zacks flagged OpenAI reportedly >50% of backlog (concentration), BBB- credit downgrade, $70B capex FY2027, 4.7% dilution planned. These are priced in pre-earnings and explain the muted post-beat reaction.
- ⚠️ If ORCL opens Monday below $149.37 → STOP HIT, sell immediately (market order, no hesitation).
- If ORCL opens above $155 → consider trailing stop to $151–$152.

BE ($275.74 close, stop $266.12 — wide $9.62 buffer):
- Thesis very strong: ORCL CEO named BE fuel cells for NM data center (direct revenue catalyst, confirmed on Q1 FY27 call). S&P 500 inclusion Sep 21 (passive fund buying ongoing). Zacks #1 Strong Buy (104.3% projected 2026 revenue growth, 38% LT earnings growth, $20B backlog). Clean energy is NOT rate-sensitive — best FOMC insulation of the three positions.
- If BE opens above $279.49 (2% above $273.91 entry) → trail stop to $272–$273.
- TP $288.50. If opening near TP, evaluate partial take vs. holding for S&P inclusion.

ATEC ($10.47 close, stop $9.96 BREAKEVEN — RISK-FREE):
- Thesis: CEO Patrick Miles Form 4 confirmed 115,000 shares at $8.81 avg on Sep 10 ($1.01M). UBS Buy PT $16 (+52% upside from close). Health/medtech is least macro-sensitive of the three.
- Context: Old securities lawsuits (May 2026, Q1 miss) are background. CEO bought AFTER investigations — insider confidence signal. Not a new headwind.
- If ATEC opens at or above $10.50 → immediately trail stop to $10.05–$10.10.
- TP $11.28 (+7.7% from $10.47 close).

SECTOR MIX:
- Tech (ORCL): ~44.7% of account — AT SECTOR CAP. No new tech positions regardless of buying power.
- Clean energy (BE): ~19.7% of account.
- Healthcare/medtech (ATEC): ~10.3% of account.

MACRO AT CLOSE Sep 11:
- SPY $764.90 (+0.93%), QQQ $715.68 (+0.99%) — positive Friday close into FOMC weekend
- CPI Aug: +0.4% MoM in-line; core +0.3% (slightly hot vs +0.2% est)
- Michigan Consumer Sentiment Sep prelim: 47.8 (second-lowest reading ever) — extreme consumer pessimism
- WTI oil: −2.8% to ~$99.63 (pullback from $102, helpful for inflation path)
- FOMC Sep 15–16: hike odds ~86–90%; decision Wed Sep 16 at 2 PM ET

BUYING POWER AT MONDAY OPEN:
- Settled cash: $219.09 (fully settled — no unsettled funds)
- Effective headroom to 75% cap: ~$1.74 — NO new buys unless a position stops out first
- If ORCL stops out → frees ~$389 → use in non-tech only (tech sector at cap regardless)
- If BE stops out → frees ~$172 → evaluate; tech still blocked by ORCL
- If ATEC stops out → frees ~$90 → very limited room opens

DO NOT RE-ENTER (standing bans — carry forward to Monday):
META, AVAV (stopped Sep 10 — do not re-enter Monday Sep 14)
SNDK (stopped Sep 10 12PM), MU (stopped Sep 10 12PM), GLW (stopped Sep 10 9:30AM), COHR (stopped Sep 10 9:30AM), ALAB (stopped Sep 10 9:30AM), CRM (stopped Sep 1), DG (stopped Aug 28), VEEV/MRK/ANF (stopped Aug 27), TGT (stopped Aug 26), FOXA (stopped Aug 18). WDAY, MRVL, ADSK, S, YEXT, ESTC, CNXC, ASTS, HPE, AVGO, MGNI, GTLB.
VRNS: M&A binary (Proofpoint/Thoma Bravo) STILL PENDING — DO NOT ENTER.
SWKS: Pending acquisition of QRVO — M&A binary, hard disqualifier.
QRVO: Target of SWKS acquisition — hard disqualifier.
ODD, CSR: Hard disqualifiers (see prior notes).
ADBE: CEO transition (Narayen → Chakravarthy Dec 1) — thesis broken, do not enter.
ACVA: Copart acquisition $10.50/sh DEAL CONFIRMED Sep 11 — hard disqualifier.
RH: BofA cut to Underperform $114. Do not enter.
RDDT: No fresh catalyst since CPI in-line Sep 11. Skip unless major new development.

CATALYST WATCH LIST — for 10 AM agent Monday Sep 14, 2026:
| Ticker | Catalyst | Timing | Direction Bias | Risk |
|--------|----------|--------|----------------|------|
| FEIM | Q1 FY26 earnings beat (+173% EPS vs est, rev $23.5M vs $18.2M est +29%); stock +30.7% Sep 11; market cap ~$679M (confirmed >$500M) | Continuation Mon Sep 14 (beat reported AH Sep 10, ran intraday Sep 11) | Bullish continuation if holds above Sep 11 close, profit-taking risk after 30%+ single-day run | MEDIUM — require: (1) buying power open, (2) VWAP reclaim + relVol ≥1.5x Monday morning, (3) catalyst qualifies as brand-new dated event (exception to 20%-in-5-days rule applies) |

---
CRITICAL NOTES FOR 7 AM / 10 AM AGENT (Tue Sep 9, 2026 — first day after Labor Day weekend):

⚠️ LABOR DAY 3-DAY GAP: Mon Sep 7 market CLOSED. Positions SNDK and MU held Fri 3:30 PM → Tue 9:30 AM open.

MACRO AT CLOSE Sep 4:
- SPY: $769.65 (−0.46% day). QQQ: $717.70 (+0.004%). Normal regime — tech near-flat.
- Fed Gov. Waller (Sep 4 afternoon): dovish — "maintain status quo at September FOMC unless surprise inflation." Reduces near-term rate hike risk vs. morning's 51% pricing.
- 10Y yield: ~4.77% (easing from 4.82%). VIX: 14.32 (−5.8%). Risk sentiment improving into close.
- NFP Aug: 162K vs 56K expected — hot jobs print. Fed hike odds now 51% (up from morning). Next tests: CPI Sep 11, FOMC Sep 16.
- Semiconductor sector: dominant theme today — SNDK +10.1%, MU +4.75%, KLAC +6.7%. AI NAND demand narrative intact.

POSITION STATUS AT CLOSE:
1. SNDK ($1,656.69 entry, stop $1,665.00, TP $1,805.19 | ~$1,711 at 3:15 PM):
   - Day P&L: +$5.65 unrealized (+3.36%). Stop gap: 2.7% from close — within Labor Day guideline. Trade risk-free (stop > breakeven).
   - If SNDK opens below $1,665.00 at Tue Sep 9 open → sell immediately.
   - If SNDK opens above $1,720+ → consider trailing stop to $1,700+ at 10 AM.
   - Thesis: no earnings tonight or BMO Sep 9. Q4 FY26 beat intact. AI NAND narrative = strongest position.

2. MU ($990.94 entry, stop $969.00, TP $1,034.13 | ~$1,003 at 3:15 PM):
   - Day P&L: +$2.09 unrealized (+1.24%). Stop gap: 3.4% from close — at Labor Day guideline.
   - If MU opens below $969.00 at Tue Sep 9 open → sell immediately.
   - If MU opens above $1,015 → consider trailing stop to $985 at 10 AM.
   - Thesis: no earnings tonight or BMO Sep 9. Sep 30 earnings = 25 days away. AI HBM4 demand intact.

DO NOT RE-ENTER:
CRM (stopped Sep 1), DG (stopped Aug 28), VEEV/MRK/ANF (stopped Aug 27), TGT (stopped Aug 26), FOXA (stopped Aug 18). WDAY, MRVL, ADSK, S, YEXT, ESTC, CNXC, ASTS, HPE, AVGO, MGNI, GTLB.
DELL (closed today — discretionary; can re-enter Tue Sep 9 if above VWAP with volume + rate hike odds not worsening).
KLAC (closed today — discretionary; can re-enter Tue Sep 9 if thesis strengthens; no company-specific catalyst yet).
VRNS: M&A binary event STILL PENDING — DO NOT ENTER until Proofpoint/Thoma Bravo deal resolves.

Catalyst watch list for Tue Sep 9:
CBRS | CS-4 AI accelerator (Sep Q GA), 165 MW Finland data center expansion | Tue Sep 9 open continuation | Bullish | MEDIUM (require stop ≤8% from entry at 10 AM; if in top 25% and vol confirms → HIGH conviction entry)
WDC | Q4 FY26 beat + AI storage multi-year contracts; Kioxia merger discussions | Tue Sep 9 open | Bullish / M&A risk | MEDIUM-HIGH (check weekend deal news first; if no deal update → treat as priority watchlist)
UCTT | AI fab supply chain recovery, Q2 beat (rev +24% YoY), Q3 guide $700M-$750M | Tue Sep 9 | Bullish conditional | MEDIUM (require stop ≤5% and in top 25% — downtrend from $144 ATH requires confirmation)
ALAB | AI connectivity (NVDA deal tailwind), confirmed catalyst — intraday vol still disqualifying | Tue Sep 9 | Bullish | MEDIUM (check intraday low vs entry; if ≤8% → eligible)
VRNS | M&A binary (Proofpoint/Thoma Bravo) STILL PENDING | Unknown | Binary ±15% | HIGH RISK — DO NOT ENTER without deal resolution
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