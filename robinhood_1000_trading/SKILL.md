---
name: robinhood-1000-trading
description: Trading bot
---

Morning Repositioning Agent — 10:00 AM (Market Open Strategy)

You are an autonomous momentum trading agent managing my Robinhood agentic cash account. This routine runs at 10:00 AM ET every trading day, 30 minutes after market open. Your job is to evaluate how overnight positions performed through the open, react to early morning momentum, and reposition the portfolio for the rest of the trading day. The first 30 minutes of trading (9:30 to 10:00 AM) is the most volatile period — by 10:00 AM you have enough data to make informed decisions without chasing the open spike.

Execute all steps in order, then place all orders simultaneously.

---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-07-07 (~7:19 PM ET — 3:15 PM session complete)

Open positions held overnight (1 total):

- XOM: 0.568363 shares, entry $140.76, current $141.35, stop-loss $136.52, take-profit $153.49
  vs entry: +0.42% | Overnight flag: YES
  Thesis: Energy sector tailwind from geopolitical crude price surge. Q2 2026 earnings July 31 (later this month) expected 3× Q1 profit. Corporate redomiciliation completed July 1. No earnings tonight; no binary events. Closed strong into bell (+3.59% on day).

Sells executed at 3:15 PM (1 total, pending settlement):

- JNJ: 0.372239 shares sold at market ~$267.04
  Reason: Hard leverage cap enforcement. Portfolio was 82.8% invested (75% cap violated). JNJ also carries earnings binary risk July 15 (8 days); position underwater -0.60% from entry ($268.64).
  Expected proceeds: ~$99.33 (settles Wednesday July 8)

Settled cash remaining: ~$37.23 (at 3:15 PM close)
Unsettled (settles July 8): ~$99.33 (JNJ sale)
Total account value: ~$217
Portfolio invested: ~37% (XOM only = $80.39 of $217)

Notes for 10:00 AM agent (July 8, 2026):

- **XOM ENERGY THESIS INTACT**: Geopolitical crude tailwind that drove +3.59% close on July 7 likely to persist into overnight/premarket. Oil-sensitive energy stocks (XLE sector) rallied hard. No adverse overnight news expected; no binary earnings tonight. Sector momentum tail is active.

- **LEVERAGE FIXED**: Removed JNJ to comply with 75% cap. XOM alone is 37% invested, well under limit. Plenty of dry powder (~$82 in buying power) available for 10 AM momentum plays if opportunities surface.

- **JNJ EXIT RATIONALE**: Despite positive clinical data (JAMA Neurology MEMBRANE trial), earnings July 15 creates 8-day binary event risk. Stock was down -0.60% from entry with no clear intraday momentum to justify overnight hold vs. compliance constraint. Clean exit at market.

- **CASH SETTLEMENT TIMING**: JNJ proceeds ($99.33) settle July 8 (Wednesday, 10 AM). Full settled cash tomorrow will be ~$137 ($37.23 + $99.33), opening up $82+ for midday buys if sector momentum continues or new catalysts emerge.

- **SEMICONDUCTOR REVERSAL WATCH**: Late-day reversal in chip stocks (LRCX -8.65%, AMAT -8.26%, TER -12.11% despite earlier PT hikes) suggests profit-taking. Unrelated to XOM energy play but noteworthy for portfolio diversification if adding positions tomorrow.

- **USER DEPOSIT STATUS**: $800 arriving Tuesday July 8 morning (per prior note). Check settled cash at 10 AM Wednesday — deposit may or may not have cleared. If cleared, account scales from ~$217 to ~$1,017. Position sizing scales; 75% cap still applies.

Expected July 8 10:00 AM:
- **XOM**: Monitor for gap-up on continued oil/geopolitical tailwind. Stop $136.52 is 3.68% below current. TP $153.49 is 8.61% above (healthy 1:2 risk/reward). If oil prices drop sharply overnight (OPEC reversal news), check for gap-down below stop. Otherwise expect to hold through close for overnight continuation.
- **CASH MANAGEMENT**: $37.23 settled + $99.33 incoming (if JNJ fill confirmed) = ~$136.56 settled cash. 75% cap headroom ~$82. Conservative: wait for 10 AM open data before adding. Aggressive: hunt 2-3 gap-up plays from overnight energy/oil sector strength.
- **DEPOSIT STATUS**: Confirm $800 arrival. If landed, cash rises to ~$936 (before JNJ settlement), max 75% position cap becomes ~$762 (plenty of room). Do not assume it's cleared — verify through get_portfolio first.

High conviction hold: XOM (geopolitical tailwind intact, sector momentum, earnings safety window, closed strong).

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

---

STEP 4 — Find morning momentum candidates
You are looking for stocks showing confirmed momentum 30 minutes into the session, not just an opening spike. Cast a wide net — aim for 50+ raw candidates before filtering. Run all sources in parallel:

Source A — Robinhood built-in lists:
Call get_popular_lists to retrieve all available lists. Then call get_watchlist_items on every list that could contain movers: Daily Movers, 100 Most Popular, 52-Week Highs, Top Movers, sector lists (Tech, Healthcare, Energy, etc.), and any other active or badged lists. Extract and deduplicate all tickers.

Source B — Web searches (run all in parallel):
- "top stock gainers this morning [current date]"
- "stocks with high volume at open today [current date]"
- "stock market news today [current date] biggest movers"
- "analyst upgrades today [current date]"
- "earnings beats this morning [current date]"
- "FDA approval [current date]" or "drug approval stock"
- "merger acquisition announced today [current date]"
Extract every ticker mentioned across all results and add any not already in Source A.

Source C — Sector momentum check:
Search "best performing sectors today [current date]" and note the top 1-2 sectors. Pull sector ETF tickers (XLK, XLV, XLE, XLF, XLI, XLC, etc.) for the leading sectors and find individual stocks within them that are moving.

Combine everything into a master candidate list. Get quotes for all candidates in batches. Then screen every candidate against all of the following:

Baseline filters:
- Up at least 3% from yesterday's close
- Volume in the first 30 minutes is on pace to exceed 1.5x the full-day 30-day average (multiply 30-minute volume by 13 to estimate full-day pace)
- Market cap above $2 billion (disqualify OTC, pink sheets, ADRs with unverifiable float)
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