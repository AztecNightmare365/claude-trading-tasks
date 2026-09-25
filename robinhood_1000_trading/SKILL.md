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

**7:00 AM ET 2026-09-25.** Live sync ••••6616: 3 positions — QCOM, RVMD, ADPT — exact match to 3:15 PM Sep 24 handoff.

**QCOM ON TRACK** | PM $195.64 (+0.71% vs $194.26 close; +0.53% vs $194.60 entry) | stop $179.25 (−8.4%) | TP $226.05 | PickNik Robotics acquisition announced overnight (robotics AI software; additive to agentic thesis, not a thesis break); CFO: shares "well-priced" after Amazon deal.

**RVMD ON TRACK** | PM $201.00 (+0.57% vs $199.86 close; +0.90% vs $199.20 entry) | stop $189.84 (−5.5%) | TP $217.93 | Goldman Sachs reiterated Buy 4:50 AM ET Sep 25 — overnight reinforcement of analyst_upgrade catalyst.

**ADPT ON TRACK** | PM $29.57 (flat vs $29.57 close; +0.72% vs $29.36 entry) | stop $27.51 (−6.9%) | TP $33.06 | No overnight news; BTIG thesis intact. PM bid/ask $29.26/$30.00 (2.5% spread) — thin but normal for small-cap biotech.

**Pre-market sells placed:** NONE.

**Catalyst watch:**
- COST: Q4 FY2026 AH Sep 24 → CONFIRMED — FLAT/DOWN | Sales +11.3% YoY ($93.9B net) beat; stock slipped post-release. Awareness only — NOT an actionable entry.

**Macro:**
- Futures mildly positive: S&P 500 +0.3%, Nasdaq-100 +0.5%, DJIA +0.2%.
- Econ data today: Durable Goods 8:30 AM ET; Michigan Consumer Sentiment (final) 10:00 AM ET.
- 10-yr yield ~5.11% headwind persists; no new Fed commentary overnight.
- SPY PM +0.33%, QQQ PM +0.60% — slight positive tone.

**SUMMARY:** 3 ON TRACK (QCOM/RVMD/ADPT), 0 flagged, 0 pre-market sells; COST CONFIRMED-FLAT/DOWN. Email: NOT SENT.

---

## OPEN REACTION UPDATE
<!-- Written by the 9:30 AM open reaction agent. Replaced (not appended) each run. -->

**9:30 AM ET 2026-09-25.** No PRE-MARKET BRIEF (retired); used 7 AM overnight brief + live open prices.

**Sells executed: NONE.** All 3 positions above stop at open.

**Catalyst entries: NONE.** COST CONFIRMED-FLAT/DOWN — do not enter; pass to 10 AM agent.

**Portfolio sync:** 3 positions live — QCOM 0.428056 sh @ $194.60, RVMD 0.752996 sh @ $199.20, ADPT 4.087207 sh @ $29.36 — exact match to handoff. 0 manual adoptions.

**SPY** $768.03 (+0.11%), **QQQ** $742.27 (+0.16%) — NORMAL REGIME.

**QCOM open:** first-bar open $195.00 / low $194.53 / close $195.12; current $195.43 (+0.43% vs $194.60 entry) | stop $179.25 (8.3% cushion) | TP $226.05 | HELD ✓

**RVMD open:** first-bar open $200.23 / low $198.03 / close $198.03; current $198.03 (−0.59% vs $199.20 entry) | stop $189.84 (4.1% cushion) | TP $217.93 | Faded from open high $200.87; Goldman Buy thesis intact; above stop | HELD ✓

**ADPT open:** first-bar open $29.73 / low $29.60 / close $29.76; current $29.76 (+1.36% vs $29.36 entry) | stop $27.51 (7.6% cushion) | TP $33.06 | HELD ✓

**Status:** 0 stop/TP sells, 0 catalyst entries, 3 positions open for 10 AM (QCOM / RVMD / ADPT).

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-09-19. Based on 66 closed trades. -->

MODE: AGGRESSIVE (owner-set 2026-09-03). Trade actively; do NOT sit in cash when qualifying candidates exist. The insights below are scoring/sizing preferences, NOT participation gates.

OVERALL: Win rate 37.9%, profit factor 0.95, net P&L -$9.33

SCORING / SIZING PREFERENCES (rank & size by these — never skip a session over them):
1. Monday entries: 6/8 = 75.0% WR, avg +$7.01/trade — give Monday setups a scoring boost; size at HIGH tier when all other criteria met. (N=8)
2. analyst_upgrade catalyst: 4/7 = 57.1% WR — best catalyst type by win rate; rank highest; size at HIGH tier; take all qualifying analyst_upgrade setups. (N=7; promoted from #6 as sample grew)
3. Tuesday entries: 9/15 = 60.0% WR, avg +$0.49/trade — strong day; score at HIGH tier. Note: one ORCL catalyst_watch trade (-$29.56) depressed the Tuesday average; core Tue scanner/manual wins (MU +$7.75, SNDK +$14.24, PLTR +$7.90) anchor the strength. (N=15)
4. Manual (conviction) entries: 8/16 = 50.0% WR, net +$12.68 — size at HIGH tier when user or agent flags a high-conviction catalyst. (N=16)
5. 3:15PM session: 7/14 = 50.0% WR, net +$23.45 — tied-best win rate and best net P&L of any session; size at STANDARD-HIGH for overnight holds with intact thesis; FPS (+$28.37), PLTR (+$7.90), and CRM (+$5.71) anchor this session's positive expected value. Watch overnight tail risk (consumer, high-vol). (N=14)
6. Earnings_beat + explicit guidance raise in mega-cap tech: AMZN + PLTR ×3 = $58.37 from 4 trades — 45% of all gross wins. Prioritize confirmed-raise tech beats; size at HIGH tier. (N=4 qualifying)
7. 10AM session: 16/41 = 39.0% WR, net +$30.76 — most active session; best absolute net P&L; apply normal scoring. (N=41)
8. earnings_beat catalyst overall: 13/32 = 40.6% WR — most data; score above sector_momentum and "other". (N=32)
9. Tech sector: 17/41 = 41.5% WR — dominant sector with most data; score tech above equal-quality non-tech setups. (N=41)
10. sector_momentum catalyst: 4/13 = 30.8% WR — weakest repeating catalyst. HARD REQUIREMENT (permanent risk rail — see STILL IN FORCE): must show relative volume >=1.5x AND price above VWAP before entry. When both are present, still start at LOW tier unless paired with manual conviction, tech sector, or Mon/Tue day. (N=13)

SIZE-DOWN (don't skip — just take smaller): catalyst_watch entry path (0/7 = 0.0% WR, -$49.05 net — all 7 catalyst_watch entries have lost, including ORCL -$29.56 on Sep 15; size at MINIMUM tier; hard $3 dollar-risk cap applies; biggest mistake pattern in the log — this path has never won). Thursday entries (4/22 = 18.2% WR, net -$52.52 — worst day; start at LOW tier, not HIGH; NEVER stack multiple new Thursday entries in same sector; Sep 10 Thu produced 7 stops in one day for -$24.56 total). Industrial sector (2/7 = 28.6% WR — LOW-STANDARD tier; FPS +$28.37 is encouraging but sample is small). Consumer overnight holds (2/5 = 40% WR but ANF -$10.48, DG -$10.08, KO -$4.55 are three of the account's largest single losses — LOW tier for any overnight consumer hold). 12PM session (2/9 = 22.2% WR, avg -$2.70/trade — size ~20% smaller; never re-enter a ticker already stopped or traded same day).
LEAN INTO (rank highest, size larger): Manual tech entries on confirmed earnings beat + raised guidance — AMZN (+$21.30) + PLTR ×3 (+$37.07) = $58.37 from 4 trades, 45% of all gross wins. Pattern: large-cap tech, explicit guidance raise confirmed, high-conviction entry. No other trade category approaches this dollar contribution. Also lean into analyst_upgrade catalyst (4/7 = 57.1% WR) and 3:15PM overnight entries with intact thesis (50% WR, net +$23.45, best session by net P&L).

STILL IN FORCE (risk rails — never weaken): per-trade stop-losses, dollar-risk sizing, 25% single-name cap, 75% portfolio cap, sector cap (max 2 open positions / 40% of account value in one sector at a time — see each session's Step 3/4), sector_momentum-catalyst entries hard-gated on relative volume >=1.5x AND price above VWAP (not a sizing-only preference), hard disqualifiers for pending binary events (FDA/M&A/clinical/court) and same-day earnings.

RAW STATS:
- Best catalyst: analyst_upgrade (57.1% WR, N=7); earnings_beat (40.6% WR, N=32, best absolute $ contribution)
- Best sector: healthcare (50.0% WR, N=6); tech (41.5% WR, N=41, most data)
- Best session to open: 3:15PM (50.0% WR, N=14); best by net $: 10AM (+$30.76, N=41)
- Stop triggered rate: 60.6% of trades (40/66)
- TP hit rate: 12.1% of trades (8/66)
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-09-24 (~3:27 PM ET — 3:15 PM session complete)

Open positions held overnight: **3 (QCOM + RVMD + ADPT)**

⚠️ ALL STOPS ARE MENTAL — no standing stop orders in Robinhood (fractional shares).

| Ticker | Shares | Entry Price (actual fill) | Stop | TP | Overnight | Thesis (1 line) | Entry Type |
|--------|--------|---------------------------|------|----|-----------|-----------------|------------|
| QCOM | 0.428056 | $194.60 | $179.25 | $226.05 | YES (held from Sep 23) | Apple patent license renewed Sep 24 (Apr 1, 2027 effective); Snapdragon Summit "Agentic PC Has Arrived" confirmed; Trump-Xi truce extended 2 months; macro headwinds NOT a thesis break | scanner |
| RVMD | 0.752996 | $199.2042 | $189.84 | $217.93 | YES (opened Sep 24 3:27 PM) | Goldman Sachs Buy reinitiated Sep 24 ($267 target = +34% implied upside); surged $193→$200 in final 70 min on news with massive volume; no binary events until Nov 4 earnings | scanner |
| ADPT | 4.087207 | $29.3599 | $27.51 | $33.06 | YES (opened Sep 24 3:27 PM) | BTIG raised target $25→$34 (+36%) Sep 24, keeps Buy; closed at new intraday highs with late-day volume surge; no known binary events pending | scanner |

3:15 PM session actions:
- P SOLD (stop_loss): 0.926814 sh @ $123.6501 (−4.50% / −$5.40). Stop $126.25 triggered; intraday price $124.23 at 3:15 PM scan → filled $123.65. Entry was 12PM scanner (S&P 500 inclusion + FAM guidance raise).
- QCOM HELD: ~$194.12 (−0.25% vs $194.60 entry). Late-day bars trending up ($193.99→$194.62 in final 15 min). Apple patent license strengthens thesis. Trail threshold $198.49 NOT triggered — stop unchanged at $179.25.
- RVMD BOUGHT: $150 market order @ $199.2042 avg (0.752996 shares). Goldman Sachs Buy reinitiation ($267 PT) drove massive late-day surge; analyst_upgrade catalyst (57.1% WR best in system).
- ADPT BOUGHT: $120 market order @ $29.3599 avg (4.087207 shares). BTIG target hike ($25→$34) Sep 24. Closing at new day highs with volume.
- SPY: $767.44 (−0.05% vs prior close) — NORMAL REGIME. QQQ: $740.43 (−0.10%).
- NBIS: SKIPPED — Michael Burry active short (doubled down Sep 22) + whale puts + tech not recovered; handoff condition "if tech recovers" not met.
- GDDY: SKIPPED — M&A binary (Gen Digital early-stage takeover approach unconfirmed; hard disqualifier).
- BLLN/WRBY/TWST: SKIPPED — intraday low >8% below entry (11.6%, 14.2%, 13.1% respectively); too volatile per hard rule.

Settled cash: $373.52
Unsettled (P proceeds, settle Sep 25): $114.57
Settled tomorrow AM (Sep 25): ~$488.09
Total account value: ~$841.18
Portfolio invested: ~42.0% (QCOM ~$83 + RVMD ~$150 + ADPT ~$120 ≈ $353 / $841)

---

NOTES FOR 7 AM / 10 AM AGENT (Fri Sep 25, 2026):

⚠️ QCOM — OVERNIGHT HOLD (Electronic Technology/Semiconductor; stop $179.25):
- 3:15 PM close: ~$194.12 (−0.25% vs $194.60 entry; −1.58% vs $197.24 Sep 23 close).
- Stop $179.25 NOT triggered. TP $226.05 NOT triggered. Trail threshold $198.49 NOT triggered.
- Thesis INTACT + STRENGTHENED: Apple patent license renewed (7:50 AM Sep 24, effective Apr 1, 2027). Snapdragon Summit "Agentic PC Has Arrived" confirmed. Trump-Xi truce extended 2 months to Jan 10.
- No earnings until Q2 FY2027 (~November 2026). No binary events.
- ⚠️ FRIDAY: Position going into Friday. Assess at 10 AM carefully — any hold past 3:15 PM Fri is over the weekend.

⚠️ RVMD — NEW OVERNIGHT (Healthcare/Biotech; stop $189.84):
- Entry: $199.2042, 0.752996 shares (order ID: 6ab57998-b603-419c-8ca0-5f044855aa1b)
- Stop: $189.84 (Sep 24 intraday low; −4.69% from entry)
- TP: $217.93 (+9.38%; 2:1 R/R ✓)
- Catalyst: Goldman Sachs reinitiated Buy on Sep 24 with $267 price target (vs $199 = +34% upside). Stock ran $193→$200 in final 70 min on volume spike (127K+ shares/bar at 18:45 UTC).
- No earnings until Nov 4, 2026. Pipeline: RAS(ON) inhibitors daraxonrasib + zoldonrasib; no imminent Phase 3 readout before earnings.
- 10 AM: check for gap continuation; any pre-market follow-on analyst coverage.

⚠️ ADPT — NEW OVERNIGHT (Healthcare/Biotech; stop $27.51):
- Entry: $29.3599, 4.087207 shares (order ID: 6ab5799a-5a3e-4992-8a21-2d5b41417b84)
- Stop: $27.51 (Sep 24 intraday low; −6.30% from entry)
- TP: $33.06 (+12.60%; 2:1 R/R ✓)
- Catalyst: BTIG raised price target to $34 from $25 (+36% increase), maintains Buy. Closed at new intraday highs ($29.37) with significant late-day volume (59K at 18:45 UTC, 55K at 19:05 UTC).
- No known binary events. Q3 2026 earnings expected late October/early November.
- 10 AM: check pre-market; any follow-on coverage or healthcare sector momentum.

SECTOR CAP STATUS (entering Fri Sep 25):
- Electronic Technology/Tech (QCOM): 1 position. Room for 1 more.
- Healthcare (RVMD + ADPT): 2 positions. AT CAP — no more healthcare buys until one exits.
- All other sectors: 0 positions. Room for 2 each.

BUYING POWER (Sep 25, 10 AM):
- Settled cash tomorrow: ~$488.09 ($373.52 today's settled + $114.57 P proceeds settling Sep 25)
- 75% cap: $841 × 0.75 = $630.75; minus QCOM ~$83 minus RVMD ~$150 minus ADPT ~$120 = ~$278 available to invest
- Effective buyable: ~$278 (75% cap is the constraint)
- ⚠️ FRIDAY: New overnight positions added Fri go over the weekend. Apply extra caution and require very strong catalysts for any new Friday buys.

SAME-DAY RULE (Sep 25): No same-day bans. P stopped today at 3:15 PM — not banned tomorrow (stop_loss doesn't impose next-day re-entry ban per SKILL.md logic; the same-day ban only applies when a position is stopped intraday, not by the 3:15 PM agent itself).

DO NOT RE-ENTER (standing bans — carry forward + new Sep 24 additions):
ATEC (Sep 16), ORCL (Sep 15), BE (Sep 15), META, AVAV (Sep 10), SNDK (Sep 10 12PM), MU (Sep 10 12PM), GLW (Sep 10 9:30AM), COHR (Sep 10 9:30AM), ALAB (Sep 10 9:30AM), CRM (Sep 1), DG (Aug 28), VEEV/MRK/ANF (Aug 27), TGT (Aug 26), FOXA (Aug 18). WDAY, MRVL, ADSK, S, YEXT, ESTC, CNXC, ASTS, HPE, AVGO, MGNI, GTLB.
INTC: permanent ban (stopped twice Sep 18 & Sep 21).
NUAI: permanent ban (stopped Sep 22 9:30 AM).
VRNS: M&A binary (Proofpoint/Thoma Bravo) STILL PENDING.
SWKS: Pending acquisition of QRVO — M&A binary, hard disqualifier.
QRVO: Target of SWKS acquisition — hard disqualifier.
VAL: Pending merger with RIG (Transocean) — M&A binary, hard disqualifier.
ODD, CSR, ADBE, ACVA, RH, RDDT: Standing bans.
LUXE: Earnings miss BMO Sep 16 — banned.
AMRX: Pending acquisition of Kashiv BioSciences — M&A binary, hard disqualifier.
BBNX: Dilutive $150M secondary offering — skip.
GNRC: Hard-fading sell-the-news — do not chase.
WBD: Pending M&A binary (Paramount Skydance acquiring WBD) — hard disqualifier.
PSKY: Target in WBD/Paramount Skydance deal — hard disqualifier.
CIEN: Sold Sep 21 at TP — no re-entry ban.
TTAN: Active securities fraud investigation (BFA Law Sep 21) — skip.
GRAL: FDA formal approval pending early 2027 — HARD DISQUALIFIER (AdCom 7-2 favorable but FDA decision not until early 2027).
VKTX: Phase 2 positive (Sep 23); Phase 3 still pending → skip until Phase 3 complete.
MSTR/INSP/SHOP: Bans from Sep 23 expired. Re-entry allowed.
IONQ/OMER: Sold Sep 23 (discretionary). No permanent ban; re-entry allowed.
FRVO: Securities fraud investigation notice (Sep 23 GlobeNewswire) — skip.
SNX: Sell-the-news Sep 24 (−11.5%) — no entry today; ban expires Sep 25.
DNA: Declining fundamentals (revenue −48% YoY), no fresh catalyst — skip.
GDDY: ⚠️ NEW Sep 24 — M&A binary (Gen Digital early-stage takeover approach; unconfirmed; could resolve overnight) — hard disqualifier until deal confirmed or denied.

Catalyst watch list for Sep 25, 2026:
COST | Q4 FY2026 AH earnings | AH Sep 24 (results now available) | Pre-announced strong sales (+11.3% YoY, $93.9B net) but stock reportedly slipped post-release | MEDIUM (awareness only — consumer macro signal; NOT an actionable 10 AM entry)

No additional BMO Sep 25 catalyst entries identified (light earnings day). No FDA PDUFA dates for Sep 25 identified.

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