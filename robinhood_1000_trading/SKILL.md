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

**Generated: 2026-07-24 ~7:44 PM ET (7 AM overnight-watch agent)**

⚠️ TIMING NOTE: This run executed Friday evening (after the regular close and mid-Friday-AH-session), not at the nominal 7:00 AM slot. Today (Friday July 24) is a trading day, so the market-day precheck passed, but the positions below are being carried through the **weekend** — next trading session is **Monday, July 27, 2026**. No genuine Monday pre-market data exists yet (markets are closed Sat/Sun); prices below are the latest available quotes as of Friday ~7:44 PM ET AH session. The Monday 9:15 AM pre-market agent must refresh all prices at that time — treat this brief as the overnight/weekend risk read, not final Monday pre-market pricing.

---

### OVERNIGHT POSITIONS: 4 HELD (carried from Friday 3:15 PM / 5 PM AH — held over the weekend)

| Ticker | Shares | Entry | Stop | TP | Latest Price (Fri AH) | vs Fri Close | vs Thu Close | Flag |
|--------|--------|-------|------|-----|------------------------|--------------|--------------|------|
| AAPL | 0.588580 | $330.27 | $317.32 | $347.86 | $333.58 (7:42 PM ET) | +0.15% | +3.70% | **ON TRACK** |
| MMM | 0.474448 | $174.94 | $169.00 | $186.82 | $171.10 (4:32 PM ET, stale/thin) | -0.87% | +0.89% | **ON TRACK (tight stop)** |
| HON | 0.243604 | $245.48 | $233.01 | $269.79 | $242.47 (5:57 PM ET) | -0.27% | -1.54% | **ON TRACK** |
| SLB | 1.452000 | $51.65 | $49.755 | $55.44 | $52.2094 (7:14 PM ET) | -0.47% | +10.57% | **ON TRACK (weekend oil risk)** |

> **Data sources**: Robinhood `get_equity_quotes`, `last_non_reg_trade_price` (fallback `bid_price` not needed — all four had recent non-reg trades). "vs Fri Close" compares to today's regular-session close (`last_trade_price`); "vs Thu Close" compares to `adjusted_previous_close` (July 23), which is the field the API still reports as "previous close" since Monday's session hasn't opened yet.

---

### POSITION DETAIL

**AAPL — ON TRACK**
Latest $333.58 (+0.15% vs Friday's $333.07 close; +3.70% vs Thursday). Stop $317.32 is $16.26 (4.88%) below — ample buffer. TP $347.86 is 4.28% away. New positive catalyst found tonight: Ford confirmed Apple Maps will be built into its upcoming EV platform — reinforces thesis (Apple Intelligence / ecosystem expansion / China AI approval, all previously known). No adverse news. Earnings confirmed July 30 AMC — not tonight, no action needed.
**Hold. Stop unchanged at $317.32.**

**MMM — ON TRACK, tight stop buffer**
Latest $171.10 (-0.87% vs Friday's $172.60 close; +0.89% vs Thursday). This price is stale (last trade 4:32 PM ET, thin AH liquidity) — no new print since the 5 PM AH check. Stop $169.00 is $2.10 (1.23%) below — TIGHT, unchanged concern from the 3:15 PM/5 PM handoffs. New development: a third insider sale disclosed (SVP & CAO Theresa Reinseth, 924 shares, ~$156K, ~26% of her holdings) alongside the two exec sales already known from July 23. Pattern continues but is not escalating (smaller sale, still a pattern rather than a single alarming print) and does not override the confirmed Q2 beat/guidance-raise thesis. NOT a thesis break — hold.
**Hold — stop buffer tight, real weekend gap risk. Do NOT widen stop. If MMM opens at/below $169.00 Monday: sell immediately, no discretion.**

**HON — ON TRACK, strengthening**
Latest $242.47 (-0.27% vs Friday's $243.13 close; -1.54% vs Thursday, day range was $239-248). Stop $233.01 is $9.46 (3.90%) below — comfortable buffer. New positive developments: declared $0.70/share quarterly dividend (pays Sept 4); RBC raised PT to $298 (from $272), Citi raised PT to $279 (from $260). Noted for outperforming amid broader geopolitical-tension-driven weakness — relative strength signal. No adverse news.
**Hold. Stop unchanged at $233.01.**

**SLB — ON TRACK, elevated weekend macro risk (oil / Iran talks)**
Latest $52.2094 (-0.47% vs Friday's $52.455 close; +10.57% vs Thursday — stock surged +10.4% Friday, best intraday move in 6+ months, on the Q2 beat plus a new OneSubsea/Eni Baleine Phase 3 subsea EPC award and a new SLB–Liberty Energy AI/data-center power infrastructure alliance). Stop $49.755 is $2.45 (4.70%) below — adequate buffer, and TP $55.44 is 6.19% away.
**Key risk materializing, not just theoretical**: Brent crude fell ~4% Friday to ~$96.78-98/bbl and WTI fell ~3% to ~$89.31, specifically on a Reuters report that Pakistan (with Chinese backing) is pushing to restart US-Iran talks — exactly the weekend risk flagged by the 3:15 PM handoff. SLB's earnings-beat catalyst outweighed the oil move today (stock still up double digits), but if peace-talk momentum builds further over the weekend, oil weakness could pressure SLB at Monday's open even without new SLB-specific news. Thesis (earnings beat / oilfield services demand) is still intact today — this is a macro overlay risk, not a thesis break — so no pre-market action is warranted, but flag for close attention Monday.
**Hold. Stop unchanged at $49.755. Monday 9:15 AM / 9:30 AM agents: check oil price and any Iran-talks headlines before assuming SLB opens clean.**

---

### PRE-MARKET SELLS PLACED
None. No position hit CRITICAL STOP BREACH, GAP DOWN SEVERE, or THESIS BROKEN thresholds — all four are ON TRACK. The bar for pre-market selling was not met (per LEARNED INSIGHTS rule #1, waiting for the open print is preferred over a discretionary weekend-gap call with no actual stop breach or thesis failure).

---

### CATALYST WATCH LIST STATUS

| Ticker | Report Timing | Status | Action |
|--------|---------------|--------|--------|
| BKR | Press release Sun Jul 26 ~5 PM ET; call Mon 9:30 AM ET | CATALYST PENDING | MONITOR — verify at Monday open |
| AZN | Reports Mon Jul 27 BMO; call 6:45 AM ET | CATALYST PENDING | MONITOR — verify at Monday open |
| CDNS | Reports Mon Jul 27 AMC (after Monday's close) | CATALYST PENDING | MONITOR — affects Tuesday 10 AM, not Monday open |

**BKR** — No leaks found. EPS est. $0.51 (-19% YoY). UBS raised PT to $48 ahead of the report (mild positive analyst lean, not a resolved catalyst). Validates/invalidates the SLB oilfield-services thesis depending on outcome — still PENDING.

**AZN** — No leaks found. EPS est. $2.50, revenue est. $15.45B. Prior EU approvals (Enhertu/Trixeo/Etcamah) are old news, already priced in. PENDING.

**CDNS** — No leaks found. EPS est. $2.06, revenue est. $1.58B. Stock already weak into earnings (-9% over 7 days, -13% over 30 days) on competition/valuation concerns despite AuraStack AI product news — soft sentiment heading in. Reports AMC Monday, so this does not factor into Monday's open decision; relevant for Tuesday's 10 AM session. PENDING.

0 of 3 catalyst tickers resolved (all still PENDING — none have reported).

---

### OVERNIGHT MACRO NEWS SUMMARY

- **Oil / Iran talks**: Brent -4% to ~$96.78-98/bbl, WTI -3% to ~$89.31, on a Reuters report that Pakistan (China-backed) is pushing to restart US-Iran talks. Direct risk factor for SLB into Monday.
- **Chip sector selloff continuing (not escalating)**: SNDK -9%, MU -6%, WDC -6% Friday, driven by SK Hynix/Korea memory spillover and Chinese competitor (CXMT/YMTC) concerns — a moderation of Thursday's bigger rout rather than a new shock; some desks (Citi) calling it a buying opportunity. QQQ -1.17% vs Thursday's close as a result.
- **Fed / macro data**: No Fed news today; FOMC decision is Wednesday July 29 (expected hold at 3.50-3.75%). No new jobs/CPI prints; next CPI is August 12. Alphabet's Q2 AI capex guidance raise (to $195-205B from $180-190B) is the standing hyperscaler-capex overhang weighing on tech/growth heading into next week.

**Broad market**: SPY $738.53 (flat, +0.05% vs Thursday), QQQ $683.85 (-1.17% vs Thursday, chip-driven). Regime: NORMAL — no SPY-down-2%+ gate concerns.

---

### ONE-LINE SUMMARY
**4 positions ON TRACK (AAPL, MMM, HON, SLB); 0 flagged for exit, 0 pre-market sells placed. MMM's stop buffer is tight (1.23%) and SLB carries elevated weekend macro risk (oil down ~4% on Iran-talks headlines) — both flagged for close re-check at Monday's open, but neither breached a stop nor broke thesis tonight. 0 of 3 catalyst tickers (BKR/AZN/CDNS) resolved — all still PENDING for Monday/this weekend.**

---

## PRE-MARKET BRIEF
<!-- Updated by the 9:15 AM pre-market agent. Read before Step 1. -->

**Generated: 2026-07-24 ~9:15 AM ET**

---

### OVERNIGHT POSITIONS: 4 HELD

| Ticker | Shares | Entry | Stop | TP | Pre-Mkt Price | vs Jul 23 Close | Flag |
|--------|--------|-------|------|-----|--------------|----------------|------|
| AAPL | 0.288213 | $327.50 | $317.32 | $347.86 | $321.58 | -$0.08 (-0.02%) | **ON TRACK** |
| MMM | 0.474448 | $174.94 | $169.00 | $186.82 | $171.21 (8:47 AM) | +$1.62 (+0.96%) | **ON TRACK** |
| ALLE | 0.520000 | $157.79 | $154.68 | $164.85 | $154.57 (no pre-mkt) | -$0.11 | **⛔ STOP BREACH** |
| HON | 0.243810 | $245.27 | $233.01 | $269.79 | $246.13 (7:00 AM) | -$0.14 (-0.06%) | **ON TRACK** |

> **Data sources**: All prices from Robinhood extended-hours (`last_non_reg_trade_price`). ALLE has NO pre-market activity today — last trade was 5 PM ET July 23 at $154.57, which is below its stop of $154.68. MMM last trade 8:47 AM; HON last trade 7:00 AM. Bid/ask spreads are wide in thin pre-market — use `last_non_reg_trade_price` (not bid) as the reference price except where noted.

---

### POSITION DETAIL

**AAPL — ON TRACK**
Pre-market $321.58 (-0.02% vs Jul 23 close $321.66; bid $321.57/ask $321.71 — tight spread). Stop $317.32 is $4.26 (1.32%) below — adequate buffer. TP $347.86 is 8.2% away. Entry $327.50; currently $5.92 (-1.81%) below entry. No adverse AAPL-specific news overnight. Earnings still July 30 (6 days). Thesis intact — Apple Intelligence / China AI regulatory approval.

**Hold — thesis intact, stop well-buffered. Do NOT exit on broad-market noise. Stop unchanged at $317.32.**

**MMM — ON TRACK (RECOVERED)**
Pre-market last trade $171.21 (+0.96% vs Jul 23 close $169.59; data as of 8:47 AM ET). Wide bid/ask ($165.24/$171.99) reflects thin pre-market — last TRADE at $171.21 is the reliable reference. Stop $169.00 is $2.21 (1.29%) below last trade — buffer improved vs yesterday. Note: insider selling by two MMM executives on July 23 (EVP CLO 7,669 shares, Group President 4,902 shares) — worth monitoring but NOT a thesis break; Q2 earnings beat thesis ($2.40 EPS, guidance raised) intact.

**Hold — stop buffer adequate, thesis intact. Check live price at open; if MMM prints at/below $169.00 sell immediately (0.474448 shares, market order).**

**ALLE — ⛔ STOP BREACH**
Jul 23 close $154.57 is BELOW stop of $154.68 by $0.11. No pre-market activity today (last non-reg trade was 5 PM ET yesterday at $154.57). Bid $123.92/ask $155.92 — stale, ultra-wide spread. ALLE's thesis (Q2 beat: EPS $2.40 vs $2.22, guidance raised) remains valid, but the stock closed below the defined stop after fading from the 3:15 PM price of $155.51. The stop must be honored.

**⛔ 10 AM AGENT: SELL ALLE IMMEDIATELY AT OPEN — 0.520000 shares, market order. Stop triggered (closed $154.57 below stop $154.68). Do NOT widen stop. Do NOT wait for recovery.**

**HON — ON TRACK**
Pre-market $246.13 (-0.06% vs Jul 23 close $246.27; data as of 7:00 AM ET). Stop $233.01 is $13.12 (5.33%) below — excellent buffer. Entry $245.27; currently +$0.86 (+0.35%) above entry. Thesis intact: Q2 beat confirmed ($1.95 EPS vs $1.82 est, automation orders +16%, FY guidance raised). Shares advanced pre-market even as U.S. futures were mixed.

**Hold — thesis intact, ample stop buffer. Trail trigger $250.18 not yet reached; stop unchanged at $233.01.**

---

### CATALYST WATCH LIST STATUS

| Ticker | Pre-Mkt | vs Jul 23 Close | Gap% | Catalyst Status | Action |
|--------|---------|----------------|------|-----------------|--------|
| INTC | $102.70 | $100.23 | +2.47% | CATALYST CONFIRMED — FLAT/DOWN | MONITOR |
| AXP | $324.30 | $340.84 | -4.85% | CATALYST FAILED | SKIP |
| RTX | $210.34 | $209.16 | +0.56% | CATALYST CONFIRMED — FLAT/DOWN | MONITOR |
| LMT | $570.00 | $568.59 | +0.25% | CATALYST CONFIRMED — FLAT/DOWN | MONITOR |

**INTC — CATALYST CONFIRMED — FLAT/DOWN**
Q2 beat confirmed: EPS $0.42 vs $0.22 est (+93.9%), Revenue $16.13B vs $14.45B est, revenue +25% YoY (fastest growth in 15 years). Stock surged 12–13% in initial AH reaction to ~$110+, then gave back more than half by pre-market; now +2.47% above prior close. The fade from the initial spike is a caution signal. Note: $11B net loss due to accounting charges (transformation costs). 327% YTD run — 10 AM agent must check 5-day % move to verify not disqualified by >15% 5-day run rule. At +2.47%, technically within the 1–2% above prior close catalyst watch entry range, but momentum is fading. 10 AM agent should verify INTC is still trending up (not continuing to fade) before considering entry.

**AXP — CATALYST FAILED**
Reported BMO today (July 24). EPS $4.53 vs $4.45 est (small beat), but Revenue $19.64B missed estimates of $19.90B by $259M. Full-year revenue guidance raised to 10% growth; EPS guidance unchanged. Market treating this as a miss — stock down -4.85% pre-market ($324.30 vs close $340.84). Do NOT enter AXP regardless of price action at open. SKIP.

**RTX — CATALYST CONFIRMED — FLAT/DOWN**
Q2 beat confirmed (reported BMO July 23 — catalyst already fully priced in from yesterday's session). EPS $1.89 (+21% YoY), Revenue $24.7B (+14%), guidance raised, backlog $289B. Stock surged ~5% on July 23 open; Jul 23 close $209.16. Today pre-market +0.56% — no new catalyst for July 24. Treat as a standard momentum candidate (not catalyst watch) for 10 AM scanner review.

**LMT — CATALYST CONFIRMED — FLAT/DOWN**
Q2 beat confirmed (reported BMO July 23 — catalyst already priced in). EPS $7.94 vs $7.20 est (+10.3%), Revenue $20.1B vs $19.6B est, guidance raised, record $230B backlog. Stock rose ~5% during July 23 session; today pre-market only +0.25% — no new catalyst for July 24. Same as RTX — treat as standard momentum candidate at open, not a catalyst watch entry.

---

### MACRO CONTEXT (pre-market July 24, 2026)

| Index | Jul 23 Close | Pre-Mkt Price | Change% | Note |
|-------|-------------|--------------|---------|------|
| SPY | $738.18 | $739.13 | **+0.13%** | Recovery from Thursday selloff |
| QQQ | $691.96 | $691.67 | **-0.04%** | Essentially flat |

**Regime gate status**: SPY +0.13% — NORMAL REGIME. Full position sizing permitted. No regime gate constraints for 10 AM session.

---

### KEY OVERNIGHT DEVELOPMENTS

**1. INTC Q2 EARNINGS BEAT — FADED FROM INITIAL SURGE**
Intel Q2: EPS $0.42 vs $0.22 est, Revenue $16.13B vs $14.45B, +25% YoY. Initial AH surge 12–13% (to ~$110+) faded to +2.47% by pre-market. Data Center/AI revenue +59%, Foundry +31%. $11B net loss (accounting charges). INTC up 327% YTD — check 5-day disqualifier before entry.

**2. AXP Q2 MIXED RESULTS — STOCK DOWN 4.85%**
American Express BMO today: EPS small beat ($4.53 vs $4.45), revenue miss ($19.64B vs $19.90B). Full-year guidance raised but market punishing the revenue miss. AXP catalyst FAILED for long entry purposes.

**3. RTX + LMT Q2 EARNINGS BEATS — ALREADY PRICED IN**
RTX: EPS $1.89 (+21% YoY), revenue +14%, guidance raised. LMT: EPS $7.94 vs $7.20 est, revenue $20.1B, record $230B backlog. Both reported BMO July 23 and surged ~5% during yesterday's session. Today they're effectively flat pre-market — catalyst watch window closed.

**4. ALLE STOP TRIGGERED AT CLOSE**
ALLE faded from 3:15 PM price ($155.51) to close at $154.57, crossing the stop of $154.68. 10 AM agent must sell ALLE immediately at open (0.520000 shares, market order). Thesis intact but stop must be honored.

**5. OIL / MACRO HEADWINDS**
Brent crude briefly above $100/barrel on Red Sea tanker attacks (Iran war escalation continues). 10-year Treasury yield briefly above 4.7%. New Trump tariffs (10–12.5% rates on top trading partners) took effect overnight. These create broad inflationary headwinds but market is recovering modestly pre-market (SPY +0.13%).

---

### FLAGS

| Ticker | Shares @ Entry | Pre-Mkt Price | vs Jul 23 Close | Stop Distance | Flag |
|--------|---------------|--------------|----------------|---------------|------|
| AAPL | 0.288213 @ $327.50 | $321.58 | -0.02% | $4.26 (1.32%) above stop $317.32 | **ON TRACK** |
| MMM | 0.474448 @ $174.94 | $171.21 (8:47 AM) | +0.96% | $2.21 (1.29%) above stop $169.00 | **ON TRACK** |
| ALLE | 0.520000 @ $157.79 | $154.57 (no pre-mkt) | -0.07% | CLOSED BELOW STOP $154.68 | **⛔ STOP BREACH** |
| HON | 0.243810 @ $245.27 | $246.13 (7:00 AM) | -0.06% | $13.12 (5.33%) above stop $233.01 | **ON TRACK** |

---

### ONE-LINE SUMMARY
**3 positions ON TRACK (AAPL, MMM, HON), 1 STOP BREACH (ALLE — closed $154.57 below stop $154.68 — sell at open); 0 catalyst watch tickers actionable (AXP FAILED -4.85%; INTC/RTX/LMT all FLAT/DOWN — monitor at open). SPY +0.13% pre-market — NORMAL REGIME, full position sizing. Oil $100+/barrel and new tariffs are macro headwinds but market recovering from Thursday selloff.**

---

## LEARNED INSIGHTS
<!-- Updated by weekly review agent. Last updated: 2026-07-25. Based on 12 closed trades. -->

OVERALL: Win rate 42% (5/12), profit factor 1.47, net P&L +$4.40 (avg win +3.25%, avg loss -1.68%)

TOP RULES (read before every session):
1. 12PM entries are a persistent drain: 0/3 wins, -$6.17 net, avg -2.42% per trade. All three midday entries (OKTA, SMCI, ALLE) were losses. Hold 12PM buys to a drastically higher bar or skip the session entirely; do not buy at noon without an exceptional setup. (N=3)
2. 10AM is the money session: 57% win rate (4/7), +$10.38 net. The open is where the edge lives — prioritize 10AM entries and protect that session's dry powder for the best setups. (N=7)
3. Let stops work — don't cut by hand. Stop exits: 3/5 = 60% win rate, +$4.71 net. Discretionary exits: 2/7 = 29%, -$0.31 net. Hand-cutting on price action or "the market is red" costs real money. The stop is the exit mechanism. (N=12)
4. earnings_beat catalyst: 2/6 = 33% win rate, +$2.15 net. The two wins (ABT, GM) came from 10AM entries on strong opens. Earnings beats alone don't guarantee success — confirm momentum at the open, don't buy a fading earnings-beat stock. (N=6)
5. Early-week (Mon-Tue) entries: 3/3 = 100% win rate. Late-week (Thu-Fri) entries: 0/4 = 0%. Don't force Thursday or Friday setups — the early-week edge is real and now backed by minimum data. (Mon+Tue N=3; Thu+Fri N=4)
6. tech sector: 2/5 = 40% win rate, -$0.81 net. Losers (OKTA -$1.62, SMCI -$3.03, NTSK -$1.29) overwhelm the two winners. Require a cleaner catalyst and stronger open confirmation on tech entries. (N=5)
7. TP hit rate is 0% (0/12) — no trade has ever reached its 1:2 take-profit. Trailed stops capture all winner exits. Consider a nearer first target or partial scale-out so the 1:2 is occasionally realized. (N=12)
8. Stop triggered rate: 42% (5/12) — marginally above the <40% target for the first time. Do not widen stops to manage this metric; fix entry quality instead. (N=12)
9. No catalyst_watch trades yet (feature launched 2026-07-23; 0 trades tagged catalyst_watch). Cannot compare early-entry path vs scanner. Need at least 3 catalyst_watch entries to draw conclusions. (N=0)

AVOID: 12PM entries. OKTA, SMCI, and ALLE — three consecutive midday buys, three losses, -$6.17 total. The 12PM session has a 0% win rate over its entire history. Unless the setup is truly exceptional (above VWAP, unquestionable catalyst, strong sustained momentum), don't buy at noon.

LEAN INTO: Mon-Tue 10AM entries on confirmed earnings beats with a strong open. RHI, ABT, and NBIS are the template — morning buys early in the week on a clean catalyst that opened well and held momentum. 3/3 wins, +$8.65 net on these three trades alone.

RAW STATS:
- Best catalyst: earnings_beat (33% win, +$2.15 net, N=6 — only catalyst with N≥3)
- Best sector: industrial (33% win, +$1.18 net, N=3); worst: tech (40% win, -$0.81 net, N=5)
- Best session to open: 10AM (57% win rate, +$10.38, N=7); worst: 12PM (0% win rate, -$6.17, N=3)
- Stop triggered rate: 42% of trades (target: <40%) — marginally above target
- TP hit rate: 0% of trades (target: >30%) — miss; TPs never reached, trailed stops exit first
---

## HANDOFF FROM LAST 3:15 PM SESSION
<!-- This block is overwritten at the end of every 3:15 PM session. Read it before Step 1. -->

Last updated: 2026-07-24 (~3:20 PM ET — 3:15 PM session complete)

⚠️ WEEKEND HOLD: Today is Friday July 24. All positions below are held through the weekend. Next trading day is Monday July 27, 2026. Gap risk is elevated vs a normal overnight hold (~67 hours of exposure).

Open positions held over weekend (4 total):

- AAPL: 0.588580 shares, avg entry $330.27, stop-loss $317.32, take-profit $347.86, overnight flag: YES
  3:15 PM price: $332.73 | vs avg entry: +$2.46 (+0.75%)
  entry_type: scanner (original) / manual (add-on)
  Thesis: Apple Intelligence + Alibaba Qwen China AI regulatory approval + analyst PT raises (HSBC Buy $366, Morgan Stanley raised). Exceptional relative strength vs broad market on July 24 (+3.44% vs SPY -0.09%).
  Trail trigger $337.86 NOT reached — stop unchanged at $317.32. Stop buffer $15.41 (4.64%) — adequate for weekend.
  ⚠️ EARNINGS JULY 30 AMC: The July 30 3:15 PM agent MUST exit AAPL before market close on July 30 if not already stopped/TP'd. Earnings are AFTER market close July 30 — exit before the July 30 close, NOT July 29.
  - If AAPL >= $347.86: sell immediately (take-profit)
  - If AAPL <= $317.32: sell immediately (stop-loss)
  - If AAPL reaches $337.86 intraday: trail stop to $330.27 (avg entry / breakeven) immediately

- MMM: 0.474448 shares, entry $174.94, stop-loss $169.00, take-profit $186.82, overnight flag: YES
  3:15 PM price: $170.95 | vs entry: -$3.99 (-2.28%)
  entry_type: scanner
  Thesis: Q2 2026 earnings beat ($2.40 EPS vs $2.24 est., +7.1%); FY EPS guidance raised $8.80–$8.95. No adverse MMM-specific news confirmed. Broad-market softness only.
  Strong close into bell: ground from $170.30 → $171.03 in final 75 minutes (positive momentum).
  Stop buffer: $1.95 (1.14%) — TIGHT. Weekend gap-down risk is real.
  DO NOT widen stop. Let stop work at $169.00.
  - If MMM >= $186.82: sell immediately (take-profit)
  - If MMM <= $169.00: sell immediately (stop-loss)

- HON: 0.243604 shares, avg entry $245.48, stop-loss $233.01, take-profit $269.79, overnight flag: YES
  3:15 PM price: $242.21 | vs avg entry: -$3.27 (-1.33%)
  entry_type: scanner
  Thesis: Q2 2026 earnings beat (EPS $1.95 vs $1.82 est., +7.1%); automation orders +16%; FY 2026 EPS guidance raised $8.05–$8.35. No negative HON-specific news.
  Recovering close: from $240.29 → $242.15 in final 75 minutes.
  Stop buffer: $9.20 (3.80%) — comfortable for weekend hold.
  Trail trigger $250.18 NOT reached — stop unchanged at $233.01.
  - If HON >= $269.79: sell immediately (take-profit)
  - If HON <= $233.01: sell immediately (stop-loss)
  - If HON reaches $250.18 intraday: trail stop to $245.48 (breakeven) immediately

- SLB: 1.452000 shares, entry $51.65, stop-loss $49.755, take-profit $55.44, overnight flag: YES
  3:15 PM price: $52.525 | vs entry: +$0.875 (+1.69%)
  entry_type: catalyst_watch
  Thesis: Q2 2026 earnings beat (oilfield services demand confirmed). Oil thesis reversed — Iran peace negotiations driving oil lower (single-catalyst only, dual no longer applies).
  Above entry ($51.65) and above VWAP (~$51.48) at close — held per 2 PM criteria.
  Trail trigger $52.70 NOT reached (intraday high $52.58) — stop unchanged at $49.755.
  Stop buffer: $2.77 (5.27%) — adequate for weekend, but watch for Iran peace news.
  ⚠️ WEEKEND RISK: Iran peace deal progress over weekend could gap SLB lower Monday on oil weakness.
  - If SLB >= $55.44: sell immediately (take-profit)
  - If SLB <= $49.755: sell immediately (stop-loss)
  - If SLB reaches $52.70 intraday: trail stop to $51.65 (breakeven) immediately

Sells executed this session: NONE
Buys executed this session: NONE

Settled cash remaining: ~$356.28 (buying_power / settled only)
Unsettled (~$80.53, settles ~July 28 Monday — July 25 is Saturday): ALLE proceeds from 7/24 10 AM session
Total account value: ~$849.04
Portfolio invested: ~48.5% (4 positions, ~$412.23 at 3:15 PM prices)

---

NOTES FOR 10:00 AM AGENT (Monday July 27, 2026):

1. ⚠️ MMM TIGHT STOP — CHECK AT OPEN FIRST:
   MMM closed at ~$170.95 vs stop $169.00 — only $1.95 (1.14%) buffer. Weekend gap risk is real.
   If MMM opens at or below $169.00 on Monday: SELL IMMEDIATELY (0.474448 shares, market order). No discretion — stop must be honored.

2. ⚠️ SLB WEEKEND RISK — IRAN PEACE TALKS:
   Iran peace negotiations are the primary macro risk for SLB. If oil gaps lower Monday morning, SLB may open near or below stop. Check SLB price at open before acting. If at or below $49.755: SELL IMMEDIATELY. SLB closed above entry and VWAP Friday — marginally constructive but oil headwind is live.

3. ⚠️ AAPL EARNINGS DEADLINE (July 30 AMC):
   AAPL must be exited before market close on July 30, 2026 (earnings AMC that evening). The July 30 3:15 PM agent is responsible. Do not hold through earnings. Trail trigger $337.86 → trail stop to $330.27 (avg entry) if reached.

4. HON — COMFORTABLE HOLD:
   Stop buffer $9.20 (3.80%), thesis intact. Trail trigger $250.18 → trail stop to $245.48 (breakeven) if reached. No binary events expected.

5. UNSETTLED CASH:
   ~$80.53 in ALLE proceeds. July 25 is Saturday, so this likely settles Monday July 28. Verify buying_power at 10 AM Monday — do not count unsettled cash toward new buys.

6. BROAD MARKET CONTEXT (Friday July 24 close):
   SPY -0.09% (flat), QQQ -1.34% (Nasdaq weak), Dow +0.20% (bifurcated).
   Key AH narrative: Alphabet Q2 earnings today revealed AI capex guidance of $195-205B (raised from $180-190B) — hyperscaler spending concerns may weigh on tech/growth at Monday open.
   Oil: Brent falling toward $95 on Iran peace talks — negative for SLB, positive for consumer/airlines.
   Semiconductor sector universally crushed: SNDK -11.7%, MU -8.3%, WDC -8.5%, INTC -7.9%, AMAT -5.7%, QCOM -3.0%.
   Both 3:15 PM momentum scanners returned 0 results.

7. CATALYST OPPORTUNITIES FOR MONDAY OPEN:
   DLR (Digital Realty Trust): +12.44% today on Q2 earnings beat (FFO $2.65 vs $1.98 est., revenue $1.9B vs $1.66B, +29% YoY) + guidance raise + multiple analyst upgrades (TD Cowen Buy $222, Guggenheim Buy $200). NOT entered today (fading close Friday, weekend risk). If DLR holds gains over weekend and opens constructively Monday (above $199), consider re-evaluating — confirm not in top 25% of intraday range concern, check 5-day move (<20%), and verify no binary events.

Catalyst watch list:
BKR | Q2 2026 earnings | BMO Monday July 27 (verify exact timing) | POSITIVE bias — energy services Q2 demand validates SLB thesis; if BKR beats, SLB thesis strengthened | MEDIUM risk
AZN | Q2 2026 earnings | BMO Monday July 27 (confirmed via earnings calendar) | Unknown direction — large pharma ($200B+ mkt cap); healthcare sector leading monthly | MEDIUM risk — enter only on >1% gap-up with sustained 10 AM momentum
CDNS | Q2 2026 earnings | AMC Monday July 27 (confirmed via earnings calendar) | POSITIVE bias — Cadence EDA software, AI chip design demand tailwind | LOW-MEDIUM risk (NOTE: AMC — affects Tuesday 10 AM evaluation, NOT Monday open)

---

## AFTER-HOURS UPDATE
<!-- Written by the 5 PM after-hours agent. -->

Timestamp: 2026-07-24 ~5:20 PM ET (5 PM AH session complete)

⚠️ WEEKEND HOLD IN EFFECT: All 4 positions below are held through the weekend (next trading day Monday July 27, 2026). Portfolio sync at 5 PM confirmed live Robinhood holdings exactly match the 3:15 PM handoff — no manual changes.

AH sells placed: NONE.

Positive AH events: NONE.

Adverse AH events: NONE.

Position-by-position AH check (all four overnight flag: YES, all confirmed via get_equity_quotes/get_equity_historicals extended-hours data ~5:15 PM ET):
- AAPL: AH $333.33 vs today's close $333.07 (+0.08%). Stop $317.32 / TP $347.86 — well inside range. Earnings confirmed July 30 PM (not tonight). No news since 3:15 PM. NO EVENT — thesis intact, hold.
- MMM: AH $171.10 vs today's close $172.60 (-0.87%, thin AH volume). Stop $169.00 / TP $186.82 — buffer $2.10 (1.2%), narrower than ideal for a weekend hold but still above stop. Q2 earnings already reported July 21 (priced in) — no report tonight. No adverse news found. NO EVENT — thesis intact, hold per 3:15 PM instruction (do not widen stop).
- HON: AH $243.15 vs today's close $243.13 (flat). Stop $233.01 / TP $269.79 — ample buffer. Q2 earnings already reported July 23 (priced in) — no report tonight. No adverse news. NO EVENT — thesis intact, hold.
- SLB: AH $52.35 vs today's close $52.455 (-0.20%). Stop $49.755 / TP $55.44 — ample buffer. Q2 earnings already reported this morning July 24 (the entry catalyst, already priced in) — no report tonight. Oil/Iran-peace-talks weekend risk already flagged by 3:15 PM session; no incremental adverse move in AH. NO EVENT — thesis intact, hold.

Broad AH market: SPY flat on the day (+0.05%), Nasdaq -0.64% on a semiconductor selloff, Dow +0.46%. Brent crude retreating from $100 on Iran peace-talk optimism. No macro AH developments beyond what the 3:15 PM handoff already captured.

Catalyst watch list for Monday July 27 (carried forward unchanged from 3:15 PM handoff — none of the three have reported yet, all still PENDING):
BKR | Q2 earnings | BMO Monday | POSITIVE bias (validates SLB thesis) | MEDIUM risk
AZN | Q2 earnings | BMO Monday (confirmed) | Unknown direction | MEDIUM risk
CDNS | Q2 earnings | AMC Monday (confirmed, affects Tuesday 10 AM not Monday open) | POSITIVE bias | LOW-MEDIUM risk

Summary: 0 AH sells, 0 positive events, 3 catalyst tickers for Monday (unchanged from 3:15 PM).

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