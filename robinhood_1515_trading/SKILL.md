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
- ⚠️ LUV CRITICAL AGAIN: $50.94 vs TP $51.55 — only $0.61 away (same pattern as yesterday). Fuel thesis holding strong into close. If premarket or gap-up touches $51.55 before 10:01 AM, sell immediately (market order, 0.532075 shares, lock 6.8%+ gain). This would be second consecutive day hitting TP target.
- RUN EXITED AT STOP: Despite strong announcement, Sunrun/Tesla VPP catalyst couldn't sustain momentum. Stop-loss protected downside; real position risk was capped at 4%.
- AAL HOLDING WELL: +2.74% on fuel thesis (same as LUV). No binary events or negative news. Both airline positions showing conviction. If oil reverses, exit both simultaneously.
- BROAD MARKET: SPY/QQQ flat to slightly positive at close. No macro headwind. MU earnings after hours (not our concern — no semiconductor exposure).
- NO OVERNIGHT CATALYSTS: LUV and AAL purely driven by Iran peace deal oil thesis. No earnings, no FDA, no binary events expected overnight. Sector momentum likely continues.
- BUYING POWER OPENS JUNE 25: $162.90 in proceeds settle at 10 AM — unlocks ~$60+ in new buying power. Focus on LUV TP execution or fuel sector momentum plays.

---

## HANDOFF FROM LAST 10 AM SESSION
<!-- This block is overwritten at the end of every 10 AM session and updated by the 12 PM reassessment agent. -->

Last updated: 2026-07-15 (~10:15 AM ET — 10 AM session complete)

Open positions: 4

- GS: 0.064601 shares, entry $1,130.01, stop-loss $1,082.00, take-profit $1,226.00
  Thesis: Q2 2026 massive EPS beat ($20.98 vs $14.54 consensus +44%); all 5 major banks beat; MS also beat Q2 today (EPS $3.46 vs $2.94 record results). Banking sweep intact. Entry session: 10AM.

- OKTA: 0.499222 shares, entry $154.24, stop-loss $148.24, take-profit $165.22
  Thesis: Scotiabank upgraded to Outperform $165 PT + KeyBanc raised PT to $175 (July 14). AI identity security theme supported (CIBR +0.43% today).
  ⚠️ NOTE: OKTA at $152.38 at 10 AM — below entry by 1.21%, underperforming peers (CRWD +0.37%, PANW +1.70%). Not at stop. Dual upgrades intact. Monitor closely at 3:15 PM. Entry session: 12PM.

- NTSK: 4.446044 shares, entry $14.17, stop-loss $13.535, take-profit $15.44
  Thesis: AI cybersecurity sector momentum (CIBR +0.43%, PANW +1.70% at 10 AM). +2.42% on day at session time. LOW CONVICTION — sector wave play only, no company-specific catalyst. Entry session: 3:15PM (July 14).

- BLK: 0.068550 shares, entry ~$1,094, stop-loss ~$1,050, take-profit ~$1,182
  Thesis: Q2 EPS beat today ($13.91 vs $12.59 expected, +10.5%). Largest asset manager; $158.9B market cap. Financials sector supportive (XLF +0.42%). Entry session: 10AM (July 15).

Settled cash remaining: ~$537.74
Total account value: ~$827
Portfolio invested: ~35% (GS ~$74 + OKTA ~$76 + NTSK ~$65 + BLK ~$75 = ~$290)
75% cap → max investable remaining: ~$330 (if 3:15 PM adds positions)

---

NOTES FOR 3:15 PM AGENT (July 15, 2026):

1. GS STOP/TP: Entry $1,130.01. Stop $1,082.00. TP $1,226.00. At 10 AM: $1,138.63.
   - If ≥ $1,226: sell (take-profit).
   - If ≤ $1,082: sell (stop-loss).
   - Trail stop to $1,130 (breakeven) if GS above $1,155 at 3:15 PM.

2. OKTA STOP/TP: Entry $154.24. Stop $148.24. TP $165.22. At 10 AM: $152.38 (BELOW ENTRY).
   ⚠️ WATCH CLOSELY. Underperforming CRWD/PANW/ZS at 10 AM.
   - If ≥ $165.22: sell (take-profit).
   - If ≤ $148.24: sell (stop-loss). Hard exit.
   - If still below $152 AND underperforming cybersecurity peers at 3:15 PM → consider discretionary exit.
   - Trail stop to $153.90 if above $159 at 3:15 PM.

3. NTSK STOP/TP: Entry $14.17. Stop $13.535. TP $15.44. At 10 AM: $14.615 (+3.14%).
   LOW CONVICTION. Exit discretionary if AI security sector broadly fades by 3:15 PM.
   - If ≥ $15.44: sell (take-profit).
   - If ≤ $13.535: sell (stop-loss).
   - Trail stop to $14.17 (breakeven) if NTSK above $14.80 at 3:15 PM.

4. BLK STOP/TP: Entry ~$1,094. Stop ~$1,050. TP ~$1,182. NEW POSITION (July 15).
   Q2 earnings beat today. Overnight hold only if banking/financials sector still constructive at close.
   - If ≥ $1,182: sell (take-profit).
   - If ≤ $1,050: sell (stop-loss).
   - If fades below entry by 3:15 PM with volume drying up: consider discretionary exit.

5. BUYING POWER: ~$537.74 settled cash. Account ~$827. 75% cap → ~$330 more investable.

6. MARKET REGIME (at 10 AM): SPY +0.40%. Check at 3:15 PM — if SPY falls to -1%, regime gate triggers (no new overnight buys).

7. MACRO: PPI June -0.3% MoM (cooler than expected). MS beat Q2 (record results). Banking sector fully swept.

---

WHAT HAPPENED (12 PM session, July 14, 2026):

GS held: -0.46% vs entry ($1,124.82 vs $1,130.01), stop at $1,082 not triggered, stop trail not triggered (requires +2% from entry). Well within range.

OKTA bought: $77 market order (0.500320 shares @ $153.90). Stop $148.24, TP $165.22. Overnight YES.

Broad market at noon: SPY +0.16% (normal regime, no gate). QQQ +0.96% (tech continuing higher on CPI relief). Iran blockade begins 4 PM ET — energy still not clearing 3%+ with 1.5x volume.

35+ candidates screened. Only OKTA passed all filters (S and NTSK failed 4% volatility cap by small margin; CRWD failed relative volume; TSEM failed volatility cap; SKHY is ADR; NTAP/AMD/SHLS below relative volume threshold; crypto miners fading from opens).

---

NOTES FOR 3:15 PM AGENT (July 14, 2026):

1. GS STOP/TP CHECK: At 3:15 PM check GS vs stop $1,082 and TP $1,226. Entry $1,130.01.
   - If GS ≥ $1,226: sell (take-profit). Lock ~8.5% gain.
   - If GS ≤ $1,082: sell (stop-loss). Hard exit.
   - If between: Evaluate for overnight hold. Banking sector tone broadly positive (all 5 major banks beat Q2). Strong hold candidate if still above $1,100 and trending up at close.
   - If GS is above $1,155 at 3:15 PM (+2% from entry), TRAIL STOP up to entry $1,130 or recent intraday support (higher of the two).

2. OKTA STOP/TP CHECK: At 3:15 PM check OKTA vs stop $148.24 and TP $165.22. Entry $153.90. Overnight flag: YES.
   - If OKTA ≥ $165.22: sell (take-profit). Lock ~7.4% gain.
   - If OKTA ≤ $148.24: sell (stop-loss). Hard exit.
   - If between: Overnight hold is STRONGLY supported — dual analyst upgrades ($165 + $175 PT), no earnings tonight, AI security narrative has legs. Hold if still above $151+ at close.
   - Trail stop to $153.90 (breakeven) if OKTA trades above $159+ at 3:15 PM (+2% from $153.90 entry).

3. ENERGY SECTOR — CRITICAL AT 3:15 PM: Iran blockade begins 4 PM ET today. If XOM, MPC, VLO clear 1.5x relative volume AND 3%+ at 3:15 PM, they are valid overnight candidates (5% overnight stop rule is slightly more permissive than 4% intraday). This is a binary, clearly-dated catalyst — blockade holds or breaks overnight.

4. AI SECURITY WAVE: CRWD +9%, OKTA +10% today. SentinelOne (S) and Netskope (NTSK) failed 4% intraday volatility cap at noon but may compress by 3:15 PM. If S intraday low since 10 AM has risen above $19.24 (within 5% of $20), it becomes a valid overnight candidate (5% overnight rule). Same check for NTSK: if low since 10 AM is above $13.47 (within 5% of $14.17), evaluate.

5. IBM: Do not buy. -24% earnings miss. Enterprise software headwind (ORCL, MSFT, WDAY all down).

6. BIIB: Do not buy. Phase 2 Diranersen miss.

7. BUYING POWER: $675.74 settled cash. 75% cap → max additional investment ~$469 after GS+OKTA positions.

8. MARKET REGIME: SPY +0.16% at noon. Check at 3:15 PM — if SPY falls below -1% by close, regime gate triggers (no new overnight buys, though existing positions may be held).

1 PM monitor: all stops intact as of 1:00 PM ET. GS $1,125.73 (stop $1,082.00 / TP $1,226.00 — HOLD). OKTA $155.46 (stop $148.24 / TP $165.22 — HOLD). Portfolio sync: OKTA live 0.499222 shares @ $154.24 avg (handoff showed 0.500320 @ $153.90 — using live). No sells executed.

2 PM monitor: all stops intact as of 2:10 PM ET. GS $1,127.69 (stop $1,082.00 / TP $1,226.00 — HOLD, 4.1% above stop, 8.7% below TP). OKTA $153.66 (stop $148.24 / TP $165.22 — HOLD, 3.5% above stop, 7.5% below TP). OKTA drifted from $155.46 (1 PM) → $153.66 — slight pullback, still well above stop. No NEAR STOP or NEAR TP flags. No sells executed.

---

## 2 PM MONITOR NOTE (2026-07-14 ~2:10 PM ET)

No sells executed. Both positions HOLD — stops and take-profits not triggered.

**NEAR STOP flags**: None
**NEAR TP flags**: None

**Position status at 2 PM ET:**
- GS: $1,127.69 (+7.80% vs prev close $1,045.91). Entry $1,130.01 (−0.21% vs entry). Stop $1,082.00 (4.1% buffer). TP $1,226.00 (8.7% away). Holding the earnings gap well. VWAP unavailable (Polygon API key error — use Robinhood historicals at 3:15 PM).
- OKTA: $153.66 (+10.07% vs prev close $139.53). Live avg entry $154.24 (−0.38% vs live avg). Stop $148.24 (3.5% buffer). TP $165.22 (7.5% away). Slight pullback from 1 PM high of $155.46 — normal consolidation after strong open. VWAP unavailable (same API issue).

**Broad market direction at 2 PM ET:**
- SPY: $752.44 → **+0.44%** (positive regime, no gate concerns; dramatic reversal from yesterday's −0.71% close)
- QQQ: $721.56 → **+1.38%** (strong tech/growth bid — directly aligned with OKTA's AI security thesis)

**News since noon (July 14, 2026):**
- GS: Motley Fool (1:01 PM ET) — "Goldman Sachs Saves the Dow From IBM's Worst Day in 39 Years." GS +7.4% on Q2 earnings beat, added 459 Dow points offsetting IBM's −24.9% collapse. Earnings thesis fully intact. No negative GS-specific news found.
- OKTA: No new July 14 OKTA news. Dual analyst upgrade thesis (Scotiabank $165 PT + KeyBanc $175 PT from this morning) remains unchallenged. Pullback from $155.46 → $153.66 is likely normal profit-taking/consolidation after a 10%+ gap.
- IBM: −24.9% on CEO profit warning (enterprise software budgets shifting to hardware). DOES NOT affect OKTA — OKTA is identity/cybersecurity, not IBM's software vertical. IBM weakness actually reinforces hardware/AI spend thesis (GS investment banking pipeline).

**⚠️ NOTES FOR 3:15 PM AGENT:**
- OKTA DRIFT: Slipped from $155.46 (1 PM) to $153.66 (2 PM), now slightly below live avg cost of $154.24. Watch close trend — if OKTA continues fading and is below $152 at 3:15 PM, re-evaluate overnight thesis (though stop at $148.24 is still the hard floor). Above $154 at 3:15 PM = full confidence hold.
- GS STRONG: Holding $1,127+ with strong banking sector tailwind from Q2 earnings season (all 5 major banks beat). Strong overnight hold candidate if stays above $1,110.
- REGIME GATE: SPY +0.44%, QQQ +1.38% — bullish backdrop. No regime gate concerns for new overnight buys.
- ENERGY/IRAN BLOCKADE: Blockade begins 4 PM ET. Check XOM/MPC/VLO at 3:15 PM — if 1.5x relative volume AND 3%+ gain, valid overnight candidates per 12 PM note.
- AI SECURITY: CRWD/OKTA both strong today. Check S (SentinelOne) — if intraday low since 10 AM above $19.24, it may qualify as overnight buy (per 12 PM note).

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
- Position in live portfolio but NOT in handoff → user bought it manually. Add it with a conservative default stop (5% below current price for an overnight hold); research its catalyst before deciding whether to hold it overnight.
- Share count or entry price differs → trust the live Robinhood values.
Always trade against the live portfolio, never the handoff numbers, when they conflict.

---

STEP 2 — Evaluate existing positions for overnight hold or exit
For each open position, get its current quote first. Your main question is: does this stock have a strong case for continuing overnight, or should it be closed before the bell?

Note: some positions in the handoff may have been opened by the 12 PM midday reassessment agent. Look for the "Opened by 12 PM reassessment" notation and the overnight hold flag (YES/NO) it set. Use that as your starting point — if it flagged YES, evaluate it seriously for overnight hold; if NO, it was intended as a same-day position and you should apply extra scrutiny before choosing to hold it overnight.

Hard exits — sell immediately (market order) if:
- Current price is at or below the stop-loss target from the handoff — execute without hesitation
- Current price is at or above the take-profit target from the handoff — lock in the gain
- Earnings are announced for tonight or before tomorrow's open — do not hold through earnings, the risk is uncontrollable

Note: Robinhood does not support stop or limit trigger orders on fractional shares. There are no standing stop-loss orders in the market — this manual check IS the stop-loss mechanism. Always check prices against handoff targets before doing anything else.

Discretionary exits — sell if any of the following apply:
- The stock closed its intraday gap and has lost momentum heading into close
- Volume is fading into the close rather than increasing — weak close suggests weak overnight
- Broad market (S&P 500 or QQQ) is showing significant weakness late in the day
- News or unusual activity suggests elevated overnight downside risk
- The thesis for holding has weakened since entry
- Position was flagged NO for overnight hold by the 12 PM agent and there is no new overnight catalyst to justify holding

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
Use Polygon to get SPY's change % from prior close and how it is trending into the close.
- If SPY is DOWN more than 1% on the day: risk-off regime. SKIP all new overnight buys (skip Steps 4 and 5, go to Step 6). Holding new longs overnight into a weak-market close carries elevated gap-down risk. Note "Market regime gate triggered — SPY down [X]%, no new overnight buys." You may still HOLD existing winners overnight if their individual thesis is strong.
- If SPY is DOWN 0.5% to 1%: caution regime. You may open overnight positions but reduce sizes by 50% and require a strong, clearly-dated catalyst.
- If SPY is flat or up: normal regime, proceed as usual.
This gate does NOT affect sells — always honor stops and take-profits regardless of regime.

---

STEP 4 — Find overnight momentum candidates
You are looking specifically for stocks with strong overnight gap-up potential, not just stocks that moved today. Cast a wide net — aim for 50+ raw candidates before filtering. Run all sources in parallel:

Source A — Polygon top movers (primary):
Use Polygon's snapshot endpoint to get US stocks with change % ≥ 3% and actual relative volume ≥ 1.5×. Also pull today's 52-week high list from Polygon. Sort by relative volume. This is your primary candidate pool.

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

Combine everything into a master candidate list. For each candidate, fetch from Polygon: current price, change %, actual relative volume, VWAP, today's intraday low (for stop-loss reference), and closing price trend from 5-min bars in the last hour (is it closing strong or fading?).

Then screen every candidate against all of the following:

Baseline filters:
- Up at least 3% on the day
- Actual relative volume ≥ 1.5× (from Polygon — no estimation)
- Current price is ABOVE VWAP (closing strong relative to day's average)
- Market cap above $2 billion (disqualify OTC, pink sheets, ADRs)
- Bid/ask spread below 1%
- Not already in your portfolio

Hard disqualifiers — reject immediately, no exceptions:
- Any pending binary event that could resolve overnight or before tomorrow's open: FDA decision, foreign government merger/acquisition regulatory clearance (e.g. China SAMR, EU approval), clinical trial readout, court ruling. These can gap -15% or more at open with no ability to react until the 10:00 AM agent runs.
- Speculative thesis combined with declining underlying fundamentals (revenue falling, widening losses, analyst PT well above any reasonable fundamental valuation). A story needs improving financials to survive overnight — narrative alone fails.
- Stock has moved more than 20% in either direction over the past 5 trading days and today's move is not a brand-new, clearly dated catalyst. High recent volatility means overnight gaps can easily exceed the stop-loss before the 10:00 AM agent can act.

Overnight-specific filters:
- No earnings tonight or before tomorrow's open — disqualify any stock reporting after hours
- Has a clear identifiable catalyst (news, upgrade, product event, sector momentum) that could sustain or extend the move overnight
- Closing strong — ideally in the top 25% of its intraday range at time of evaluation
- Sector is not showing broad late-day reversal
- No negative news or controversy that could weigh on overnight sentiment

For every candidate that passes all filters, do a brief news headline search ("[TICKER] stock news today") to confirm the catalyst is real and check for any negative counterweight stories.

Score each qualifying candidate on: percentage gain + volume strength + catalyst quality + close strength + overnight risk profile. Rank and select up to 3 candidates. If no stock passes all filters, skip buying today and explain why.

---

STEP 5 — Size and place overnight buys
Select up to 3 candidates from Step 4. Divide the buyable amount from Step 3 evenly across them (e.g., 3 picks = each gets one-third of buyable cash), but cap any single position at 25% of total account value. If only 1 or 2 candidates qualify, split the buyable amount across those instead.

For each position, set stop-loss and take-profit as follows:
- Stop-loss: use today's intraday low as a reference, but hard cap at 5% below entry price. Overnight positions get slightly more room than intraday (5% vs 4%) to absorb normal gap volatility at open, but no more — if the intraday low is more than 5% below your intended entry, the stock is too volatile to hold overnight, skip it.
- Dollar risk cap: (entry price − stop price) × number of shares must be ≤ $3. If the calculated risk exceeds $3, reduce the position size until it fits within this limit rather than widening the stop.
- Take-profit: set at 2× the stop distance from entry (minimum 1:2 risk/reward ratio).

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

Then email this summary to yourself using the Gmail MCP tools. Send to aqmeyer123@gmail.com with subject "Robinhood 3:15 PM close — [DATE]". Body = the summary above in clean plain text. Lead with a one-line headline: end-of-day account value, day's total P&L, and what is being held overnight. Put any portfolio-sync or regime-gate flags at the top. This is the end-of-day wrap — make it the most complete of the day's emails.

---

STEP 8 — Write handoff to the 10:00 AM prompt
After completing the summary, overwrite the `## HANDOFF FROM LAST 3:15 PM SESSION` block in `robinhood_1000_trading/SKILL.md` (relative to the root of the cloned `claude-trading-tasks` repo) with the following information:
- Today's date and time
- Every open position being held overnight: ticker, shares, average entry price, stop-loss, take-profit, and the overnight thesis in one sentence
- Settled cash remaining
- Total account value
- Any notes the 10:00 AM agent should know (e.g. catalysts to watch before open, earnings risk, sector news expected overnight, positions near targets)

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

Format: `date,ticker,shares,entry_price,exit_price,entry_session,exit_session,catalyst,sector,pnl_pct,pnl_dollar,exit_reason`

- `entry_session`: from handoff ("3:15PM", "10AM", or "12PM")
- `exit_session`: "3:15PM"
- `exit_reason`: "stop_loss", "take_profit", or "discretionary"
- `pnl_pct`: (exit_price - entry_price) / entry_price × 100
- `pnl_dollar`: (exit_price - entry_price) × shares
- `catalyst` and `sector`: from handoff notes (earnings_beat / analyst_upgrade / fda / merger / sector_momentum / other; tech / energy / healthcare / financials / consumer / industrial / other)

Only log completed (exited) trades. Include trade_log.csv in the git commit from Step 8.

---

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-07-11. Insufficient data. -->

Only 0 closed trades logged so far — need at least 5 for meaningful analysis. No rules yet; trade normally and the log will fill in.
---