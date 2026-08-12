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

Last updated: 2026-08-12 (~12:12 PM ET — 12 PM reassessment complete)

ANOMALY NOTE: the handoff this session inherited (dated Aug 10 12PM, CRL/PLTR) was 2 trading days stale — the Aug 10 3:15PM / Aug 11 10AM-3:15PM session chain broke except for a late 9:30AM Aug 11 open-reaction run. CRL and PLTR were both closed at 3:15 PM Aug 10 (CRL take-profit $274.31, PLTR stop $176.05 — both wins, confirmed via order history). Live Robinhood portfolio was used as source of truth per PORTFOLIO SYNC. Two positions absent from any handoff were found live and adopted: JBL (bought 10:32 AM ET Aug 11) and CRWV (bought 10:20 AM ET today via an apparent 10AM session that also never committed a handoff). Both adopted as entry_type=manual.

Open positions (3 total):

- JBL: 0.211798 shares, avg entry $354.11, stop-loss $365.44 (TRAILED from $339.95), take-profit $382.43, overnight flag: YES
  12PM price: $367.44 | vs avg entry: +$13.33 (+3.76%)
  entry_type: manual (adopted via portfolio sync 9:30AM 8/11; original stop/TP set that session)
  Thesis: AI/hyperscaler-demand contract manufacturer — AI revenue ~$13.6B FY26 (+51% YoY), 39% of total revenue, expanding hyperscaler customer base. No earnings on calendar in next 3 days. No adverse news found today.
  Stop TRAILED to $365.44 (recent 5-min swing low, held since ~10:45 AM) since position is +3.76% (>2% trail trigger). Previous stop $339.95.
  - If JBL >= $382.43: sell immediately (take-profit, 0.211798 shares, market order)
  - If JBL <= $365.44: sell immediately (stop-loss — no discretion)

- CRWV: 0.689212 shares, avg entry $108.82, stop-loss $102.94, take-profit $120.58, overnight flag: YES
  12PM price: $107.23 | vs avg entry: -$1.59 (-1.46%)
  entry_type: manual (adopted via portfolio sync at 12PM — live position not in any handoff; bought by an untracked 10AM-ish session today)
  Thesis: CoreWeave Q2 2026 beat — rev $2.58B vs $2.56B est, backlog raised to $104.2B, FY26 guidance raised (reported this AM, catalyst already resolved, CONFIRMED GAP UP per 7AM brief). Tech/AI-infra sector. No earnings on calendar in next 3 days.
  Down -1.46% from entry after fading off an intraday high of $111.82 (day is still +18.7% vs yesterday's close $90.32) — price condition below the -1.5% discretionary-exit threshold and has NOT round-tripped more than half the gap-up. Thesis intact, no adverse news today (most recent CRWV coverage is bearish-leaning cash-burn commentary from Aug 5-10, predates today, not a fresh thesis break). HOLD.
  Stop set at conservative default 4% below current price (portfolio-sync rule, since no prior stop existed). TP = 2x stop distance (standard 1:2 R:R).
  - If CRWV >= $120.58: sell immediately (take-profit, 0.689212 shares, market order)
  - If CRWV <= $102.94: sell immediately (stop-loss — no discretion)

- SMCI: 2.094018 shares, avg entry $35.8163, stop-loss $35.28, take-profit $36.98, overnight flag: NO
  12PM price: ~$35.80 (bought this session at 12:11 PM ET)
  entry_type: scanner (catalyst-sourced via today's 7AM overnight-brief carry-forward list, cleared full 3% baseline bar — not the early catalyst_watch threshold path)
  Thesis: Super Micro Computer Q4 FY26 beat — EPS $1.62 vs $0.31 est (~5x beat), gross margin 17.5% vs 9.9% prior qtr, CONFIRMED GAP UP per 7AM brief. Up +13.4% vs yesterday's close, held an orderly consolidation (not a hard fade) through midday. Tech/AI-infra sector.
  LOW conviction ($75, $3 risk cap): NOT scanner-confirmed (both saved scans returned 0 results again — 14th consecutive drought) and earnings_beat is the sole catalyst — both are explicit LOW-tier triggers per SKILL sizing rules.
  Overnight flag set NO despite catalyst supporting continuation: per Learned Insight #2 (12PM entries are the account's worst category absent scanner confirmation), treating this as an intraday/tactical position pending 3:15 PM reassessment with a full afternoon of price action, rather than presumptively holding overnight.
  - If SMCI >= $36.98: sell immediately (take-profit, 2.094018 shares, market order)
  - If SMCI <= $35.28: sell immediately (stop-loss — no discretion)

12 PM reassessment actions:
  - No exits: JBL and CRWV both intact (no stop/TP hit, no thesis break).
  - JBL stop trailed: $339.95 → $365.44 (position +3.76% from entry, trail-to-support rule triggered; recent-support level used since it was higher than breakeven $354.11).
  - CRWV adopted via portfolio sync with conservative default stop/TP (see above).
  - One new buy: SMCI ($75, LOW conviction) — see above.
  - Scanner drought: BOTH saved scans (3%+/1.2x relvol and 6%+ big-mover) returned 0 results — 14th consecutive session. Note: this is despite SNDK/MU/WDC/AMAT all posting 5-9% gains today, which is a real gap between the scanner tool and priority-watchlist/catalyst-sourced candidates worth flagging to the user — the 6%+ scan in particular should have caught SNDK (+8.87%) and did not.
  - Candidates reviewed and rejected:
      SNDK: +8.87% (priority-watchlist qualifier, QQQ up) — fresh dated catalyst ($15.5B buyback announced this AM), price above VWAP, top-quartile of intraday range — but NOT scanner-confirmed, relative volume tracking BELOW 30-day average (~0.5x, not elevated despite the price move), and carries Investor Day event risk tomorrow (8/13, do-not-hold-overnight carry-forward). Not "exceptional" enough to clear the no-scanner bar per Learned Insight #2. Skipped.
      MU +6.55%, WDC +5.22%, AMAT +4.93%: priority-watchlist qualifiers (QQQ up) but no ticker-specific dated catalyst today — riding broad sector/analyst-narrative sentiment only. Rejected per Learned Insight #10 (sector_momentum alone unreliable, requires a specific dated catalyst).
      INTC +3.04%: today's news is retrospective analysis of an equity-raise event, not a fresh announcement — same offering type that drove INTC down -3.50% on Aug 10. Stale/ambiguous catalyst, mixed recent history on this exact headline type. Rejected.
      CAVA +12.4% (web search): Q2 beat, but faded hard from opening high $71.70 to a midday low $67.35 before partial recovery — currently mid-range, not top-quartile. Non-tech (consumer/restaurant) sector. Rejected — fade pattern + weak sector fit + Wednesday caution (Insight #5).
      HRB +15.5% (web search): Q4 beat, but nearly round-tripped over half its gap-up (high $58.67 → low $52.76, threshold $52.67) — classic faded-spike pattern the midday filters explicitly warn against. Rejected.
      QCOM -0.24%: down on the day, excluded.

Market conditions at 12 PM (Aug 12, 2026 — Wednesday):
  SPY +0.22% ($772.24 vs $770.56 close) | QQQ +0.73% ($723.69 vs $718.45 close) — both pulled back slightly off their opening prints but remain positive on the day. Normal regime, no gate triggered.
  Big semiconductor/memory rally today (SNDK/MU/WDC/AMAT all +5-9%) but largely without fresh per-ticker catalysts beyond SNDK's buyback and general AI-infra sentiment (Morgan Stanley $1.4T 2027 AI-spend note circulating).
  Scanner drought: 14th consecutive session (0 results on both scans) despite a clearly active momentum day — flagged above as a possible tooling gap.

Settled cash remaining: $672.34
Unsettled: $0
Total account value: ~$899.18
Portfolio invested: ~$226.84 (~25.2%) — well within 75% cap ✓

Catalyst status carry-forward:
  - SNDK: Investor Day tomorrow (8/13) — DO NOT hold overnight through it. Today's driver was a separate $15.5B buyback announcement (+8.87%), not the Investor Day itself. If scanner confirms at 3:15 PM and momentum holds, may enter intraday-only with explicit NO overnight flag — do not hold into Investor Day.
  - MU/WDC/AMAT: no ticker-specific dated catalyst identified today, riding sector sentiment only. Do not enter on sector momentum alone without a fresh catalyst (Learned Insight #10).
  - INTC: equity-raise headline recycled/ambiguous today; same headline type caused -3.50% on Aug 10. Treat with caution, do not chase.

NOTES FOR 3:15 PM AGENT (Wed Aug 12, 2026):

1. JBL TRAILED STOP: now $365.44 (from $339.95), locks in a solid gain if stopped (+3.2% minimum). TP $382.43 still ~4.1% away. Thesis intact (AI/hyperscaler demand), no earnings on calendar. If JBL runs further and clears +5% from entry ($371.82), trail the stop again per SKILL rules.

2. CRWV — WATCH CLOSELY: down -1.46% from today's entry after fading off a $111.82 intraday high; still up huge vs yesterday's close (+18.7%). This is a freshly-adopted position with a portfolio-sync default stop ($102.94, 4% below the 12PM price) — reassess whether a tighter, support-based stop is more appropriate once more of the session has printed. No adverse news, thesis (Q2 beat + raised guidance) intact.

3. SMCI — INTRADAY-TACTICAL, OVERNIGHT FLAG CURRENTLY NO: bought this session at LOW conviction without scanner confirmation, on an exceptional earnings beat (~5x EPS beat, GM nearly doubled). Re-evaluate the overnight flag at 3:15 PM on its own merits (catalyst supports continuation, no earnings tonight) — the NO flag set at 12PM was a deliberate caution call per Learned Insight #2 (12PM/no-scanner entries are the account's worst category), not a reflection of a weak thesis.

4. SCANNER TOOLING GAP FLAGGED: both saved scans returned 0 results despite SNDK (+8.87%) and other tickers clearing the 6%+ big-mover scan's stated filters (%change≥6%, market cap>$500M, no volume filter). This is now a 14-session drought and today's gap is particularly hard to explain given clearly-qualifying movers existed. Worth flagging to the user/for the next weekly review — may indicate a scan configuration or data-lag issue rather than a genuine absence of momentum.

5. SNDK / Investor Day: do not enter or hold anything in SNDK overnight tonight — Investor Day is tomorrow (8/13).

6. DO NOT RE-ENTER TODAY'S EXITED TICKERS: none exited this session (no sells), so no same-day re-entry restriction currently in effect. Per SKILL, never open a new position in a ticker already closed or exited that same trading day (AMD lesson: -$14.73, -9.82%).

7. HANDOFF CHAIN INTEGRITY: this session found two consecutive missing handoffs (Aug 11 10AM, Aug 12 10AM) where live trades occurred without a committed handoff. If the 3:15 PM session's own handoff write fails to commit, flag it loudly — the chain has now broken twice in three sessions.

Settled cash remaining: $672.34
Total account value: ~$899.18
Invested: ~$226.84 (~25.2%) — within 75% cap ✓

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
