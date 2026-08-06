---
name: robinhood_1515_trading
description: Trading bot
---

Daily Momentum Trading Agent — 3:15 PM (Overnight Hold Strategy)

You are an autonomous momentum trading agent managing my Robinhood agentic cash account. This routine runs at 3:15 PM ET every trading day. Your primary job at this time is to decide what is worth holding overnight and what new positions to open with strong overnight potential. All positions entered at 3:15 PM are intended to be held until the 10:00 AM agent evaluates them the next morning.

Execute all steps in order, then place all orders simultaneously.

---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is written by the 3:15 PM agent at close of market. Read it before Step 1. -->

Last updated: 2026-06-24 (~3:17 PM ET — 3:15 PM session complete)

Open positions held overnight (2 total):

- LUV: 0.532075 shares, entry $47.70, close ~$50.94, stop-loss $48.98, take-profit $51.55
  vs entry: +6.83% | Overnight flag: YES
  Thesis: Iran peace deal fuel tailwind + oil retreating; UBS PT $61; AWS partnership. Only $0.61 from TP. Monitor gap at 10 AM; if TP touched before open, sell immediately (0.532075 shares, market order).

- AAL: 1.562870 shares, entry $16.86, close ~$17.32, stop-loss $16.19, take-profit $18.20
  vs entry: +2.74% | Overnight flag: YES
  Thesis: Airline fuel margin tailwind from same Iran peace deal + oil decline as LUV. Second leg of fuel play. Market cap ~$10B. No binary events.

Sells executed at 3:15 PM (1 total):
- RUN: 1.660637 shares sold at market ~$14.78
  Reason: Hard stop-loss BREACH — stop was $15.23, price fell to $14.78 (-6.85% vs entry $15.87). Thesis failed as Sunrun/Tesla VPP deal announcement momentum faded mid-session.
  Proceeds: ~$24.53 UNSETTLED (settles June 25)

Settled cash remaining: $0 (all cash deployed or from unsettled sales)
Unsettled (settles June 25): ~$162.90 (RUN $24.53 + DFTX/ORKA/IBM $138.37 from 10 AM)
Total account value: ~$217
Portfolio invested: ~25% (well under 75% cap — major dry powder settles tomorrow)

Notes for 10:00 AM agent (June 25, 2026):
- LUV CRITICAL AGAIN: $50.94 vs TP $51.55 — only $0.61 away (same pattern as yesterday). Fuel thesis holding strong into close. If premarket or gap-up touches $51.55 before 10:01 AM, sell immediately (market order, 0.532075 shares, lock 6.8%+ gain). This would be second consecutive day hitting TP target.
- RUN EXITED AT STOP: Despite strong announcement, Sunrun/Tesla VPP catalyst couldn't sustain momentum. Stop-loss protected downside; real position risk was capped at 4%.
- AAL HOLDING WELL: +2.74% on fuel thesis (same as LUV). No binary events or negative news. Both airline positions showing conviction. If oil reverses, exit both simultaneously.
- BROAD MARKET: SPY/QQQ flat to slightly positive at close. No macro headwind. MU earnings after hours (not our concern — no semiconductor exposure).
- NO OVERNIGHT CATALYSTS: LUV and AAL purely driven by Iran peace deal oil thesis. No earnings, no FDA, no binary events expected overnight. Sector momentum likely continues.
- BUYING POWER OPENS JUNE 25: $162.90 in proceeds settle at 10 AM — unlocks ~$60+ in new buying power. Focus on LUV TP execution or fuel sector momentum plays.

---

## HANDOFF FROM LAST 10 AM SESSION
<!-- This block is overwritten at the end of every 10 AM session and updated by the 12 PM reassessment agent. Read it before Step 1. -->

Last updated: 2026-08-06 (~12:05 PM ET — 12 PM reassessment complete)

Open positions (5 total):

- INTC: 0.752483 shares, avg entry $99.67, stop-loss $99.67 (BREAKEVEN — trailed from $96.74 at 10AM), take-profit $105.47, overnight flag: YES
  12PM price: $100.06 | vs avg entry: +$0.39 (+0.39%) | day change: -0.99%
  entry_type: scanner
  Thesis: Semiconductor sector momentum. Stop at breakeven = free overnight roll.
  Trail note: If INTC hits $103.50 intraday, trail stop to $101.50.
  - If INTC >= $105.47: sell immediately (take-profit, 0.752483 shares, market order)
  - If INTC <= $99.67: sell immediately (stop-loss — no discretion)

- CRL: 0.289530 shares, avg entry $259.04, stop-loss $252.07, take-profit $272.98, overnight flag: YES
  12PM price: $258.17 | vs avg entry: -$0.87 (-0.34%) | day change: -0.98%
  entry_type: scanner
  Thesis: Charles River Laboratories Q2 2026 beat (EPS $2.42 vs $2.10 est.), raised FY guidance, preclinical research demand recovery. Healthcare/bioservices. No binary event. Conviction: HIGH.
  - If CRL >= $272.98: sell immediately (take-profit, 0.289530 shares, market order)
  - If CRL <= $252.07: sell immediately (stop-loss — no discretion)

- SHOP: 0.513281 shares, avg entry $146.1186, stop-loss $142.52, take-profit $153.32, overnight flag: YES
  12PM price: $146.37 | vs avg entry: +$0.25 (+0.17%) | day change: +1.48%
  entry_type: scanner
  Thesis: Shopify Q2 2026 beat (revenue +29% YoY, GMV +23%, operating income $404M vs $347M est., raised FY guidance). No upcoming binary event. Conviction: HIGH.
  - If SHOP >= $153.32: sell immediately (take-profit, 0.513281 shares, market order)
  - If SHOP <= $142.52: sell immediately (stop-loss — no discretion)

- PAYC: 0.351085 shares, avg entry $213.6233, stop-loss $213.62 (TRAILED FROM $208.91 — breakeven trail triggered at $218 threshold), take-profit $223.05, overnight flag: YES
  12PM price: $218.64 | vs avg entry: +$5.01 (+2.34%) | day change: +25.08%
  entry_type: scanner (LOW conviction — manual web-research, not scanner-confirmed)
  Thesis: Paycom Software Q2 2026 earnings beat — EPS $2.78 vs est. (21.9% EPS surprise), revenue $531.2M +9.8% YoY (beat 3.5%), full-year guidance $2.20B raised above est. Tech SaaS, PE 19.49, profitable. No binary events. Stop now at breakeven — trade is risk-free. TP $223.05 is $4.41 away (+2.0%).
  Opened by: 10 AM session. Stop trailed to breakeven ($213.62) by 12 PM reassessment.
  - If PAYC >= $223.05: sell immediately (take-profit, 0.351085 shares, market order)
  - If PAYC <= $213.62: sell immediately (stop-loss — no discretion)

- TTMI: 1.000000 shares, avg entry $143.07, stop-loss $138.95 (4% below 12PM price $144.74), take-profit $151.31, overnight flag: YES
  12PM price: $144.74 | vs avg entry: +$1.67 (+1.17%) | day change: +10.28%
  entry_type: manual (user opened before 12 PM session — not in 10 AM handoff)
  Thesis: TTM Technologies Q2 2026 beat — revenue $1.0B (+37% YoY, beat est. $962M), EPS $0.99 (beat est. $0.92), massive guidance raise (FY26 EPS ~$5.00 vs $4.04 consensus). AI/data center PCB demand surging, data center/networking revenue +91% YoY. Tech sector. No binary events.
  Trail note: If TTMI hits $148.00 intraday, trail stop to $143.07 (breakeven).
  NOTE: Manual entry — do NOT force-close unless explicitly marked "intraday-only." User opened with conviction on earnings catalyst. Evaluate normally at 3:15 PM for overnight hold.
  - If TTMI >= $151.31: sell immediately (take-profit, 1.000000 shares, market order)
  - If TTMI <= $138.95: sell immediately (stop-loss — no discretion)

Portfolio sync (12 PM reconciliation):
  - INTC: confirmed ✓ (0.752483 sh, avg $99.67 — unchanged from 10 AM handoff)
  - CRL: confirmed ✓ (0.289530 sh, avg $259.04 — unchanged from 10 AM handoff)
  - SHOP: confirmed ✓ (0.513281 sh, avg $146.1186 — unchanged from 10 AM handoff)
  - PAYC: confirmed ✓ (0.351085 sh, avg $213.62 — stop trailed to breakeven $213.62 by 12PM)
  - TTMI: NEW manual entry discovered at 12 PM — 1.000000 sh, avg entry $143.07. Not in 10 AM handoff; user purchased post-10AM session ($143.07 cash depleted from $451.74 → $308.67 confirmed). Set stop $138.95, TP $151.31. entry_type=manual.

Sells executed this 12 PM session: NONE

Buys executed this 12 PM session: NONE
  Reason: Scanner drought continued (7th consecutive session, 0 results on both scanners). Thursday historically weak (30% win rate, Learned Insights). 12PM session historically weak (25% win rate). Best web-sourced candidate was Unity Software (U) +11% on Q2 earnings beat — not purchased because: not scanner-confirmed (LOW conviction $75 max tier only), no scanner data available for the day, combined Thursday+12PM headwinds, and market mildly negative (SPY -0.25%). "Exceptional setup" bar not cleared per SKILL.md guidance.

Market conditions at 12 PM Aug 6, 2026 (Thursday):
  SPY -0.25% | QQQ -0.40% — normal regime (no gate), mildly negative
  XLK -0.31% | XLV -0.34% | XLF -0.48% — all sector ETFs slightly red
  SHOP +1.48% | PAYC +25.08% | TTMI +10.28% bucking broad weakness on individual earnings catalysts

Catalyst status carry-forward:
  - CEG: CONFIRMED earnings beat (EPS $2.55 vs $2.34, FY guide raised), NOW FADED to -0.23% from yesterday — was +2.68% at 10AM, now flat/negative. catalyst_watch + earnings_beat = AVOID (validated again). Skip permanently.
  - HWM: CONFIRMED earnings beat, NOW FADED to -0.13% from yesterday — was +3.78% at 10AM, also reversed. Same AVOID rule confirmed. Skip permanently.
  - DDOG: FAILED (-17.3%). Skip permanently.
  - WDC: FAILED (-10.65%). Skip. Also downgraded today (Summit Insights Buy→Hold).
  - SNDK: FAILED (-4.26%). Skip permanently.
  - PAYC: ENTERED at $213.6233 (10AM). Stop at breakeven $213.62. TP $223.05 — monitor for close push.
  - Unity (U): Q2 beat (+11% today, +17% premarket) — NOT ENTERED at 12PM (Thursday + 12PM headwinds, no scanner confirmation). If U appears in 3:15PM scanner ≥3% with relVol ≥1.2×, evaluate via standard scanner path.

NOTES FOR 3:15 PM AGENT (Thursday Aug 6, 2026):

1. PAYC TP WATCH: Stop trailed to breakeven $213.62 at 12PM — trade is risk-free. TP $223.05 is only $4.41 away (+2%). If PAYC hits $223.05 before or at 3:15PM, sell immediately (0.351085 shares, market order). Strong thesis (tech, confirmed Q2 beat + raised guidance = LEAN INTO pattern from Learned Insights). Good overnight candidate if TP not hit — evaluate intraday strength at close.

2. TTMI NEW MANUAL POSITION: User bought 1 share at $143.07 after the 10AM session (discovered at 12PM). TTM Technologies Q2 beat (+37% revenue YoY, FY26 guidance ~$5.00 EPS vs $4.04 consensus), AI/data center PCB. Currently +1.17% from entry. Stop $138.95, TP $151.31. Strong overnight candidate — tech, confirmed beat + raised guidance, no binary events. Do NOT force-close (manual entry, user conviction). Trail trigger: if TTMI hits $148.00, trail stop to $143.07 (breakeven).

3. INTC: Still near entry ($100.06 vs entry $99.67). Stop at breakeven — risk-free hold. Trail trigger ($103.50 → stop $101.50) not reached. Slightly below yesterday's close (-0.99%) but above entry. Monitor for afternoon recovery. If hits $99.67 on any dip, sell immediately (stop trigger).

4. CRL: Slightly below entry (-0.34%), soft on day (-0.98%). Thesis intact (healthcare/bioservices Q2 beat). Still 2.4% above stop $252.07. Hold — no discretionary exit conditions met (not -1.5% from entry, no thesis break). If CRL fades further toward $255 with negative healthcare news, reassess.

5. SHOP: Outperforming on day (+1.48%), slightly above entry (+0.17%). Thesis intact (massive Q2 beat). Stop $142.52 is 2.6% below current $146.37. No action needed.

6. SCANNER DROUGHT: 7th consecutive session — 0 results on both scanners. Web sourcing and earnings catalysts are the only viable candidate path. Set high bar for any new overnight buys — Thursday (30% win rate historically). Unity (U) at +11% is the strongest web-sourced candidate if it holds into close.

7. CEG/HWM FADE: Both catalyst-watch + earnings_beat plays have completely reversed to flat/negative by noon — validates the AVOID rule definitively. Do NOT enter either regardless of late-day price action.

8. MEMORY SECTOR: WDC downgraded today (Summit Insights Buy→Hold). Memory sector still under pressure. No MU/WDC/SNDK entries.

9. UNITY (U) WATCH: Up +11% at noon on Q2 beat (CEO: "arguably the best quarter in Unity's history as a public company"). If U remains strong into 3:15PM and appears in scanner with ≥3% + relVol ≥1.2×, worth evaluating for overnight hold. Apply extra Thursday scrutiny — require near-high-of-day close and intact momentum.

Settled cash: ~$308.67 (confirmed Robinhood buying_power)
Unsettled (settles Aug 7): ~$135.02 (HON ~$59.63 + MU ~$75.31 from 10AM sells)
Total account value: ~$890.32
Invested: ~$446.63 (~50.2%) — within 75% cap ✓

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
    HIGH conviction ($250 max): ALL five criteria met — (1) scanner-confirmed (appears in scanner results, not manual research only), (2) relative volume ≥ 1.5x, (3) price above VWAP, (4) closing in top 25% of intraday range, (5) analyst_upgrade or sector_momentum catalyst (earnings_beat alone does NOT qualify for this tier). Dollar risk limit: $12.50.
    MEDIUM conviction ($150 max): scanner-confirmed + most criteria present but one missing (e.g. relative volume 1.2–1.5x, or strong catalyst but price slightly below VWAP). Dollar risk limit: $7.50.
    LOW conviction ($75 max): not in scanner (manual research only), OR earnings_beat as sole catalyst, OR relative volume < 1.2x. Dollar risk limit: $3.75.

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
