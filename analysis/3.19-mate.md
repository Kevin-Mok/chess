# SoloPistol vs sozplayschess05 (SoloPistol POV)

- White: `sozplayschess05`
- Black: `SoloPistol`
- POV: `SoloPistol` (Black)
- Turn labels: `me` = `SoloPistol`, `opp` = `sozplayschess05`

## How The Game Was Won

- Result: `SoloPistol` beat `sozplayschess05` by checkmate on `21... Qd2#`.
- Final sequence: `21. Qf4` allowed `21... Qd2#` immediately.
- Finish detail: the queen on `d2` was protected by the knight on `b3`, and White's king on `e1` had no legal escape.

## Significant Swings

- Config: threshold=20.0 pts, scope=pov, max-events=8, cause-mode=forensic, severity=Critical only

- [Critical] 16... Bb6 (me): W/L/D 100.0/0.0/0.0 -> 0.0/15.6/84.4, eval 4.60 -> -0.66, expected score 1.00 -> 0.42 (-57.8 pts)
  Impact: me=negative (-57.8 pts), opp=positive (+57.8 pts)
  Best: Ra8 (Stockfish+Lc0) | Played: Bb6 | Opportunity cost: 11.98 pawns worse
  Engines: Stockfish=5.20 pawns worse, Lc0=18.77 pawns worse, confidence=Medium
  Evidence: SF PV Ra8 Ba6 Bc8 Rd1 Bd6 Qf5 | Lc0 PV Ra8
  Cause: 16... Bb6 was inferior to Ra8; it created a large practical drop compared with safer continuations. Evidence: expected score 1.00 -> 0.42 (-57.8 pts), Stockfish 5.20 pawns worse, Lc0 18.77 pawns worse.
  What you likely thought: Humans under time pressure often pick the first workable move instead of comparing two serious candidates. That shortcut is costly in sharp middlegames.
  What you missed on the board: The missed cue was decision quality, not only tactics: candidate comparison and safety checks were incomplete. After your move, the opponent also had 1 capture(s), increasing tactical volatility.
  How to decide better next time: 1) Pick two serious candidates. 2) Run a brief CCT scan for both sides on each. 3) Choose the line with fewer immediate tactical liabilities.
  Practice habit: Never play the first acceptable move in sharp positions; compare at least two candidates.
  Lesson: Candidate comparison prevents large practical blunders.


- [Critical] 20... Be6 (me): W/L/D 100.0/0.0/0.0 -> 0.0/5.2/94.8, eval 6.48 -> -0.45, expected score 1.00 -> 0.47 (-52.6 pts)
  Impact: me=negative (-52.6 pts), opp=positive (+52.6 pts)
  Best: Bxg4 (Stockfish+Lc0) | Played: Be6 | Opportunity cost: 45.58 pawns worse
  Engines: Stockfish=7.05 pawns worse, Lc0=84.11 pawns worse, confidence=Medium
  Evidence: SF PV Bxg4 Rxb3 Bxe3 fxe3 Qh4+ g3 | Lc0 PV Bxg4
  Cause: 20... Be6 was inferior to Bxg4; it created a large practical drop compared with safer continuations. Evidence: expected score 1.00 -> 0.47 (-52.6 pts), Stockfish 7.05 pawns worse, Lc0 84.11 pawns worse.
  What you likely thought: Humans under time pressure often pick the first workable move instead of comparing two serious candidates. That shortcut is costly in sharp middlegames.
  What you missed on the board: The missed cue was decision quality, not only tactics: candidate comparison and safety checks were incomplete. After your move, the opponent had 1 checking idea(s), which is a forcing-warning signal. After your move, the opponent also had 3 capture(s), increasing tactical volatility.
  How to decide better next time: 1) Pick two serious candidates. 2) Run a brief CCT scan for both sides on each. 3) Choose the line with fewer immediate tactical liabilities.
  Practice habit: Never play the first acceptable move in sharp positions; compare at least two candidates.
  Lesson: Candidate comparison prevents large practical blunders.

```text
Ply   Turn Move    Win% Loss% Draw%    Eval
-------------------------------------------
1.    opp d4       0.2   3.6  96.2   -0.30
1...  me  d5       0.1   3.8  96.1   -0.32
2.    opp Be3      3.0   0.2  96.8    0.27
2...  me  Nc6      0.6   0.9  98.5   -0.04
3.    opp Qd3     64.3   0.0  35.7    1.05
3...  me  e6       2.4   0.2  97.4    0.24
4.    opp c4      32.3   0.0  67.7    0.80
4...  me  Nf6     11.3   0.0  88.7    0.55
5.    opp cxd5    52.6   0.0  47.4    0.96
5...  me  Nxd5    11.6   0.0  88.4    0.56
6.    opp Nc3     85.5   0.0  14.5    1.28
6...  me  Nxe3    81.4   0.0  18.6    1.22
7.    opp Qxe3    95.0   0.0   5.0    1.50
7...  me  Nxd4    47.8   0.0  52.2    0.93
8.    opp Qd3     98.1   0.0   1.9    1.68
8...  me  e5      90.9   0.0   9.1    1.38
9.    opp e3     100.0   0.0   0.0    2.85
9...  me  Ne6     11.8   0.0  88.2    0.58
10.   opp Qb5+    17.9   0.0  82.1    0.67
10... me  Bd7      4.8   0.1  95.1    0.41
11.   opp Qxe5     8.7   0.0  91.3    0.52
11... me  Bd6      7.1   0.0  92.9    0.49
12.   opp Qd5      8.1   0.0  91.9    0.51
12... me  Bb4      4.0   0.1  95.9    0.38
13.   opp Qxb7     5.9   0.0  94.1    0.45
13... me  Rb8      3.0   0.1  96.9    0.33
14.   opp Qxa7   100.0   0.0   0.0    3.74
14... me  O-O    100.0   0.0   0.0    3.64
15.   opp a3     100.0   0.0   0.0    4.63
15... me  Bc5    100.0   0.0   0.0    2.43
16.   opp Qa5    100.0   0.0   0.0    4.60
16... me  Bb6      0.0  15.6  84.4   -0.66
17.   opp Qb4    100.0   0.0   0.0    3.86
17... me  Ba7      6.8   0.0  93.2    0.50
18.   opp Qg4    100.0   0.0   0.0    4.06
18... me  Nc5     97.2   0.0   2.8    1.61
19.   opp b4     100.0   0.0   0.0    8.03
19... me  Nb3     99.9   0.0   0.1    2.27
20.   opp Rb1    100.0   0.0   0.0    6.48
20... me  Be6      0.0   5.2  94.8   -0.45
21.   opp Qf4    100.0   0.0   0.0     M+1
21... me  Qd2#   100.0   0.0   0.0     M+0
```
