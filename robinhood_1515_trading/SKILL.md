---
name: robinhood_1515_trading
description: Trading bot
---

Daily Momentum Trading Agent — 3:15 PM (Overnight Hold Strategy)

You are an autonomous momentum trading agent managing my Robinhood agentic cash account. This routine runs at 3:15 PM ET every trading day. Your primary job at this time is to decide what is worth holding overnight and what new positions to open with strong overnight potential. All positions entered at 3:15 PM are intended to be held until the 10:00 AM agent evaluates them the next morning.

Execute all steps in order, then place all orders simultaneously.

---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- NOT USED / VESTIGIAL. The active 3:15 PM handoff is written to robinhood_1000_trading/SKILL.md
     (see Step 8), which is where the 7 AM / 9:30 / 10 AM agents read it. The 3:15 PM agent in THIS
     file reads the "## HANDOFF FROM LAST 10 AM SESSION" block below, not this one. Left as an empty
     placeholder to avoid stale data misleading any reader. Cleared 2026-08-19. -->

_No content — see robinhood_1000_trading/SKILL.md for the live 3:15 PM handoff._

---

## HANDOFF FROM LAST 10 AM SESSION
<!-- This block is overwritten at the end of every 10 AM session and updated by the 12 PM reassessment agent. Read it before Step 1. -->

Last updated: 2026-08-26 (~12:00 PM ET — 12 PM reassessment complete)
Note: Routine executed post-market (quotes at 16:00 ET close); no new intraday orders placed.

Open positions (1 total):

- MRK: 1.631896 shares, entry $153.20 avg fill, stop-loss $150.00 (UNCHANGED), take-profit $161.89
  At 12 PM close Wed Aug 26: $153.36 (day: −1.98% from $156.45 prev close; +0.10% vs entry $153.20). Stop $3.36 away (2.20% cushion).
  Trail status: NOT eligible. Trail threshold +2.00% from entry = $156.26; close $153.36 below threshold. Stop unchanged at $150.00.
  Thesis: INTACT and strengthening. Phase 3 mRNA-4157/V940 (intismeran + Keytruda) confirmed success in high-risk melanoma. Analyst PTs: Morgan Stanley PT $179 (Overweight), Wolfe Research PT $180 (Outperform), BofA $166, UBS $175, BMO $170. Today's pullback: broad market caution ahead of NVDA earnings AH tonight + Jackson Hole Thu Aug 28. Stock-specific thesis is not impaired.
  entry_type: manual | sector: healthcare | catalyst: fda (Phase 3 trial readout + analyst upgrades)
  Overnight flag: YES — no MRK AH earnings. Healthcare less correlated with tech/AI. NVDA earnings result overnight is key macro swing; healthcare more insulated than tech if NVDA misses.

Sells at 12 PM: NONE
- MRK stop $150.00 not triggered (close $153.36, cushion 2.20%).
- No take-profit hit (TP $161.89 well above close).

New buys at 12 PM: NONE
- Market data at routine execution reflects 4:00 PM ET close — intraday order window had passed.
- Scanner results (Scan 1: 7 results, Scan 2: 15 results, 22 unique candidates screened):
  - ANF +40.7% ($153.25): Q2 EPS $4.17 vs $1.98 est (+$2.19 beat) + guidance raised ($13.10–$13.60). OUTSTANDING catalyst confirmed (earnings_beat + raised guidance). SKIPPED at 12 PM: 10 AM 30-min low $130.24 = 10.2% below any midday entry — far exceeds 4% stop cap. Market also closed when routine ran. → SEE NOTE 2 for 3:15 PM assessment.
  - SEDG +7.13% ($32.01): UBS upgrade to Buy (FCC inverter ban). Rel vol improved to 1.37x (from 0.45x at 10 AM). Close above $32.00 meets 10 AM criteria. BUT broader analyst consensus mixed-negative (Barclays $37 Hold, MS $35 EW, Deutsche Bank $33 Hold). SKIPPED: Wednesday headwind + mixed conviction + market closed. → SEE NOTE 3 for 3:15 PM assessment.
  - VCTR +5.52%: Financials sector (asset management). 0% WR historically (Insight #5). Skip.
  - BHVN +11.89% ($16.09): Biohaven biotech. August 10 earnings MISS (EPS -$0.91 vs -$0.76). Catalyst unclear — possible clinical news, binary event risk. Skip.
  - SMTC +8.22%: >15% two-day move, no fresh catalyst (hard disqualifier per 10 AM). Skip.
  - SMMT +6.62%: Clinical trial data released = confirmed binary event (hard disqualifier). Skip.
  - WDC +2.64% ($462.65): Convertible debt exchange ($191M, financial restructuring catalyst). Priority watchlist. Did not clear 3%+ bar independently; QQQ down so watchlist boost not applied. → SEE NOTE 4 for NVDA-catalyst overnight potential.
  - Others: low rel vol, ADR, illiquid, or earnings beat without guidance raise. All skipped.
  - Wednesday headwind (30.4% WR) applied as additional filter throughout.
  - Market regime: SPY −0.085% (normal/flat), QQQ −0.195% (normal). Regime gate NOT triggered.

Settled cash remaining: $263.68 (fully settled)
Unsettled: $403.69 (TGT T+1 proceeds — settles Thu Aug 27)
Total account value: ~$917.63 (MRK $250.26 + settled $263.68 + unsettled $403.69)
Portfolio invested: ~27.3% (MRK only; well below 75% cap)

NOTES FOR 3:15 PM AGENT (Wed Aug 26, 2026):

1. MRK — HOLD CHECK (updated from 12 PM close):
   Close: $153.36 (+0.10% vs entry; −1.98% from prev close). Stop $150.00 ($3.36 / 2.20% away). Thesis strengthening with new analyst targets ($179–$180).
   a) If MRK at/below $150.00 → sell market (1.631896 shares) immediately, no hesitation.
   b) If MRK ≥ $156.26 and stable/rising → trail stop to $152–$153 zone.
   c) If MRK between $150.01–$156.25 → hold with stop $150.00 as-is. TP $161.89.
   NVDA result AH tonight: if beats strongly → risk-on can lift MRK overnight. If miss → MRK (healthcare) more insulated than tech.

2. ANF REVISIT AT 3:15 PM — KEY CANDIDATE: Closed $153.25 (+40.7%). Dominant story today.
   Catalyst confirmed: Q2 EPS $4.17 vs $1.98 est + guidance raised — earnings_beat + raised guidance (HIGH conviction criteria).
   For overnight entry: check if the LAST-HOUR intraday low (3:00–3:15 PM window) is within 5% of $153.25. Do NOT use the 10 AM low of $130.24 — use the fresh last-60-minute low only.
   If last-hour low ≥ $145.59 (= $153.25 × 0.95): stop cap met → entry viable. Stop at last-hour low.
   Strong close at $153.25 (well above 10 AM levels of $130) suggests consolidation. Consumer sector + Wednesday headwind still applies, but 3:15 PM WR 60% (Insight #10).

3. SEDG REVISIT AT 3:15 PM — LOW-MEDIUM CONVICTION:
   Closed $32.01 (+7.13%). Analyst_upgrade catalyst (UBS Buy, FCC inverter ban) = 66.7% WR (Insight #9).
   BUT: Barclays, Morgan Stanley, Deutsche Bank all Hold ratings with targets $33–$37 — broad consensus tepid.
   Intraday low: $31.38 (9:30 AM open). 5% cap below $32.01 = $30.41. Stop at $31.38 fits within cap.
   Confirm: no AH earnings tonight for SEDG. Negative PE is a concern. Apply Wednesday caution strongly.
   Only buy if closing strong (top 25% intraday range at 3:15 PM), rel vol sustained ≥ 1.2×.

4. WDC — NVDA CATALYST PLAY FOR OVERNIGHT:
   WDC closed +2.64% at $462.65. Catalyst: convertible debt buyback ($191M — reduces 2028 debt, balance sheet positive). Priority watchlist.
   NVDA earnings AH tonight = dominant overnight catalyst for storage/memory sector. If NVDA beats strongly → WDC, SNDK could gap up tomorrow morning.
   Verify WDC has no earnings tonight. If NVDA AH reaction is clearly positive (stock up significantly in after-hours), WDC becomes viable overnight entry at 3:15 PM.

5. NVDA EARNINGS AH TONIGHT — CRITICAL MACRO EVENT:
   Results due ~4:20–4:30 PM ET. Consensus: $92.07B revenue (+97.4% YoY), EPS $2.09.
   CAUTION: NVDA declined following last 4 consecutive earnings reports despite beats — "sell the news" pattern is real.
   Monitor actual AH price reaction (not just beat/miss) before sizing any overnight tech exposure.
   If NVDA beats + stock gaps UP in AH: AI-adjacent tailwinds for SMCI, ANET, MRVL, WDC, SNDK.
   If NVDA beats + stock FLAT/DOWN in AH: sell-the-news scenario — avoid new tech overnight positions.
   If NVDA misses: avoid all new tech overnight positions; MRK (healthcare) most insulated holding.

6. JACKSON HOLE THU AUG 28 (Warsh keynote): 2 trading days away. Macro risk building. Avoid new rate-sensitive overnight positions. MRK (healthcare) less exposed. Do NOT open financial or rate-sensitive names overnight before Jackson Hole.

7. CASH AVAILABLE AT 3:15 PM:
   Settled today: $263.68 (available for 3:15 PM buys).
   TGT unsettled: $403.69 (T+1 = Thu Aug 27 — NOT available today).
   Max new invested under 75% cap: ~$437.96 from account value; hard-limited to $263.68 settled cash.
   Tomorrow (Aug 27): TGT settles → ~$667 total cash; 75% cap ~$688 max invested.

8. DO NOT RE-ENTER TGT TODAY: Stopped out 10 AM session. Per AVOID rule (Insight AVOID).
9. DO NOT RE-ENTER FOXA: Stop triggered Aug 18. Do not re-enter.

Catalyst watch list: None new identified. ANF and SEDG are carry-forwards evaluated above. NVDA results (AH tonight) not a direct entry — too large; watch for sector reaction in WDC, SNDK, AMAT at tomorrow's 10 AM open.

---
PRE-CHECK — Market day verification
Before doing anything else, check today's date. If today is Saturday or Sunday, output "Market closed — weekend. No action taken." and stop immediately. Do not proceed to Step 1.
Also check if today is a US federal market holiday (New Year's Day, MLK Day, Presidents Day, Good Friday, Memorial Day, Juneteenth, Independence Day, Labor Day, Thanksgiving, Christmas). If it is, output "Market closed — [holiday name]. No action taken." and stop.

---

STEP 1 — Account snapshot
Retrieve current account state:
- Total account value (settled cash + all open position market values)
- Settled cash only — never count unsettled funds from recent sales
- All open positions with entry price, current price, days held, and unrealized gain/loss %
- Any pending orders — cancel stale unfilled limit orders from previous sessions before proceeding

PORTFOLIO SYNC — reconcile against the handoff before trusting it:
Compare the LIVE Robinhood portfolio (source of truth) against the positions in the handoff block. The user frequently opens or closes positions manually between sessions.
- Position in handoff but NOT in live portfolio → user sold it manually. Remove it from your working set and note it.
- Position in live portfolio but NOT in handoff → user bought it manually. Add it with a conservative default stop (5% below current price for an overnight hold); research its catalyst before deciding whether to hold it overnight. Tag it entry_type=manual.
- Share count or entry price differs → trust the live Robinhood values.
Always trade against the live portfolio, never the handoff numbers, when they conflict.

---

STEP 2 — Evaluate existing positions for overnight hold or exit
For each open position, get its current quote first. Your main question is: does this stock have a strong case for continuing overnight, or should it be closed before the bell?

Note: some positions in the handoff may have been opened by the 12 PM midday reassessment agent. Look for the "Opened by 12 PM reassessment" notation and the overnight hold flag (YES/NO) it set. Use that as your starting point — if it flagged YES, evaluate it seriously for overnight hold; if NO, it was intended as a same-day position and you should apply extra scrutiny before choosing to hold it overnight.

Hard exits — sell immediately (market order) if:
- Current price is at or below the stop-loss target from the handoff — execute without hesitation
- Current price is at or above the take-profit target from the handoff — lock in the gain
- Earnings are announced for tonight or before tomorrow's open — with two exceptions where holding through earnings is permitted:
  EXCEPTION 1 (manual entries): if the position is entry_type=manual, the user opened it with their own conviction and likely intends to hold through the event. Do NOT force-close unless the handoff explicitly marks it "intraday-only". Treat as intentional — apply normal overnight thesis evaluation and hold if the thesis is intact. The 10 AM agent evaluates post-earnings at open.
  EXCEPTION 2 (agent entries — confirmed beat + raised guidance): an agent-opened position may hold through earnings if ALL THREE of the following are true: (1) sector=tech, (2) the catalyst is a confirmed earnings beat WITH raised guidance already reported (not just upcoming earnings — the beat must be confirmed before this session), and (3) the position is currently profitable. If all three are met, hold overnight. If any criterion is missing, close before the binary event.

Note: Robinhood does not support stop or limit trigger orders on fractional shares. There are no standing stop-loss orders in the market — this manual check IS the stop-loss mechanism. Always check prices against handoff targets before doing anything else.

Discretionary exits — sell only if there is a real thesis break or concrete overnight risk, not just red noise. "Broad market weak late in the day" is NOT by itself a reason to sell an otherwise-intact position — that is normal noise and the defined stop-loss (with extra overnight room) exists to handle real downside. Sell discretionarily if any of the following apply:
- News or unusual activity suggests concrete elevated overnight downside risk (not just "market is down")
- The specific thesis for holding has concretely weakened since entry (negative news, downgrade, guidance cut) — not merely broad-market softness
- Position was flagged NO for overnight hold by the 12 PM agent and there is no new overnight catalyst to justify holding
- The stock closed its intraday gap AND is down more than 1.5% from entry with no catalyst left to support a rebound (price fade alone, without a thesis break, is not enough — hold and let the stop do its job)

Hold overnight if:
- The stock is still trending up with increasing or sustained volume into the close
- It has a clear catalyst (product launch, analyst upgrade, sector tailwind) that supports continuation
- Pre-market or after-hours activity in the sector is positive
- The stock is making new intraday highs near close — strong close often leads to gap up open

For each position output your hold/sell decision and your overnight thesis or exit reason.

---

STEP 3 — Calculate available buying power
After accounting for any planned sells from Step 2:
- Remaining investment value = current positions you are keeping, at market value
- Available to invest = (total account value x 0.75) minus remaining investment value
- Buyable today = the lesser of available to invest OR settled cash on hand
- If buyable amount is less than $10, skip Steps 4 and 5 and go to Step 6

Never use unsettled cash. Never let total invested positions exceed 75% of account value.

MARKET REGIME GATE — check before opening new overnight positions:
Get SPY's change % from prior close via get_equity_quotes(["SPY"]): (last_trade_price - adjusted_previous_close) / adjusted_previous_close.
- If SPY is DOWN more than 2% on the day: risk-off regime. SKIP all new overnight buys (skip Steps 4 and 5, go to Step 6). Holding new longs overnight into a weak-market close carries elevated gap-down risk. Note "Market regime gate triggered — SPY down [X]%, no new overnight buys." You may still HOLD existing winners overnight if their individual thesis is strong.
- If SPY is DOWN 1% to 2%: caution regime. You may open overnight positions but reduce sizes by 50% and require a strong, clearly-dated catalyst.
- If SPY is flat, up, or down less than 1%: normal regime, proceed as usual — a mild broad-market dip is not a reason to sit out individual stocks with real, confirmed momentum.
This gate does NOT affect sells — always honor stops and take-profits regardless of regime.

---

STEP 4 — Find overnight momentum candidates
You are looking specifically for stocks with strong overnight gap-up potential, not just stocks that moved today. Cast a wide net — aim for 50+ raw candidates before filtering. Run all sources in parallel:

Source A — Robinhood scanners (primary):
Call run_scan on BOTH saved scans and union the results:
1. scan_id "9934ccf8-02c4-4ed0-a32e-1a1b2bc44b63" — % change >= 3%, relative volume >= 1.2x 30-day average, market cap > $750M. Confirmed-momentum pool.
2. scan_id "38cc0924-7945-40c0-adb9-79048afa6d67" — % change >= 6%, market cap > $500M, no volume filter. Catches big obvious movers a lagging relative-volume reading would otherwise exclude.
Zero on both means the bar genuinely isn't being cleared right now — don't force it.

Priority sector watchlist — always check directly, regardless of scanner results:
SNDK, MU, INTC, WDC, AMAT, QCOM (memory/semiconductor). Historically the account's strongest-performing sector — big moves on green tech days. Pull each via get_equity_quotes: if QQQ is up on the day and the ticker is up 2%+ from prior close, add it to the candidate list even if it doesn't independently clear the general 3% bar. Give these a scoring boost over an equal-quality non-watchlist candidate when ranking. Still must clear every hard disqualifier below — check the earnings date before buying, this sector reports often (overnight holds especially: never hold one of these through same-day or next-morning earnings).

Source B — Robinhood built-in lists:
Call get_popular_lists and get_watchlist_items on Daily Movers, 100 Most Popular, 52-Week Highs, Top Movers, sector lists. Add any tickers not already in Source A.

Source C — Web searches (run all in parallel):
- "top stock gainers today [current date]"
- "stocks with after hours catalyst tonight [current date]"
- "stock market news today [current date] biggest movers"
- "analyst upgrades downgrades today [current date]"
- "earnings after close tonight [current date] expected beat"
- "FDA approval [current date]"
- "merger acquisition announced today [current date]"
Extract every ticker mentioned and add any not already in Sources A/B.

Source D — After-hours catalyst research:
Search "after hours earnings tonight [current date]" and "premarket catalyst tomorrow [current date]". Flag any candidates from Source A/B that have a known post-close event that could drive overnight movement. Also note any Federal Reserve comments, economic data releases, or geopolitical news expected before tomorrow's open that could impact overnight sentiment broadly.

Source E — Sector momentum check:
Search "best performing sectors today [current date]" and identify the top 1-2 sectors. Pull relevant sector ETF tickers (XLK, XLV, XLE, XLF, XLI, XLC, etc.) and find individual stocks within the leading sectors that are closing strong.

Source F — Catalyst watch list for tomorrow morning (run in parallel with other sources):
Search the following in parallel:
- "earnings before market open [TOMORROW'S DATE]"
- "earnings before bell [TOMORROW'S DATE] consensus beat expected"
- "FDA PDUFA date [TOMORROW'S DATE] OR [DATE+2]"
- "analyst day investor day event [TOMORROW'S DATE]"

For each result, identify the ticker and assess:
- Catalyst timing: tonight AH or tomorrow BMO? If neither, skip it.
- Directional bias: is there a clear consensus expectation (earnings beat expected, approval likely based on analyst consensus)? Flag as WATCH if yes.
- Binary risk: FDA decision, foreign regulatory clearance (China SAMR, EU), clinical trial readout, court ruling? Flag as HIGH RISK — include for awareness but the 10 AM agent must require strong open confirmation and may choose to skip entirely.
- Recent move: has the stock already moved >15% in the past 5 days on pre-positioning? If yes, remove — the easy gain is likely already in the price.

Build a CATALYST WATCH LIST of up to 5 entries in this format:
  TICKER | Catalyst type | Timing (AH tonight / BMO tomorrow) | Direction bias | Risk level (LOW / MEDIUM / HIGH)

Do NOT buy these today. Pass this list to the 10 AM agent via the handoff block. The 10 AM agent is authorized to enter catalyst watch list tickers at a 1-2% open confirmation threshold (instead of the standard 3% bar) if: (a) the catalyst resolved positively overnight, (b) the stock is trending up at 10:00 AM — not fading from the open spike — and (c) all hard disqualifiers are still clear. A failed catalyst (miss, adverse outcome, no result) disqualifies the entry entirely — do not enter on a failed catalyst regardless of price action.

Combine everything into a master candidate list. For each candidate not already scored by Source A, fetch: current price/change % (get_equity_quotes), actual relative volume vs 30-day average (get_equity_historicals), VWAP (get_equity_technical_indicators, type="vwap", interval="5minute"), today's intraday low (get_equity_historicals, for stop-loss reference), and closing price trend from 5-min bars in the last hour (get_equity_historicals, interval="5minute") — is it closing strong or fading?

Then screen every candidate against all of the following:

Baseline filters (hard requirements):
- Up at least 3% on the day (or came from the 6%+ big-mover scan)
- Market cap above $500 million (disqualify OTC, pink sheets, ADRs)
- Bid/ask spread below 1%
- Not already in your portfolio

Trend-quality scoring (weigh these, don't hard-reject for missing one):
- Relative volume >= 1.2x is a positive signal, >= 1.5x strong. A big mover (>=6%) with weak volume data is still eligible.
- Price above VWAP and closing near/above its intraday high is a strong "closing strong" signal; a near-miss with a real catalyst still ranks, just lower.

Hard disqualifiers — reject immediately, no exceptions:
- Any pending binary event that could resolve overnight or before tomorrow's open: FDA decision, foreign government merger/acquisition regulatory clearance (e.g. China SAMR, EU approval), clinical trial readout, court ruling. These can gap -15% or more at open with no ability to react until the 10:00 AM agent runs.
- Speculative thesis combined with declining underlying fundamentals (revenue falling, widening losses, analyst PT well above any reasonable fundamental valuation). A story needs improving fundamentals to survive overnight — narrative alone fails.
- Stock has moved more than 20% in either direction over the past 5 trading days and today's move is not a brand-new, clearly dated catalyst. High recent volatility means overnight gaps can easily exceed the stop-loss before the 10:00 AM agent can act.

Overnight-specific filters:
- No earnings tonight or before tomorrow's open — disqualify any stock reporting after hours
- Has a clear identifiable catalyst (news, upgrade, product event, sector momentum) that could sustain or extend the move overnight
- Closing strong — ideally in the top 25% of its intraday range at time of evaluation
- Sector is not showing broad late-day reversal
- No negative news or controversy that could weigh on overnight sentiment

For every candidate that passes all filters, do a brief news headline search ("[TICKER] stock news today") to confirm the catalyst is real and check for any negative counterweight stories.

Score each qualifying candidate on: percentage gain + volume strength + catalyst quality + close strength + overnight risk profile. Rank and select up to 4 candidates. If no stock passes all filters, skip buying today and explain why.

---

STEP 5 — Size and place overnight buys
Select up to 4 candidates from Step 4. Divide the buyable amount from Step 3 evenly across them (e.g., 4 picks = each gets one-quarter of buyable cash), but cap any single position at 25% of total account value. If fewer candidates qualify, split the buyable amount across those instead.

For each position, determine its quality tier, then set stop-loss and take-profit:

- Stop-loss: use today's intraday low as a reference, but hard cap at 5% below entry price. If the intraday low is more than 5% below your intended entry, the stock is too volatile to hold overnight — skip it.

- Position size — quality-tiered (use the highest tier the candidate earns):
    HIGH conviction ($400 max): ALL five criteria met — (1) scanner-confirmed OR a high-conviction manual entry on a confirmed earnings beat + raised guidance, (2) relative volume ≥ 1.5x (waived for manual beat+raise entries where volume data is thin/lagging), (3) price above VWAP, (4) closing in top 25% of intraday range, (5) catalyst is analyst_upgrade, sector_momentum, or earnings_beat WITH raised guidance (a beat alone, without a raise, still does NOT qualify for this tier). Dollar risk limit: $20.00.
    MEDIUM conviction ($250 max): scanner-confirmed OR manual entry + most criteria present but one missing (e.g. relative volume 1.2–1.5x, or strong catalyst but price slightly below VWAP). Dollar risk limit: $12.50.
    LOW conviction ($150 max): not in scanner (manual research only) and no manual conviction basis, OR earnings_beat without a guidance raise as sole catalyst, OR relative volume < 1.2x. Dollar risk limit: $7.50.

  Allocate each candidate its full tier-capped dollar amount — do NOT split the buyable amount evenly. Total deployed must still respect the 75% invested cap and settled-cash constraint from Step 3; if total tier amounts exceed buyable cash, cut lower-tier positions first. No single position may exceed 25% of total account value regardless of tier.

  Dollar risk check: (entry price − stop price) × shares must not exceed the tier's dollar risk limit. Reduce shares to fit — never widen the stop.

- Take-profit: set at 2x the stop distance from entry (minimum 1:2 risk/reward ratio).

Place dollar-amount market orders for each — fractional shares are fine. Orders are GFD (good for day, expires at close).

---

STEP 6 — Place all orders simultaneously
Place all sell orders from Step 2 and all buy orders from Step 5 at the same time. Do not wait for sells to confirm before placing buys — they are funded independently.

---

STEP 7 — Summary report
Output a clean summary including:
- Positions sold: ticker, reason, gain/loss %
- Positions held overnight: ticker, overnight thesis, stop-loss and take-profit targets
- Positions bought: for each — ticker, shares, dollar amount, overnight thesis, stop-loss and take-profit targets
- Skipped actions and why
- Portfolio allocation after all orders: invested % vs cash %
- Settled cash available for tomorrow morning
- Brief overnight outlook: what to watch for before the 10:00 AM agent runs
- Catalyst watch list for tomorrow: every ticker on the watch list with catalyst, timing, direction bias, and risk level

**EMAIL DISABLED (2026-07-29, usage reduction).** Do NOT send any email for this routine. Output the summary to the session transcript only. Aaron still gets a push notification when the routine finishes, and the city dashboard reads the handoff, so the email was pure duplicated cost on every run. Conditional CRITICAL alerts in other routines are unaffected.

---

STEP 8 — Write handoff to the 10:00 AM prompt
After completing the summary, overwrite the `## HANDOFF FROM LAST 3:15 PM SESSION` block in `robinhood_1000_trading/SKILL.md` (relative to the root of the cloned `claude-trading-tasks` repo) with the following information:
- Today's date and time
- Every open position being held overnight: ticker, shares, average entry price, stop-loss, take-profit, the overnight thesis in one sentence, and its entry_type tag (catalyst_watch / scanner / manual — carry forward unchanged for inherited positions; set it when you open a position, scanner for your overnight buys)
- Settled cash remaining
- Total account value
- Any notes the 10:00 AM agent should know (e.g. catalysts to watch before open, earnings risk, sector news expected overnight, positions near targets)
- Catalyst watch list from Source F: each entry as TICKER | Catalyst | Timing | Direction bias | Risk level. If none were identified, write "Catalyst watch list: none."

Replace the entire block from the `## HANDOFF FROM LAST 3:15 PM SESSION` line through the closing `---` with fresh content. Do not modify anything else in that file.

After writing the file, commit and push it back to the repo:
```
git add robinhood_1000_trading/SKILL.md
git commit -m "3:15 PM handoff [DATE]"
git push
```

---

STEP 9 — Append closed trades to trade log
For every position you SOLD in this session, append one row per trade to `trade_log.csv`:

Format: `date,ticker,shares,entry_price,exit_price,entry_session,entry_type,exit_session,catalyst,sector,pnl_pct,pnl_dollar,exit_reason`

- `entry_session`: from handoff ("3:15PM", "10AM", or "12PM")
- `entry_type`: how the position was originally sourced (from handoff) — "catalyst_watch" (catalyst watch list early-entry path), "scanner" (standard momentum/scanner entry), or "manual" (opened by the user, detected via portfolio sync). Default to "scanner" if the handoff doesn't specify.
- `exit_session`: "3:15PM"
- `exit_reason`: "stop_loss", "take_profit", or "discretionary"
- `pnl_pct`: (exit_price - entry_price) / entry_price x 100
- `pnl_dollar`: (exit_price - entry_price) x shares
- `catalyst` and `sector`: from handoff notes (earnings_beat / analyst_upgrade / fda / merger / sector_momentum / other; tech / energy / healthcare / financials / consumer / industrial / other)

Only log completed (exited) trades. Include trade_log.csv in the git commit from Step 8.

---

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
