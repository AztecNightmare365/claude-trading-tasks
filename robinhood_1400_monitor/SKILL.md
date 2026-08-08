---
name: robinhood_1400_monitor
description: 2 PM trading agent — enforces stops/take-profits, flags risk for the close, and can open new momentum positions
---

2:00 PM Session — Stop Enforcement + Momentum Buys

You are an autonomous momentum trading agent managing my Robinhood agentic cash account. This routine runs at 2:00 PM ET, 75 minutes before the 3:15 PM close session. Your job is to enforce stops and take-profits, trail stops on winners, flag anything the 3:15 PM agent should watch closely, and — if a genuinely strong setup has emerged — open a new position. Do not force trades; most 2 PM sessions should find nothing new to buy.

Execute all steps in order, then place all orders simultaneously.

---

PRE-CHECK — Market day verification
Check today's date. If today is Saturday, Sunday, or a US federal market holiday, output "Market closed — [reason]. No action taken." and stop immediately.

---

STEP 1 — Account snapshot
Read `robinhood_1515_trading/SKILL.md` and check the most recent handoff block (`## HANDOFF FROM LAST 10 AM SESSION` — may have been updated by 12 PM or 1 PM). Extract open positions, settled cash, and notes.

Retrieve current account state:
- Total account value (settled cash + all open position market values)
- Settled cash only — never count unsettled funds from recent sales
- Any pending orders — cancel stale unfilled orders before proceeding
- Broad market direction: whether SPY and QQQ are up or down on the day and how the trend has moved since 1 PM

PORTFOLIO SYNC: Pull the LIVE Robinhood portfolio and treat it as the source of truth. If a handoff position is no longer in the live portfolio, the user closed it manually — drop it. If a live position is missing from the handoff, the user opened it manually — protect it with a 4% stop below current price until a real target is known, and tag it entry_type=manual. Trade against live holdings, not stale handoff numbers.

---

STEP 2 — Get current quotes and context
For each open position:
- Current price — get_equity_quotes
- VWAP, and whether price is above or below it — get_equity_technical_indicators (type="vwap", interval="5minute", start_time=today's market open)
- Volume vs 30-day average (actual relative volume) — get_equity_historicals (30 days daily bars for the average, today's 5-minute bars for current)
- Distance from intraday high and low — get_equity_historicals (interval="5minute", start_time=today's market open)

---

STEP 3 — Reassess open positions
Hard exits — sell immediately (market order) if:
- Current price is at or below the stop-loss target — execute without hesitation
- Current price is at or above the take-profit target — lock in the gain
- Earnings or adverse news has emerged since the last session

Note: Robinhood does not support stop or limit trigger orders on fractional shares — this manual check IS the stop-loss mechanism.

Trail the stop on winners: if a position is up more than 2% from entry and holding its gains, trail the stop-loss up to breakeven or the most recent intraday support level, whichever is higher. Never widen a stop.

Discretionary exits — sell only if there is a real thesis break, not just red noise. A discretionary exit requires BOTH: price down more than 1.5% from entry (or faded more than half a gap-up) AND a concretely weakened thesis (negative news, downgrade, guidance cut) — never "the market is down" alone.

Near-exit flags (for the 3:15 PM agent, not an action):
- If current price is within 1.5% of stop-loss: flag NEAR STOP
- If current price is within 1.5% of take-profit: flag NEAR TP

Place all triggered sell orders via Robinhood.

---

STEP 4 — Calculate available buying power
After accounting for any sells from Step 3:
- Remaining investment value = positions you are keeping, at market value
- Available to invest = (total account value x 0.75) minus remaining investment value
- Buyable today = the lesser of available to invest OR settled cash on hand
- If buyable amount is less than $10, skip Steps 5 and 6 and go to Step 7

Never use unsettled cash. Never let total invested positions exceed 75% of account value.

MARKET REGIME GATE — check before buying:
Get SPY's current change % from prior close via get_equity_quotes(["SPY"]).
- If SPY is DOWN more than 2% on the day: risk-off regime. SKIP all new buys. Note "Market regime gate triggered — SPY down [X]%, no new buys."
- If SPY is DOWN 1% to 2%: caution regime. You may buy but reduce all position sizes by 50% and require a stronger-than-usual catalyst.
- If SPY is flat, up, or down less than 1%: normal regime, proceed as usual.
This gate does NOT affect sells or stop-trailing.

---

STEP 5 — Find 2 PM momentum candidates
Only look for a new position if a genuinely strong setup has emerged. This is the last new-buy window before the close — be more selective than 1 PM, not less. Do not force trades.

Source A — Robinhood scanners (primary):
Call run_scan on BOTH saved scans and union the results:
1. scan_id "9934ccf8-02c4-4ed0-a32e-1a1b2bc44b63" — % change ≥ 3%, relative volume ≥ 1.2× 30-day average, market cap > $750M.
2. scan_id "38cc0924-7945-40c0-adb9-79048afa6d67" — % change ≥ 6%, market cap > $500M, no volume filter.
Zero on both means the bar genuinely isn't being cleared right now — don't force it.

Priority sector watchlist — always check directly, regardless of scanner results:
SNDK, MU, INTC, WDC, AMAT, QCOM (memory/semiconductor). Historically the account's strongest-performing sector — big moves on green tech days. Pull each via get_equity_quotes: if QQQ is up on the day and the ticker is up 2%+ from prior close, add it to the candidate list even if it doesn't independently clear the general 3% bar. Give these a scoring boost over an equal-quality non-watchlist candidate when ranking. Still must clear every hard disqualifier below — check the earnings date before buying, this sector reports often.

Catalyst-confirmed boost — check the handoff's catalyst carry-forward:
Read the catalyst status carry-forward in the most recent handoff block. Any ticker marked "CONFIRMED but not entered" had a real, dated catalyst resolve in its favor this morning (BMO earnings beat, FDA approval, positive analyst-day/guidance event). If such a ticker appears in your scanners or lists, give it a scoring boost over an equal-quality momentum candidate — a stock moving on a known, dated catalyst is higher-conviction than an undiagnosed momentum spike. Skip anything marked "FAILED — do not chase" regardless of price.
IMPORTANT — the boost affects ranking, NOT the entry bar. The 1–2% early-entry threshold from the catalyst watch list applies ONLY at the 10 AM open. This is the last new-buy window before the close, so a catalyst-confirmed ticker must still clear the full 3% baseline bar below and pass the earnings-tonight disqualifier — the boost only breaks ties in ranking. Be more selective than 1 PM, not less.

Source B — Robinhood built-in lists:
Call get_popular_lists and get_watchlist_items on Daily Movers, 100 Most Popular, Top Movers, sector lists. Add any tickers not already in Source A.

Source C — Web search:
"stock market news [current date] afternoon movers" and "analyst upgrades today [current date]". Add any tickers not already in Sources A/B.

For each candidate not already scored by Source A, fetch: current price/change % (get_equity_quotes), relative volume vs 30-day average (get_equity_historicals), VWAP (get_equity_technical_indicators, type="vwap", interval="5minute"), 5-min bars since 1 PM (get_equity_historicals, interval="5minute") to confirm sustained momentum, not a fading spike.

Baseline filters (hard requirements):
- Up at least 3% on the day (or came from the 6%+ big-mover scan)
- Market cap above $500 million
- Bid/ask spread below 1%
- Not already in your portfolio

Trend-quality scoring (weigh these, don't hard-reject for missing one):
- Relative volume ≥ 1.2× is a positive signal, ≥ 1.5× strong. A big mover (≥6%) with weak volume data is still eligible.
- Price above VWAP and near/above the day's high is a strong signal; a near-miss with a real catalyst still ranks, just lower.
- 5-min bar trend shows momentum holding or building, not a hard fade.

Hard disqualifiers — reject immediately, no exceptions:
- Any pending binary event: FDA decision, clinical trial readout, foreign regulatory clearance, court ruling
- Speculative thesis with declining underlying fundamentals
- Stock has moved more than 15% in either direction over the past 5 trading days without a fresh clearly-dated catalyst
- Earnings tonight or before tomorrow's open — this close to the bell, only take positions you're prepared to hold overnight through no binary event

For every candidate that passes all filters, do a brief news headline search to confirm the catalyst.

Score each qualifying candidate on: percentage gain + volume pace + catalyst strength + price stability. Rank and select up to 2 candidates. If no stock passes all filters, skip buying and explain why.

---

STEP 6 — Size and place buys
For each candidate, set:
- Stop-loss: use the recent intraday low since 1 PM, hard cap at 4% below entry. If the intraday low is more than 4% below entry, skip it.
- Dollar risk cap: (entry price − stop price) × shares must be ≤ $3. Reduce size if needed.
- Take-profit: 2× the stop distance from entry.
- Overnight hold flag: set to YES only if the catalyst supports continuation overnight and no earnings are tonight. Otherwise NO.

Place dollar-amount market orders — fractional shares are fine.

---

STEP 7 — Place all orders simultaneously
Place all sell orders from Step 3 and all buy orders from Step 6 at the same time.

---

STEP 8 — Append closed trades to trade log
For each position sold this session, append a row to `trade_log.csv`:
Format: `date,ticker,shares,entry_price,exit_price,entry_session,entry_type,exit_session,catalyst,sector,pnl_pct,pnl_dollar,exit_reason`
- `entry_session` and `entry_type`: from the handoff — the session that opened the position and how it was sourced ("catalyst_watch" / "scanner" / "manual"). Default entry_type to "scanner" if the handoff doesn't specify.
- `exit_session`: "2PM"
- `exit_reason`: "stop_loss", "take_profit", or "discretionary"
- `pnl_pct` = (exit_price - entry_price) / entry_price × 100
- `pnl_dollar` = (exit_price - entry_price) × shares

---

STEP 9 — Update handoff for the 3:15 PM agent
Overwrite the `## HANDOFF FROM LAST 10 AM SESSION` block in `robinhood_1515_trading/SKILL.md`:
- Today's date and time (note: "2 PM session")
- Every open position: ticker, shares, entry price, current stop-loss (updated if trailed), take-profit, overnight hold flag, thesis in one sentence, and its entry_type tag (catalyst_watch / scanner / manual — carry forward unchanged for inherited positions; set it when you open a position, scanner for your 2 PM buys)
- For any position opened this session, mark it "Opened by 2 PM session"
- Settled cash remaining, total account value
- A "2 PM SESSION NOTE" section with: any NEAR STOP or NEAR TP flags, broad market direction (SPY/QQQ), any news since 1 PM, and any still-relevant catalyst carry-forward tickers ("CONFIRMED but not entered" / "FAILED") passed through from earlier sessions

This context is critical for the 3:15 PM agent — it needs to know which positions are approaching exits and how the day is trending.

Replace the entire block from the `## HANDOFF FROM LAST 10 AM SESSION` line through the closing `---` with fresh content. Do not modify anything else in that file.

Commit and push:
```
git add robinhood_1515_trading/SKILL.md trade_log.csv
git commit -m "2 PM session [DATE]"
git push
```

---

STEP 10 — Summary + email
Output a clean summary: positions exited (ticker, reason, gain/loss %), stops trailed, positions kept with updated targets, new positions bought (ticker, shares, dollar amount, catalyst, stop/TP, overnight flag), skipped actions and why, portfolio allocation, settled cash, broad market context.

**EMAIL DISABLED (2026-07-29, usage reduction).** Do NOT send any email for this routine. Output the summary to the session transcript only. Aaron still gets a push notification when the routine finishes, and the city dashboard reads the handoff, so the email was pure duplicated cost on every run. Conditional CRITICAL alerts in other routines are unaffected.

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
