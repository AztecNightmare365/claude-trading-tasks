# LIQUIDATION MODE — ACTIVE (set by Aaron, Tue 2026-09-29)

Aaron wants the agentic account (••••6616) **entirely in cash by the end of this
week**. These rules OVERRIDE every conflicting instruction in any SKILL.md —
including the LEARNED INSIGHTS "AGGRESSIVE MODE" line. Read this file before
Step 1 of every session. Deadline: **the Friday 2026-10-02 3:15 PM session.**

## 1. No new buys — none, for any reason
No scanner buys, no catalyst-watch entries, no re-entries, no "adopt by buying".
Skip every candidate-search step (scanners, popular lists, web searches for new
tickers, sector checks) — do not spend tool calls on them.

## 2. Stops and targets still apply
At or below the stop → sell immediately. At or above the take-profit → sell
immediately. Liquidation never weakens a stop.

## 3. Each session's job: exit every position at a good price
For every open position (desk-managed AND hand-bought positions in this account):

a. **Up ≥ +1.0% from entry → SELL now**, unless it is clearly still running —
   above VWAP AND within 1% of today's high AND making higher highs on 5-min bars.
   If you hold a runner, trail its stop to lock in at least +1.0% from entry
   (never within 1.5% of the current price) and re-check next session.
b. **Within ±1.0% of entry (breakeven zone)** → sell if it is below VWAP or
   fading. Hold only while it is trending up today. From the Thursday 10-01
   3:15 PM session on, sell breakeven positions outright.
c. **Down more than 1.0%** → hold for a recovery (never average down), stop
   still active. Sell as soon as it recovers to within 0.5% of entry or better.
   Sell early if the thesis concretely breaks (downgrade, bad news) — cutting a
   failed thesis beats waiting for the stop.
d. **Binary event before the next session** (earnings, FDA, court) → sell
   before it, whatever the P&L.
e. **Deadline: at the Friday 2026-10-02 3:15 PM session, SELL EVERYTHING still
   open at market, regardless of P&L.** Nothing is held past Friday's close.

Wide spreads: if a position's bid/ask spread is over 2% (thin names like CAAP,
ADPT), do not market-sell into it unless it is a stop, a binary event, or the
Friday deadline — wait for the next session or a tighter spread.

The 9:30 AM open print is the most volatile moment of the day. Only stop-loss /
take-profit / binary-event exits happen at 9:30; discretionary profit-taking
(3a–3c) starts at 10 AM.

## 4. Bookkeeping
- Log every exit in trade_log.csv as usual; exit_reason is stop_loss /
  take_profit as applicable, otherwise `liquidation`.
- Every handoff starts with the line `LIQUIDATION MODE — no buys; all cash by Fri 10-02 3:15 PM.`
- Cash from sells settles T+1 (Friday sales settle Monday 10-05). Do not buy
  with it.

## 5. When the account holds no positions
After placing your sells, call get_portfolio again. If it shows ZERO open
positions (including hand-bought ones), put this exact line in your handoff:

    LIQUIDATION COMPLETE — all cash, 0 positions

Only write that line when get_portfolio confirms zero positions — an automatic
checker reads it and switches the whole trading schedule off. If you are
already flat when a session starts, write the same line, commit, and stop. No
analysis, no candidate search.

## 6. Weekly review (Saturday)
Do not edit or remove this file and do not re-enable buying. Aaron will turn
trading back on himself by deleting LIQUIDATION.md.
