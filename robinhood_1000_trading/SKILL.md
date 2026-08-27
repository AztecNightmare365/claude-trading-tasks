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

**7:00 AM ET 2026-08-27.** Live-sync ••••6616: 2 positions — MRK + ANF. Exact match 3:15 PM Aug 26 handoff.

- MRK $152.00 pre-mkt (−0.72% vs $153.10 close; −0.78% vs entry $153.20). Stop $150.00 — $2.00 away (1.32%). **ON TRACK.** Broad rotation into tech on NVDA beat; no MRK-specific adverse news overnight. Thesis (Phase 3 INTerpath-001 melanoma) intact.
- ANF $145.16 pre-mkt (−1.75% vs $147.75 close; −2.52% vs entry $148.9168). Stop $143.91 — $1.25 away (0.86%). **ON TRACK.** No adverse overnight news. Normal digestion after +36% day; consumer thesis (Q2 EPS $4.17 beat + raised guidance) intact. ⚠ PRIORITY: stop razor-thin — 10 AM check ANF first; if ≤$143.91 at open → sell immediately.

Pre-market sells: **NONE.**

**Catalyst watch:**
- DG: +8.72% pre-mkt ($133.50 vs $122.78) — CONFIRMED GAP UP. Q2 BMO; strong beat implied by gap. 10 AM: enter if still trending at open, standard 3% bar applies.
- BURL: −1.27% ($310.00 vs $313.99) — CONFIRMED FLAT/DOWN. Beat ests but market disappointed; skip.
- WDC: +3.86% ($487.00 vs $468.88) — CONFIRMED GAP UP. NVDA beat + UP 6.5% unlocks this. 10 AM viable.
- SNDK: +4.36% ($1,564.74 vs $1,499.37) — CONFIRMED GAP UP (priority sector). 10 AM viable.
- ANET: +1.80% ($205.89 vs $202.25) — CONFIRMED partial gap. 10 AM: reconfirm still trending before entry.

**Macro:**
- NVDA +6.51% pre-mkt ($223.31): EPS $2.22 beat, revenue $96.2B (+106% YoY), Q3 guide $108B vs $104.2B est; AWS buying 2M GPUs; Hugging Face acquisition $12.9B. Full bull case confirmed.
- SPY +0.41% ($769.21), QQQ +1.01% ($718.54) — strong risk-on; NVDA-driven tech rally.
- Jackson Hole Fri Aug 28 (Warsh keynote): major macro risk tomorrow — avoid new rate-sensitive overnight positions tonight.

SUMMARY: 2 ON TRACK; 0 flagged; 0 pre-market sells; 4 catalyst tickers confirmed gap-up (DG, WDC, SNDK, ANET partial) + 1 flat/down (BURL — skip).

---

## OPEN REACTION UPDATE
<!-- Written by the 9:30 AM open reaction agent. Replaced (not appended) each run. -->

**9:30 AM ET 2026-08-27.** No PRE-MARKET BRIEF (retired); used 7 AM brief + live open prices.

Sells:
- MRK STOP: open $149.51 (−2.34% vs $153.10 close; −2.41% vs entry $153.20). Stop $150.00 breached by $0.49. SOLD 1.631896 sh. Est. P&L: −2.41% / −$6.02.
- ANF STOP: open $143.00 (−3.21% vs $147.75 close; −3.97% vs entry $148.9168). Stop $143.91 breached by $0.91. SOLD 1.770653 sh. Est. P&L: −3.97% / −$10.48.

Catalyst entries: NONE.
- DG open $127.15 (+3.55%): first bar fading (open $126.94 → close $126.12, low $124.50) → pass to 10 AM.
- SNDK open $1,553.38 (+3.60%): first bar fading (open $1,547.95 → close $1,537.06) → pass to 10 AM.
- WDC open $472.69 (+0.81%): below 1% catalyst threshold → pass to 10 AM.
- ANET open $201.77 (−0.24%): below prior close → skip.

Portfolio sync: 2 positions matched handoff exactly (MRK + ANF). Both stopped out. No manual adoptions.

SPY $768.77 (+0.35%), QQQ $718.45 (+0.99%) — NORMAL REGIME. NVDA beat confirmed, risk-on open.

Status: 2 stop-loss sells, 0 catalyst entries, 0 positions open for 10 AM. $403.69 settled cash available.

---

## PRE-MARKET BRIEF

_Retired 2026-07-29: the 9:15 AM pre-market routine is disabled. This block is no longer written. Use the 7 AM OVERNIGHT BRIEF plus live quotes._

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-08-22. Based on 39 closed trades. -->

OVERALL: Win rate 46.2% (18/39), profit factor 1.76, net P&L +$42.60 (avg win +5.33%, avg loss -2.10%)

TOP RULES (read before every session):
1. catalyst_watch early-entry path is 0/4, -$10.03 net (BKR, SLB, KO, MA — all losses) — never use catalyst_watch on earnings_beat catalysts. All four used the 1-2% threshold before crowd confirmation and all four lost. Until the path produces at least one win, require an additional confirming signal (price holding VWAP, rel vol ≥1.5×) before any catalyst_watch entry. (N=4)
2. 12PM entries remain the worst session: 2/6 = 33.3% win rate, -$15.21 net (-$14.73 from AMD re-entry alone). Significantly raise the bar for midday buys — only trade at 12PM if the catalyst is fresh and materially stronger than what 10AM would accept. (N=6)
3. Manual entries lead all entry types: 7/11 = 63.6% win rate, +$35.24 net vs scanner 11/24 = 45.8%, +$17.39 net. High-conviction manual entries on confirmed catalysts are the account's profit engine. Do not reflexively dismiss manual theses. (N=11 manual, N=24 scanner)
4. Monday-Tuesday are the productive days: 11/16 = 68.75% win rate, +$52.13 net. Wed-Fri: 7/23 = 30.4%, -$9.53 net. Raise the bar sharply on Wednesday through Friday — Thursday (36.4%, N=11) and Friday (20%, N=5) are the weakest individual days. (Mon-Tue N=16; Wed-Fri N=23)
5. Tech sector leads all others: 13/24 = 54.2% win rate, +$39.21 net. Financials sector: 0/3 = 0%, -$3.03 (GS, BLK, MA all losses). Industrial: 1/5 = 20%, near-breakeven. Continue weighting toward tech; skip financials unless thesis is exceptional. (N=24 tech, N=3 financials, N=5 industrial)
6. TP hit rate critically low: 12.8% (5/39) — far below >30% target. Winners are being closed too early. For earnings_beat + momentum tech trades up >5% intraday, hold past the first pullback and target TP at 8-12% rather than 3-4%. The 5 TP exits (AMZN, PLTR×2, SHOP, CRL) produced an outsized share of total account profit. (N=39)
7. Stop-triggered rate 46.2% (18/39) — improving from 48.5% at 33 trades but still above <40% target. When scanners return drought-grade setups (QCOM, AMAT, INTC, PAYC on consecutive weak days Aug 5-7), pass entirely — low-conviction entries hit stops at >80% rate. (N=39)
8. earnings_beat now 43.5% WR (10/23), up from 31.6% at 33 trades, driven by SHOP, CRL, PLTR(Aug 10) wins this week. Key discriminator: beat + guidance raise outperforms beat alone by a wide margin. CTAS, ALLE, HON, PAYC, TTMI — all beats without a guidance raise, all losses. Require confirmed guidance raise before assigning high-conviction tier. (N=23)
9. analyst_upgrade: 2/3 = 66.7% WR — best catalyst type by win rate, prioritize in screening. sector_momentum without a dated catalyst: 2/6 = 33.3% — require directional ETF confirmation (QQQ ≥+0.5%) before entering sector-momentum-only plays. (N=3 analyst_upgrade, N=6 sector_momentum)
10. 10AM session: 13/27 = 48.1% win rate, +$63.07 net (up from 39.1%/+$42.56 at 33 trades). 3:15PM entries: 3/5 = 60% WR on small sample. Protect morning dry powder for highest-conviction setups; only open later-session buys when the catalyst is clearly superior. (N=27 10AM, N=5 3:15PM)

AVOID: Re-entering a ticker already traded that day — AMD at 12PM (-$14.73, -9.82%) is the account's largest single loss, opened hours after the 10AM entry closed profitably (+$5.05). Never open a new position in a ticker already closed or exited that same trading day.

LEAN INTO: Manual tech entries on confirmed earnings beats with raised guidance — AMZN (+$21.30), PLTR Aug 3 (+$21.03), PLTR Aug 4 (+$7.90), PLTR Aug 10 (+$8.14) combine for +$58.37 across 4 trades, generating the bulk of all account profit. Scanner beats with guidance raise (SHOP +$3.99, CRL +$4.42) confirm the pattern extends to scanner entries when quality bar is met. The distinguishing feature is confirmed guidance raise plus fresh volume on entry — not just an earnings date on the calendar.

RAW STATS:
- Best catalyst: analyst_upgrade (66.7% win rate, N=3); by net dollar: earnings_beat (dominant — AMZN + 3× PLTR + SHOP + CRL)
- Best sector: tech (54.2% win rate, +$39.21 net, N=24); worst: financials (0%, -$3.03, N=3) and industrial (20%, N=5)
- Best session to open: 3:15PM (60% win rate, N=5, small sample); best by dollar net: 10AM (+$63.07, N=27)
- Stop triggered rate: 46.2% of trades (18/39) — improving but still ABOVE <40% TARGET
- TP hit rate: 12.8% of trades (5/39) — improving but still well below >30% TARGET
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-08-26 (~3:27 PM ET — 3:15 PM session complete)

Open positions held overnight (2 total):

- ⛔ SOLD BY 9:30 AM AGENT — stop_loss — do not re-enter. MRK: 1.631896 sh, entry $153.20, exit ~$149.51, est. P&L −2.41% / −$6.02.
  At 3:15 PM close: $153.265 (day: −2.03% from $156.45 prev close; +0.04% vs entry). Stop $3.265 away (2.13% cushion).
  Trail status: NOT eligible. Trail threshold +2% from entry = $156.26; close $153.265 below threshold. Stop unchanged at $150.00.
  Thesis: INTACT. Phase 3 mRNA-4157/V940 (intismeran + Keytruda) confirmed success in high-risk melanoma. Analyst PTs: MS $179, Wolfe $180, BofA $166, UBS $175, BMO $170. Today's pullback: broad market caution ahead of NVDA earnings AH tonight + Jackson Hole Thu Aug 28. Stock-specific thesis not impaired.
  entry_type: manual | sector: healthcare | catalyst: fda (Phase 3 trial readout + analyst upgrades)
  Overnight flag: YES — no MRK AH earnings. Healthcare less correlated with tech/AI. NVDA sell-the-news risk is real but MRK is insulated.

- ⛔ SOLD BY 9:30 AM AGENT — stop_loss — do not re-enter. ANF: 1.770653 sh, entry $148.9168, exit ~$143.00, est. P&L −3.97% / −$10.48.
  At fill: $148.9168 (+36.7% day from $108.90 prev close). Stop $5.007 away (3.36% below entry).
  Thesis: Q2 EPS $4.17 vs $1.98 est (+$2.19 beat = +111% above consensus) + full-year guidance raised. Dominant earnings catalyst confirmed. Rel vol 6.86x. Closed in top 25% of intraday range. No AH earnings tonight for ANF (reported this morning).
  entry_type: scanner | sector: consumer | catalyst: earnings_beat (with raised guidance)
  Overnight flag: YES — no ANF AH events tonight. Consumer sector move is independent of NVDA/tech. Fundamental catalyst (not macro correlation). Strong close (+35% confirmed, recovering from afternoon dip to end near $149).

Sells at 3:15 PM: NONE
- MRK stop $150.00 not triggered (close $153.265, cushion 2.13%).
- ANF: NEW ENTRY (3:26 PM fill, not a sell).

New buys at 3:15 PM:
- ANF: $263.68 market order filled at $148.9168 (1.770653 shares). HIGH conviction.
  Stop $143.91 (last-60-min low as of 3:15 PM, 3.36% below entry; within 5% volatility cap).
  TP $158.93 (2× stop distance from entry = $5.007 × 2 = $10.01 target gain).
  Dollar risk: 1.770653 × $5.007 = $8.86 (under HIGH tier $20 limit).
  All $263.68 settled cash deployed (HIGH tier priority, MEDIUM candidates cut per SKILL rules).

Settled cash remaining: $0.00 (fully deployed to ANF)
Unsettled: $403.69 (TGT T+1, settles Thu Aug 27) + ANF T+1 (settles Thu Aug 27 — cash from ANF sale would settle Fri Aug 28)
Total account value: ~$917.53 (MRK $250.16 + ANF $263.68 + unsettled cash $403.69)
Portfolio invested: ~55.9% ($513.84 of $917.53; well under 75% cap)

NOTES FOR 10 AM AGENT (Thu Aug 27, 2026):

1. ANF — PRIORITY HOLD CHECK (new entry, first overnight):
   Entry $148.9168. Stop $143.91 (HARD — execute immediately if ANF prints at or below $143.91).
   a) If ANF at/below $143.91 at open → sell market (1.770653 shares) immediately, no hesitation.
   b) If ANF ≥$156.50 and stable/rising → consider trailing stop to $148–$150 zone (near entry breakeven).
   c) If ANF between $143.92–$156.49 → hold with stop $143.91 as-is. TP $158.93.
   Today's catalyst: Q2 EPS $4.17 vs $1.98 est + guidance raised — highest quality earnings_beat setup. Consumer sector not correlated to NVDA tonight.
   Risk: broad market sell-off if NVDA disappoints + Jackson Hole Thu macro risk. ANF-specific thesis intact regardless.
   DO NOT RE-ENTER ANF if stopped (AVOID rule: same-day re-entry; see SKILL.md AVOID note).

2. MRK — HOLD CHECK:
   Stop $150.00 NOT triggered. Cushion 2.13% ($3.265 above stop).
   a) If MRK at/below $150.00 at open → sell market (1.631896 shares) immediately.
   b) If MRK ≥$156.26 and stable → trail stop to $152–$153 zone.
   c) If MRK between $150.01–$156.25 → hold with stop $150.00 as-is. TP $161.89.
   Jackson Hole Thu Aug 28 (Warsh keynote) = macro risk. Healthcare less rate-sensitive.
   NVDA tonight: healthcare more insulated from tech sell-the-news than other sectors.

3. NVDA OVERNIGHT RESULT — CRITICAL MACRO EVENT (know before anything else at 10 AM):
   NVDA reports ~4:20-4:30 PM ET today. Consensus: $92-93.5B revenue, EPS $2.09-2.13.
   SELL-THE-NEWS RISK: NVDA has fallen AH in 6 of the last 8 quarters despite beats. Multiple analysts publicly predicting a 5th consecutive post-earnings drop.
   - If NVDA beat + stock UP in AH: AI-adjacent tailwinds (ANET, WDC, SNDK, MU) — run normal 3% scanner criteria at 10 AM; watch these names for fresh gap-up entries. ANF and MRK largely unaffected.
   - If NVDA beat + stock DOWN (sell-the-news): avoid all new tech/AI overnight positions; broad market caution; protect both stops.
   - If NVDA miss: broad risk-off; avoid new tech positions; ANF (consumer) partially insulated; MRK (healthcare) most insulated.

4. CASH TOMORROW (Thu Aug 27):
   TGT T+1 settles: $403.69 becomes available at open Thu Aug 27.
   Total settled cash at 10 AM: ~$403.69 (assuming both positions held overnight).
   75% cap: $917.53 × 0.75 = $688.15; invested $513.84; available under cap = $174.31.
   Buyable at 10 AM Thu: min($403.69, $174.31) = $174.31 (cap-constrained, not cash-constrained).
   Note: if ANF or MRK is stopped overnight, portfolio value drops and cap/cash recalculate accordingly.
   DO NOT RE-ENTER TGT (stopped out today Aug 26, AVOID rule).
   DO NOT RE-ENTER FOXA (stopped Aug 18).

5. JACKSON HOLE THU AUG 28 (tomorrow, Warsh keynote):
   Major macro event tomorrow afternoon. Avoid new rate-sensitive overnight positions placed Thursday.
   MRK (healthcare) and ANF (consumer) relatively less rate-sensitive.
   At 3:15 PM Thu: evaluate whether to hold ANF/MRK through Jackson Hole or close to reduce macro risk.

6. SCANNER LANDSCAPE (Wed Aug 26 3:15 PM — context only):
   - Consumer surge: ANF +35% (in portfolio), URBN +7.98% (AH earnings tonight — AVOID), BBWI +7.25% (rel vol 1.01x, low conviction).
   - AI networking: ANET +6.41% (post-Q2-earnings continuation from early Aug; NVDA risk tonight — conditional play only).
   - Solar/clean energy: SEDG +9.03% (UBS Buy, FCC inverter ban; mixed broader consensus Hold ratings at $33-37).
   - Storage/memory: WDC +3.20% (debt buyback catalyst; NVDA AH risk tonight — enter at 10 AM Thu only if NVDA UP in AH).
   - Sector watchlist (SNDK, MU, INTC, AMAT, QCOM): None qualified today. QQQ +0.25% only, below 0.5% boost threshold.
   - SPY +0.15%, QQQ +0.25% at 3:15 PM. Normal regime.

7. TONIGHT AH EARNINGS (do NOT hold positions in these):
   NVDA (dominant), CRM, CRWD, SNPS, HPQ, Agilent (A), OKTA, VEEV, NTNX.
   SMTC also reporting AH tonight (confirmed Q2 results + guidance raise, +4% extended).

Catalyst watch list:
DG | earnings_beat expected | BMO tomorrow (Aug 27) | est EPS $1.99; consumer staples/value retail; defensive | MEDIUM
BURL | earnings | BMO tomorrow (Aug 27) | est EPS $1.98; discount retail; positive if beat+raise | MEDIUM
WDC | NVDA sector reaction (storage/memory) + debt_buyback catalyst | AH tonight (CONDITIONAL: only if NVDA beat AND stock UP in AH) | +3.2% own catalyst today; avoid if NVDA sell-the-news | HIGH
SNDK | NVDA sector reaction (priority watchlist) | AH tonight (CONDITIONAL: only if NVDA beat AND stock UP in AH) | +1.25% today; memory sector key beneficiary | HIGH
ANET | AI networking continuation + NVDA tailwind | AH tonight (CONDITIONAL: only if NVDA beat AND stock UP in AH) | +6.4% today on post-Q2 earnings momentum; $203 at close, making new highs | MEDIUM-HIGH
NOTE: Items WDC / SNDK / ANET — viable at 10 AM ONLY if NVDA stock itself traded UP significantly in AH (not just beat estimates). If NVDA sell-the-news (down despite beat) or miss → skip all three entirely and protect existing stops.
NOTE: Items DG / BURL — independent of NVDA. Enter at 10 AM only if earnings confirmed beat+raise AND stock trending up at 10 AM (not fading from open spike). Use standard 3% open-confirmation bar (not catalyst_watch 1-2% path).
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