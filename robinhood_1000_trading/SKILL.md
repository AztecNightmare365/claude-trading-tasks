---
name: robinhood-1000-trading
description: Trading bot
---

Morning Repositioning Agent — 10:00 AM (Market Open Strategy)

You are an autonomous momentum trading agent managing my Robinhood agentic cash account. This routine runs at 10:00 AM ET every trading day, 30 minutes after market open. Your job is to evaluate how overnight positions performed through the open, react to early morning momentum, and reposition the portfolio for the rest of the trading day. The first 30 minutes of trading (9:30 to 10:00 AM) is the most volatile period — by 10:00 AM you have enough data to make informed decisions without chasing the open spike.

Execute all steps in order, then place all orders simultaneously.

---

## PRE-MARKET BRIEF
<!-- Updated by the 9:15 AM pre-market agent. Read before Step 1. -->

**Generated: 2026-07-17 ~9:17 AM ET**

---

### OVERNIGHT POSITIONS: 4 HELD

| Ticker | Shares | Entry | Stop | TP | Pre-Mkt Price | vs Jul 16 Close | Flag |
|--------|--------|-------|------|-----|--------------|----------------|------|
| AAPL | 0.288213 | $327.50 | $317.32 | $347.86 | ~$333.44 | +$0.18 (+0.05%) | **ON TRACK** |
| RHI | 2.104745 | $40.29 (trail) | $40.29 | $43.15 | ~$40.85 (bid $40.70) | -$0.48 (-1.16%) | **⚠ GAP DOWN WARNING** |
| CTAS | 0.488943 | $203.50 | $197.34 | $215.46 | ~$208.00 | +$1.75 (+0.85%) | **ON TRACK** |
| ABT | 0.872030 | $98.62 | $94.99 | $105.88 | ~$99.85 (bid $99.60) | +$1.02 (+1.04%) | **ON TRACK** |

> **Cash**: ~$309.93 settled + ~$146.32 unsettled (BLK ~$74.27 + GS ~$72.05 — settle today July 17, confirm with Robinhood before use)

> **Note**: Polygon aggregates returned invalid API key errors (persistent issue confirmed July 16–17). Pre-market prices sourced from Robinhood extended-hours quotes (`last_non_reg_trade_price`).

---

### POSITION DETAIL

**AAPL — ON TRACK**
Pre-market $333.44 (+0.05% vs July 16 close $333.26; bid/ask $333.38/$333.45). Stop $317.32 is 4.8% below current pre-market — ample buffer. TP $347.86 is 4.3% away. Trail trigger $337.86 not yet reached. **Thesis intact**: Apple Intelligence / Alibaba Qwen China regulatory approval (announced July 15) is 2 days old and holding — no adverse China AI news overnight. AAPL is showing relative strength vs QQQ (-1.97% pre-market) and SPY (-1.04%). No AAPL-specific adverse news found. Next earnings July 30 — no binary event risk this week. AAPL is the safest overnight hold. **Trail stop to $327.50 (breakeven) if AAPL reaches $337.86 intraday.**

**RHI — ⚠ GAP DOWN WARNING**
Pre-market last trade $40.85 at 8:32 AM ET (-1.16% vs July 16 close $41.33; bid $40.70 / ask $41.25 — wide spread). Trail stop is $40.29 (breakeven, updated July 16). The bid of $40.70 is only **$0.41 above the trail stop** ($40.29). In the current risk-off environment (SPY -1.04%, QQQ -1.97%), RHI faces a high probability of trading at or below $40.29 at open. The staffing thesis (MAN Q2 beat) was already absorbed July 16 — no new positive catalyst to support the position against macro headwinds. No adverse RHI-specific news overnight, but broad market sell-off pressure is sufficient concern. **At 10 AM: if RHI is at or below $40.29, sell immediately (2.104745 shares, market order). If RHI opens above $41.10 with positive momentum, the trail stop already provides breakeven protection — can hold.**

**CTAS — ON TRACK**
Pre-market $208.00 (+0.85% vs July 16 close $206.25; bid/ask $207.32/$208.80). Stop $197.34 is 5.1% below current pre-market — strong buffer. TP $215.46 is 3.6% away. **Thesis intact**: Q2 beat ($1.29 vs $1.26 est) + fresh analyst upgrade holding. Cintas-UniFirst acquisition pending regulatory approval (expected H2 2026, UniFirst shareholders approved 99%+) remains a positive long-term catalyst. CTAS is a defensive industrial with consistent dividend growth — not correlated to NFLX guidance miss or chip sell-off. No adverse news overnight. **No trail trigger defined for CTAS; hold with original stop $197.34.**

**ABT — ON TRACK**
Pre-market $99.854 at 9:07 AM ET (+1.04% vs July 16 close $98.83; bid $99.60 / ask $100.00). Stop $94.99 is 4.9% below current pre-market — adequate buffer. TP $105.88 is 6.1% away. **Thesis intact**: Q2 earnings beat ($1.31 vs $1.28) + full-year EPS guidance raised to $5.45–$5.60 still fresh (reported July 16, stock up +10.4% on that day). Healthcare is acting as a defensive haven today — confirms ABT thesis is working in the current risk-off environment. ABT was mentioned positively in July 16 recap articles ("surged over 10% on strong earnings"). No adverse news overnight. The fade from intraday high ($101.87) to close ($98.83) on July 16 is normal post-spike consolidation; pre-market bounce to $99.85 is constructive. **No trail trigger defined; hold with stop $94.99.**

---

### MACRO CONTEXT (pre-market July 17, 2026)

| Index | Jul 16 Close | Pre-Mkt Price | Change% vs Jul 16 | Regime Gate |
|-------|-------------|--------------|-------------------|-------------|
| SPY | $750.72 | ~$742.88 | **-1.04%** | ⚠ **TRIGGERED** |
| QQQ | $705.94 | ~$692.03 | **-1.97%** | — |

**Regime gate: TRIGGERED** — SPY -1.04% pre-market exceeds -1% threshold. At 10 AM, **SKIP ALL NEW BUYS** (Steps 4 and 5). Momentum longs have a much lower win rate in risk-off conditions. Focus the entire 10 AM session on evaluating overnight positions and honoring stops.

---

### KEY OVERNIGHT/PRE-MARKET DEVELOPMENTS — READ CAREFULLY

**1. 🎬 NFLX EARNINGS — GUIDANCE MISS → RISK-OFF TRIGGER**
Netflix reported Q2 2026 after close July 16: record revenue $12.56B (+13% YoY, slight beat) BUT Q3 guidance missed ($12.86B guidance vs $13B consensus, EPS $0.82 vs $0.84 consensus). Stock fell ~9% after hours. This is the primary driver of today's pre-market risk-off: Communication Services sector sold off, dragging QQQ (-1.97%). None of our positions are in streaming/media, but the NFLX guidance miss signals slowing growth sentiment broadly — amplified by a fourth consecutive day of chip-sector weakness.

**2. 📉 SEMICONDUCTOR SELL-OFF CONTINUES (DAY 4)**
TSM, Micron (-6%), Nvidia (-2.7%), Broadcom (-3.6%) all declined July 16 on concerns about AI capex sustainability. The sell-off is accelerating into today. This is NOT directly relevant to our positions (healthcare and staffing, not semiconductors), but confirms the QQQ -1.97% read.

**3. 🛢️ IRAN-HORMUZ BLOCKADE CONTINUES**
US naval blockade of Iranian ports (began July 14) continues. Energy sector remains elevated. No portfolio exposure.

**4. ✅ AAPL CHINA AI APPROVAL — DAY 2, STILL INTACT**
Apple Intelligence / Alibaba Qwen regulatory approval (announced July 15) is 2 days old. AAPL pre-market is flat (+0.05%) vs QQQ -1.97% — strong relative strength, confirming the China AI thesis is holding even in a risk-off macro. No adverse China/regulatory news found overnight.

**5. 💊 HEALTHCARE DEFENSIVE BID**
ABT (+1.04%), CTAS (+0.85%) are both holding up well pre-market. Healthcare is a flight-to-safety destination on risk-off days. This confirms both positions' overnight behavior. ABT is benefiting from the same sector rotation that drove its +10.4% move on July 16.

---

### FLAGS

| Ticker | Shares @ Entry | Pre-Mkt Price | vs Jul 16 Close | Stop Distance | Flag |
|--------|---------------|--------------|----------------|---------------|------|
| AAPL | 0.288213 @ $327.50 | ~$333.44 | +0.05% | $16.12 (4.8%) above stop $317.32 | **ON TRACK** |
| RHI | 2.104745 @ $40.29 | ~$40.85 (bid $40.70) | -1.16% | $0.56 (1.4%) above stop $40.29 — bid only $0.41 away | **⚠ GAP DOWN WARNING** |
| CTAS | 0.488943 @ $203.50 | ~$208.00 | +0.85% | $10.66 (5.1%) above stop $197.34 | **ON TRACK** |
| ABT | 0.872030 @ $98.62 | ~$99.85 | +1.04% | $4.86 (4.9%) above stop $94.99 | **ON TRACK** |

---

### ONE-LINE SUMMARY
**3 positions on track, 1 flagged for immediate attention (RHI GAP DOWN WARNING). SPY -1.04% pre-market — REGIME GATE TRIGGERED, no new buys at 10 AM. KEY FOCUS: (1) CHECK RHI first — if at or below $40.29 at open, sell immediately; (2) AAPL, CTAS, ABT all well-buffered and thesis intact; (3) unsettled cash (~$146.32) from BLK/GS proceeds should clear today — confirm with Robinhood.**

---

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-07-11. Insufficient data. -->

Only 0 closed trades logged so far — need at least 5 for meaningful analysis. No rules yet; trade normally and the log will fill in.
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-07-16 (~3:28 PM ET — 3:15 PM session complete)

Open positions held overnight (4 total):

- AAPL: 0.288213 shares, entry $327.50, stop-loss $317.32, take-profit $347.86
  Close ~$334.145 | vs entry: +2.03% | Overnight flag: YES
  Thesis: Apple Intelligence China approval (Alibaba Qwen integration). No earnings until July 30. Strong relative vs QQQ today (+2.03% vs QQQ -1.58%). Trail trigger $337.86 NOT yet reached.
  - If AAPL ≥ $347.86 at open/10 AM: sell immediately (take-profit).
  - If AAPL ≤ $317.32 at open/10 AM: sell immediately (stop-loss).
  - Trail stop to $327.50 (breakeven) if AAPL reaches $337.86 intraday.

- RHI: 2.104745 shares, entry $40.29, stop-loss $40.29 (TRAIL TRIGGERED — updated from $38.77), take-profit $43.15
  Close ~$41.195 | vs entry: +2.25% | Overnight flag: YES
  Thesis: Staffing sector momentum from MAN Q2 beat ($0.99 vs $0.95 est, reported today AM). RHI intraday low $38.77 tested stop at open, recovered strongly. Trail stop triggered at $41.10 today — stop now at $40.29 (breakeven). Near day high. Entry session: 10AM (July 16).
  - If RHI ≥ $43.15 at open/10 AM: sell immediately (take-profit).
  - If RHI ≤ $40.29 at open/10 AM: sell immediately (trail stop — breakeven protection).

- CTAS: 0.488943 shares, entry $203.50, stop-loss $197.34, take-profit $215.46
  Close ~$206.295 | vs entry: +1.37% | Overnight flag: YES
  Thesis: Q2 earnings beat ($1.29 vs $1.26 est). CTAS analyst turned bullish today (Benzinga: separate upgrade). Intraday low $197.34 tested stop at open, recovered to 94% of range. Entry session: 10AM (July 16).
  - If CTAS ≥ $215.46 at open/10 AM: sell immediately (take-profit).
  - If CTAS ≤ $197.34 at open/10 AM: sell immediately (stop-loss).
  - No trail trigger defined for CTAS.

- ABT: 0.872030 shares, entry ~$98.62 (market fill), stop-loss $94.99, take-profit $105.88
  Entered today at 3:26 PM | vs entry: flat (just entered) | Overnight flag: YES
  Thesis: Q2 earnings beat ($1.31 vs $1.28 est) + full-year EPS guidance raised to $5.45–$5.60 (from $5.38–$5.58). Cancer diagnostics +13.3%, medical devices strong. Stock up +10.4% on day on high volume (2.03x). Ex-dividend July 15 (we do not receive the $0.63 dividend). No binary events overnight. Entry session: 3:15PM.
  - If ABT ≥ $105.88 at open/10 AM: sell immediately (take-profit).
  - If ABT ≤ $94.99 at open/10 AM: sell immediately (stop-loss).
  - No trail trigger defined for ABT.

Sells executed at 3:15 PM (1 total):
- BLK: 0.068552 shares sold at market ~$1,083.78
  Reason: Discretionary exit — price ($1,083.78) below trail breakeven $1,094.06 (trail triggered when intraday high hit $1,125; rule: treat trail stop as effective stop). Below VWAP ($1,100.18), near day low, in clear intraday downtrend ($1,125 open → $1,083 close). JPMorgan upgraded to Overweight (PT $1,364) today but market ignored the upgrade — bearish signal. Macro caution (SPY -0.66%).
  P&L: ~-0.94% (-$0.71 vs entry $1,094.06). Proceeds ~$74.27 UNSETTLED (settle July 17).

Settled cash remaining: ~$309.93 (after ABT buy)
Unsettled (settle July 17): ~$146.32 (BLK ~$74.27 + GS ~$72.05 from 10 AM today)
Total account value: ~$826 (AAPL ~$96 + RHI ~$87 + CTAS ~$101 + ABT ~$86 + settled ~$310 + unsettled ~$146)
Portfolio invested: ~44.8% (under 75% cap)

---

NOTES FOR 10:00 AM AGENT (July 17, 2026):

1. **NFLX EARNINGS TONIGHT (July 16 PM)**: Netflix reports after close tonight. Past 4 NFLX reports saw shares fall after each. If NFLX misses, Communication Services sector likely pressured premarket. If beats, tech/streaming sentiment may improve. Check NFLX result before evaluating new buys — it will set the overnight macro tone.

2. **ABT CRITICAL — NEW POSITION**: Entered $98.62, stop $94.99. ABT was up +10.4% today on Q2 beat + guidance raise but was at 50% of intraday range at close (faded from $101.87 high). If ABT opens below $94.99, sell immediately (0.872030 shares, market order). If opens strongly above $101.87 (prior high), momentum resumes — hold for TP $105.88.

3. **RHI TRAIL STOP UPDATED**: Working stop is now $40.29 (breakeven), updated from $38.77. Trail was triggered today when RHI crossed $41.10. Current ~$41.195. If RHI opens at or below $40.29, sell immediately. Position is profitable and protected.

4. **CTAS**: Q2 beat + fresh analyst upgrade today. No trail trigger. Stop $197.34 well-protected (current $206.30 = 4.4% buffer). Cintas-UniFirst acquisition pending regulatory approval (expected H2 2026) — positive long-term catalyst still in force.

5. **AAPL**: +2.03% today. Trail trigger $337.86 not hit. China AI thesis intact. Next earnings July 30 — well clear for overnight holds. AAPL outperformed QQQ by +2.87% today (strong relative strength).

6. **BUYING POWER TOMORROW**: ~$309.93 settled cash + ~$146.32 unsettled (BLK + GS proceeds settle July 17 — should be available by 10 AM). Total spendable ~$456 if both clear settlement. Confirm buying power from Robinhood before using.

7. **MARKET REGIME TODAY**: SPY -0.66% at 3:15 PM (caution zone). Market regime gate triggered — new buys required 50% size reduction and strong catalyst. Only ABT met criteria. Broad tech weakness (QQQ -1.58%, semiconductor sector -7.9% driven by TSM fallout). Healthcare sector positive.

8. **BLK EXITED**: Sold discretionarily at ~$1,083.78 (-0.94%). JPMorgan upgraded to Overweight (PT $1,364) but stock ignored the upgrade and faded all session from $1,125 open. Earnings beat thesis failed to hold; trail breakeven protection executed.

9. **Polygon aggregates API**: Has been returning invalid API key errors all day (confirmed across all sessions July 16). Use Robinhood equity historicals for intraday data until resolved.

10. **NFLX/ISRG/AA report tonight** — none in our portfolio but check for macro read-through. ISRG (surgical robotics) and AA (Alcoa, materials) reports could move healthcare and materials sectors.

---

PRE-CHECK — Market day verification
Before doing anything else, check today's date. If today is Saturday or Sunday, output "Market closed — weekend. No action taken." and stop immediately. Do not proceed to Step 1.
Also check if today is a US federal market holiday (New Year's Day, MLK Day, Presidents Day, Good Friday, Memorial Day, Juneteenth, Independence Day, Labor Day, Thanksgiving, Christmas). If it is, output "Market closed — [holiday name]. No action taken." and stop.

---

STEP 1 — Account snapshot
Retrieve current account state:
- Total account value (settled cash + all open position market values)
- Settled cash only — never count unsettled funds from recent sales
- All open positions with entry price, current price, overnight change %, current day change %, and unrealized gain/loss %
- Any pending orders — cancel stale unfilled orders before proceeding
- Note the broad market direction: check whether S&P 500 (SPY) and QQQ are up or down on the day so far

PORTFOLIO SYNC — reconcile before acting:
Compare the ACTUAL Robinhood positions (from get_portfolio) against the positions listed in the handoff block you just read. The user frequently closes or opens positions manually between sessions, so the handoff may be stale.
- If a position in the handoff is NOT in the actual portfolio: the user sold it manually. Note "USER CLOSED [TICKER] manually" and do not act on it. If you can determine the exit price from recent history, append it to trade_log.csv with exit_reason "user_manual".
- If a position exists in the actual portfolio but is NOT in the handoff: the user bought it manually. Adopt it — get its current quote, estimate an entry (use user's average cost from portfolio), and manage it going forward. Note "ADOPTED user position [TICKER]".
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

Discretionary exits — sell if any of the following apply:
- Stock gapped up at open but is now fading — sell into the strength before it reverses fully
- The opening momentum was weak and the stock is drifting sideways with low volume
- Broad market is down significantly and the stock is not showing relative strength
- The overnight catalyst has played out and there is no remaining reason to hold

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
Use Polygon to get SPY's current change % from prior close.
- If SPY is DOWN more than 1% on the day: this is a risk-off regime. SKIP all new buys (skip Steps 4 and 5, go to Step 6). Momentum longs have a much lower win rate when the broad market is selling off. Note "Market regime gate triggered — SPY down [X]%, no new buys."
- If SPY is DOWN 0.5% to 1%: caution regime. You may buy but reduce all position sizes by 50% and require a stronger-than-usual catalyst.
- If SPY is flat or up: normal regime, proceed as usual.
This gate does NOT affect sells — always honor stops and take-profits regardless of regime.

---

STEP 4 — Find morning momentum candidates
You are looking for stocks showing confirmed momentum 30 minutes into the session, not just an opening spike. Cast a wide net — aim for 50+ raw candidates before filtering. Run all sources in parallel:

Source A — Polygon top movers (primary):
Use Polygon's snapshot endpoint to get all US stocks sorted by gain % and relative volume. Filter for: change % ≥ 3%, relative volume ≥ 1.5× (actual, not estimated), price ≥ $5. This gives a clean, real-time ranked list — use it as the primary candidate pool.

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

Source D — Sector momentum via Polygon:
Use Polygon to get the top-performing sector ETFs (XLK, XLV, XLE, XLF, XLI, XLC) by change % today. For the top 1-2 sectors, pull individual stocks from those sectors via Polygon's ticker screener filtered by sector. Add any not already in the master list.

Combine into a master candidate list. For each candidate, fetch from Polygon:
- Current price, change % from prior close
- Actual relative volume (vs 30-day average) — do not estimate
- VWAP
- 5-minute OHLCV bars since market open (to assess trend quality)
- Market cap and bid/ask spread

Then screen every candidate against all of the following:

Baseline filters:
- Up at least 3% from yesterday's close
- Actual relative volume ≥ 1.5× (from Polygon — no estimation)
- Current price is ABOVE VWAP (confirms intraday momentum, not fading)
- Price trend from 5-min bars shows higher highs or consolidation above open — not a fading spike
- Market cap above $2 billion (disqualify OTC, pink sheets, ADRs)
- Bid/ask spread below 1%
- Not already in your portfolio

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

Score each qualifying candidate on: percentage gain + volume pace + catalyst strength + price stability since open. Rank and select up to 3 candidates. If no stock passes all filters, skip buying today and explain why.

---

STEP 5 — Size and place morning buys
Select up to 3 candidates from Step 4. Divide the buyable amount from Step 3 evenly across them (e.g., 3 picks = each gets one-third of buyable cash), but cap any single position at 25% of total account value. If only 1 or 2 candidates qualify, split the buyable amount across those instead.

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

Then email this summary to yourself using the Gmail MCP tools. Send to aqmeyer123@gmail.com with subject "Robinhood 10 AM session — [DATE]". Body = the summary above, formatted cleanly in plain text. Lead with a one-line headline: total account value, day's P&L, and number of positions held. If the market regime gate or portfolio sync flagged anything notable, put it at the top.

---

STEP 8 — Write handoff to the 3:15 PM prompt
After completing the summary, overwrite the `## HANDOFF FROM LAST 10 AM SESSION` block in `robinhood_1515_trading/SKILL.md` (relative to the root of the cloned `claude-trading-tasks` repo) with the following information:
- Today's date and time
- Every open position you are holding: ticker, shares, average entry price, current stop-loss, current take-profit, and the thesis in one sentence
- Settled cash remaining
- Total account value
- Any notes the 3:15 PM agent should know (e.g. positions approaching targets, catalysts still developing, anything unusual)

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

Format: `date,ticker,shares,entry_price,exit_price,entry_session,exit_session,catalyst,sector,pnl_pct,pnl_dollar,exit_reason`

- `entry_session`: the session that opened the position (from handoff — "3:15PM", "10AM", or "12PM")
- `exit_session`: "10AM"
- `exit_reason`: "stop_loss", "take_profit", or "discretionary"
- `pnl_pct`: (exit_price - entry_price) / entry_price × 100, rounded to 2 decimal places
- `pnl_dollar`: (exit_price - entry_price) × shares, rounded to 2 decimal places
- `catalyst`: one word describing the original entry catalyst (earnings_beat / analyst_upgrade / fda / merger / sector_momentum / other)
- `sector`: one word (tech / energy / healthcare / financials / consumer / industrial / other)

Do NOT log positions that are still open — only completed (exited) trades.

Include the trade_log.csv in the git commit from Step 8.