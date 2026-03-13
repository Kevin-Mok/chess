# SoloPistol vs gaju33333 (SoloPistol POV)

- White: `gaju33333`
- Black: `SoloPistol`
- POV: `SoloPistol` (Black)
- Turn labels: `me` = `SoloPistol`, `opp` = `gaju33333`

## How The Game Was Won

- Result: `SoloPistol` beat `gaju33333` by resignation on `34... Qxc7`.
- Final sequence: `34. Qxc7` was met by `34... Qxc7`, after which White resigned.
- Finish detail: the PGN records a resignation rather than a terminal mate position.

## Significant Swings

- Config: threshold=20.0 pts, scope=pov, max-events=8, cause-mode=forensic, severity=Critical only

- [Critical] 10... Na5 (me): W/L/D 100.0/0.0/0.0 -> 0.1/3.4/96.5, eval 2.92 -> -0.34, expected score 1.00 -> 0.48 (-51.6 pts)
  Impact: me=negative (-51.6 pts), opp=positive (+51.6 pts)
  Best: d5 (Stockfish+Lc0) | Played: Na5 | Opportunity cost: 5.34 pawns worse
  Engines: Stockfish=3.03 pawns worse, Lc0=7.65 pawns worse, confidence=Medium
  Evidence: SF PV d5 Bb5 d4 Bxc6 bxc6 Bxh6 | Lc0 PV d5
  Cause: 10... Na5 was inferior to d5; it created a large practical drop compared with safer continuations. Evidence: expected score 1.00 -> 0.48 (-51.6 pts), Stockfish 3.03 pawns worse, Lc0 7.65 pawns worse.
  What you likely thought: Humans under time pressure often pick the first workable move instead of comparing two serious candidates. That shortcut is costly in sharp middlegames.
  What you missed on the board: The missed cue was decision quality, not only tactics: candidate comparison and safety checks were incomplete. After your move, the opponent also had 3 capture(s), increasing tactical volatility.
  How to decide better next time: 1) Pick two serious candidates. 2) Run a brief CCT scan for both sides on each. 3) Choose the line with fewer immediate tactical liabilities.
  Practice habit: Never play the first acceptable move in sharp positions; compare at least two candidates.
  Lesson: Candidate comparison prevents large practical blunders.


- [Critical] 13... d5 (me): W/L/D 0.8/0.3/98.9 -> 0.0/100.0/0.0, eval 0.09 -> -4.80, expected score 0.50 -> 0.00 (-50.2 pts)
  Impact: me=negative (-50.2 pts), opp=positive (+50.2 pts)
  Best: dxe5 (Stockfish+Lc0) | Played: d5 | Opportunity cost: 11.22 pawns worse
  Engines: Stockfish=4.79 pawns worse, Lc0=17.64 pawns worse, confidence=Medium
  Evidence: SF PV dxe5 Nxe5 Qc8 Bf4 Nc6 Re1 | Lc0 PV dxe5
  Cause: 13... d5 was inferior to dxe5; it missed a tactical resource and allowed avoidable material damage. Evidence: expected score 0.50 -> 0.00 (-50.2 pts), Stockfish 4.79 pawns worse, Lc0 17.64 pawns worse.
  What you likely thought: Humans often lock onto one plan and fail to refresh candidate moves after the position changes. That causes tactical resources to be overlooked.
  What you missed on the board: The missed cue was tactical forcing order: checks and captures changed the material outcome quickly. After your move, the opponent also had 4 capture(s), increasing tactical volatility.
  How to decide better next time: 1) Rebuild candidate moves from scratch. 2) Prioritize forcing moves before quiet plans. 3) Compare resulting material after each forcing branch.
  Practice habit: When the position is tactical, restart candidate generation every move.
  Lesson: In tactical positions, forcing move order decides material outcomes.


- [Critical] 29... Qb8 (me): W/L/D 67.3/0.0/32.7 -> 0.0/100.0/0.0, eval 1.12 -> -4.46, expected score 0.84 -> 0.00 (-83.7 pts)
  Impact: me=negative (-83.7 pts), opp=positive (+83.7 pts)
  Best: Nc5 (Stockfish+Lc0) | Played: Qb8 | Opportunity cost: 14.89 pawns worse
  Engines: Stockfish=5.31 pawns worse, Lc0=24.47 pawns worse, confidence=Medium
  Evidence: SF PV Nc5 Rc1 Qf8 g4 fxg4 hxg4 | Lc0 PV Nc5
  Cause: 29... Qb8 was inferior to Nc5; it missed a tactical resource and allowed avoidable material damage. Evidence: expected score 0.84 -> 0.00 (-83.7 pts), Stockfish 5.31 pawns worse, Lc0 24.47 pawns worse.
  What you likely thought: Humans often lock onto one plan and fail to refresh candidate moves after the position changes. That causes tactical resources to be overlooked.
  What you missed on the board: The missed cue was tactical forcing order: checks and captures changed the material outcome quickly. After your move, the opponent had 5 checking idea(s), which is a forcing-warning signal. After your move, the opponent also had 3 capture(s), increasing tactical volatility.
  How to decide better next time: 1) Rebuild candidate moves from scratch. 2) Prioritize forcing moves before quiet plans. 3) Compare resulting material after each forcing branch.
  Practice habit: When the position is tactical, restart candidate generation every move.
  Lesson: In tactical positions, forcing move order decides material outcomes.

```text
Ply   Turn Move    Win% Loss% Draw%    Eval
-------------------------------------------
1.    opp e4       0.2   3.7  96.1   -0.31
1...  me  c5       0.1   8.1  91.8   -0.47
2.    opp Nc3      0.2   2.9  96.9   -0.27
2...  me  Nf6      0.0  59.9  40.1   -1.01
3.    opp Nf3      0.1   5.3  94.6   -0.39
3...  me  Nc6      0.0  10.6  89.4   -0.53
4.    opp Bc4      1.0   0.5  98.5    0.06
4...  me  e6       0.6   0.7  98.7    0.00
5.    opp d3       1.5   0.3  98.2    0.15
5...  me  Bd6      0.0  14.2  85.8   -0.60
6.    opp Bg5      7.3   0.1  92.6    0.47
6...  me  Be7      1.0   0.4  98.6    0.09
7.    opp O-O      1.2   0.3  98.5    0.12
7...  me  O-O      0.6   0.6  98.8    0.00
8.    opp h3       1.0   0.3  98.7    0.10
8...  me  h6       0.7   0.4  98.9    0.04
9.    opp Be3    100.0   0.0   0.0    3.00
9...  me  d6       0.6   0.5  98.9    0.01
10.   opp a3     100.0   0.0   0.0    2.92
10... me  Na5      0.1   3.4  96.5   -0.34
11.   opp Bb5     51.8   0.0  48.2    0.97
11... me  Bd7      0.7   0.4  98.9    0.05
12.   opp Bxd7     1.0   0.3  98.7    0.11
12... me  Qxd7     0.9   0.3  98.8    0.09
13.   opp e5       0.8   0.3  98.9    0.09
13... me  d5       0.0 100.0   0.0   -4.80
14.   opp exf6     0.0 100.0   0.0   -4.38
14... me  Bxf6     0.0 100.0   0.0   -4.67
15.   opp Bxc5     0.0 100.0   0.0   -4.53
15... me  Qc6      0.0 100.0   0.0   -5.59
16.   opp Bxf8     0.0 100.0   0.0   -5.34
16... me  Rxf8     0.0 100.0   0.0   -5.45
17.   opp d4       0.0 100.0   0.0   -5.35
17... me  Nc4      0.0 100.0   0.0   -5.49
18.   opp Nd2      0.0 100.0   0.0   -3.15
18... me  Nxb2     0.0 100.0   0.0   -3.30
19.   opp Qf3      0.0 100.0   0.0   -3.10
19... me  Bxd4     0.0 100.0   0.0   -3.21
20.   opp Ne2      0.0 100.0   0.0   -3.16
20... me  Bb6      0.0 100.0   0.0   -3.85
21.   opp Rac1     0.0 100.0   0.0   -3.55
21... me  f5       0.0 100.0   0.0   -4.74
22.   opp c4       0.0 100.0   0.0   -4.64
22... me  Rd8      0.0 100.0   0.0   -5.23
23.   opp cxd5     0.0 100.0   0.0   -4.50
23... me  Qd6      0.0 100.0   0.0   -5.57
24.   opp Rc2      0.0 100.0   0.0   -5.37
24... me  Na4      0.0 100.0   0.0   -5.58
25.   opp dxe6     0.0 100.0   0.0   -5.28
25... me  Qxe6     0.0 100.0   0.0   -5.52
26.   opp Qxb7     0.0 100.0   0.0   -2.95
26... me  Qxe2     0.0 100.0   0.0   -3.42
27.   opp Rc8      5.4   0.0  94.6    0.47
27... me  Qxd2     3.7   0.0  96.3    0.39
28.   opp Rxd8+   44.0   0.0  56.0    0.94
28... me  Qxd8    45.1   0.0  54.9    0.95
29.   opp Qc6     67.3   0.0  32.7    1.12
29... me  Qb8      0.0 100.0   0.0   -4.46
30.   opp Qxa4     0.0 100.0   0.0   -4.42
30... me  Qe5      0.0 100.0   0.0   -4.64
31.   opp Qb4      0.0 100.0   0.0   -4.42
31... me  Bc7      0.0 100.0   0.0   -4.67
32.   opp g3       0.0 100.0   0.0   -4.47
32... me  f4       0.0 100.0   0.0   -5.52
33.   opp Qc4+     0.0 100.0   0.0   -4.98
33... me  Kh7      0.0 100.0   0.0   -5.34
34.   opp Qxc7   100.0   0.0   0.0    5.34
34... me  Qxc7   100.0   0.0   0.0    5.51
```
