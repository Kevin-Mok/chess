# SoloPistol vs gaju33333 (SoloPistol POV)

- White: `gaju33333`
- Black: `SoloPistol`
- POV: `SoloPistol` (Black)
- Turn labels: `me` = `SoloPistol`, `op.` = `gaju33333`

```text
Ply   Turn Move    Win% Loss% Draw%    Eval
-------------------------------------------
1.    op. e4       0.1   4.1  95.8   -0.32
1...  me  c5       0.0  10.2  89.8   -0.52
2.    op. Nc3      0.2   2.9  96.9   -0.27
2...  me  Nf6      0.0  57.2  42.8   -0.99
3.    op. Nf3      0.1   6.1  93.8   -0.42
3...  me  Nc6      0.0   9.3  90.7   -0.51
4.    op. Bc4      0.7   0.6  98.7    0.01
4...  me  e6       0.6   0.8  98.6   -0.03
5.    op. d3       2.1   0.2  97.7    0.22
5...  me  Bd6      0.1   4.7  95.2   -0.38
6.    op. Bg5      6.0   0.1  93.9    0.43
6...  me  Be7      0.6   0.6  98.8    0.00
7.    op. O-O      1.0   0.4  98.6    0.10
7...  me  O-O      0.8   0.4  98.8    0.05
8.    op. h3       0.7   0.5  98.8    0.04
8...  me  h6       0.9   0.4  98.7    0.07
9.    op. Be3    100.0   0.0   0.0    3.08
9...  me  d6       0.5   0.6  98.9    0.00
10.   op. a3     100.0   0.0   0.0    2.91
10... me  Na5      0.1   2.4  97.5   -0.27
11.   op. Bb5     54.3   0.0  45.7    0.99
11... me  Bd7      0.8   0.3  98.9    0.07
12.   op. Bxd7     1.0   0.3  98.7    0.12
12... me  Qxd7     0.8   0.3  98.9    0.07
13.   op. e5       0.9   0.3  98.8    0.10
13... me  d5       0.0 100.0   0.0   -4.68
14.   op. exf6     0.0 100.0   0.0   -4.42
14... me  Bxf6     0.0 100.0   0.0   -4.60
15.   op. Bxc5     0.0 100.0   0.0   -4.55
15... me  Qc6      0.0 100.0   0.0   -5.60
16.   op. Bxf8     0.0 100.0   0.0   -5.33
16... me  Rxf8     0.0 100.0   0.0   -5.41
17.   op. d4       0.0 100.0   0.0   -5.34
17... me  Nc4      0.0 100.0   0.0   -5.42
18.   op. Nd2      0.0 100.0   0.0   -3.20
18... me  Nxb2     0.0 100.0   0.0   -3.37
19.   op. Qf3      0.0 100.0   0.0   -3.07
19... me  Bxd4     0.0 100.0   0.0   -3.35
20.   op. Ne2      0.0 100.0   0.0   -3.16
20... me  Bb6      0.0 100.0   0.0   -3.87
21.   op. Rac1     0.0 100.0   0.0   -3.64
21... me  f5       0.0 100.0   0.0   -4.82
22.   op. c4       0.0 100.0   0.0   -4.42
22... me  Rd8      0.0 100.0   0.0   -5.21
23.   op. cxd5     0.0 100.0   0.0   -4.63
23... me  Qd6      0.0 100.0   0.0   -5.49
24.   op. Rc2      0.0 100.0   0.0   -5.24
24... me  Na4      0.0 100.0   0.0   -5.57
25.   op. dxe6     0.0 100.0   0.0   -5.53
25... me  Qxe6     0.0 100.0   0.0   -5.61
26.   op. Qxb7     0.0 100.0   0.0   -3.07
26... me  Qxe2     0.0 100.0   0.0   -3.37
27.   op. Rc8      5.8   0.0  94.2    0.48
27... me  Qxd2     4.6   0.0  95.4    0.44
28.   op. Rxd8+   62.2   0.0  37.8    1.08
28... me  Qxd8    42.2   0.0  57.8    0.93
29.   op. Qc6     45.0   0.0  55.0    0.95
29... me  Qb8      0.0 100.0   0.0   -4.42
30.   op. Qxa4     0.0 100.0   0.0   -4.44
30... me  Qe5      0.0 100.0   0.0   -4.64
31.   op. Qb4      0.0 100.0   0.0   -4.39
31... me  Bc7      0.0 100.0   0.0   -4.64
32.   op. g3       0.0 100.0   0.0   -4.62
32... me  f4       0.0 100.0   0.0   -5.42
33.   op. Qc4+     0.0 100.0   0.0   -4.92
33... me  Kh7      0.0 100.0   0.0   -5.28
34.   op. Qxc7   100.0   0.0   0.0    5.28
34... me  Qxc7   100.0   0.0   0.0    5.50
```

## Significant Swings

- Config: threshold=15.0 pts, scope=both, max-events=8, cause-mode=forensic
- [Critical] 34. Qxc7 (op.): expected score 0.00 -> 1.00 (+100.0 pts), eval -5.28 -> 5.28
  Best: Qxf4 (Stockfish) | Played: Qxc7 | Opportunity cost: 50.16 pawns worse
  Engines: Stockfish=10.32 pawns worse, Lc0=90.01 pawns worse, confidence=Medium
  Evidence: SF PV Qxf4 Qxf4 gxf4 Bxf4 a4 Bd6 | Lc0 PV Rc1
  Cause: This looks like a poisoned capture: Qxc7 wins material immediately but loses on tactics.
  Lesson: When capturing, calculate opponent forcing sequences (checks, captures, threats) for 2-3 plies first.
- [Critical] 29... Qb8 (me): expected score 0.72 -> 0.00 (-72.5 pts), eval 0.95 -> -4.42
  Best: Nc5 (Stockfish+Lc0) | Played: Qb8 | Opportunity cost: 15.00 pawns worse
  Engines: Stockfish=5.52 pawns worse, Lc0=24.47 pawns worse, confidence=Medium
  Evidence: SF PV Nc5 Rc1 | Lc0 PV Nc5
  Cause: The move misses a tactical continuation and concedes material in the engine follow-up.
  Lesson: Scan forcing candidate moves first, then compare resulting material before choosing a move.
- [Critical] 27. Rc8 (op.): expected score 0.00 -> 0.53 (+52.9 pts), eval -3.37 -> 0.48
  Best: Qf3 (Stockfish+Lc0) | Played: Rc8 | Opportunity cost: 9.84 pawns worse
  Engines: Stockfish=3.40 pawns worse, Lc0=16.29 pawns worse, confidence=Medium
  Evidence: SF PV Qf3 Qxf3 Nxf3 Nc5 Rfc1 Nb3 | Lc0 PV Qf3
  Cause: Major evaluation drop from deviating from the engine-preferred continuation (Qf3).
  Lesson: In sharp positions, compare your move against top engine candidates before committing.
- [Critical] 10... Na5 (me): expected score 1.00 -> 0.49 (-51.2 pts), eval 2.91 -> -0.27
  Best: d5 (Stockfish+Lc0) | Played: Na5 | Opportunity cost: 5.36 pawns worse
  Engines: Stockfish=3.06 pawns worse, Lc0=7.65 pawns worse, confidence=Medium
  Evidence: SF PV d5 Bb5 d4 Bxc6 bxc6 Bd2 | Lc0 PV d5
  Cause: Major evaluation drop from deviating from the engine-preferred continuation (d5).
  Lesson: In sharp positions, compare your move against top engine candidates before committing.
- [Critical] 13... d5 (me): expected score 0.50 -> 0.00 (-50.3 pts), eval 0.10 -> -4.68
  Best: dxe5 (Stockfish+Lc0) | Played: d5 | Opportunity cost: 11.22 pawns worse
  Engines: Stockfish=4.81 pawns worse, Lc0=17.64 pawns worse, confidence=Medium
  Evidence: SF PV dxe5 Nxe5 Qc8 a4 Nc6 Bf4 | Lc0 PV dxe5
  Cause: The move misses a tactical continuation and concedes material in the engine follow-up.
  Lesson: Scan forcing candidate moves first, then compare resulting material before choosing a move.
- [Critical] 9... d6 (me): expected score 1.00 -> 0.50 (-50.0 pts), eval 3.08 -> 0.00
  Cause: forensic analysis failed (Timed out waiting for 'readyok' from Lc0.). Falling back to heuristic.
  Cause: Likely cause: inaccuracy led to a positional/initiative drop.
- [Critical] 10. a3 (op.): expected score 0.50 -> 1.00 (+50.0 pts), eval 0.00 -> 2.91
  Best: d4 (Stockfish) | Played: a3 | Opportunity cost: 6.00 pawns worse
  Engines: Stockfish=2.96 pawns worse, Lc0=9.05 pawns worse, confidence=Medium
  Evidence: SF PV d4 d5 exd5 exd5 Bb5 c4 | Lc0 PV Bb3 d5
  Cause: The move misses a tactical continuation and concedes material in the engine follow-up.
  Lesson: Scan forcing candidate moves first, then compare resulting material before choosing a move.
- [Critical] 9. Be3 (op.): expected score 0.50 -> 1.00 (+49.8 pts), eval 0.07 -> 3.08
  Best: Bf4 (Stockfish+Lc0) | Played: Be3 | Opportunity cost: 6.08 pawns worse
  Engines: Stockfish=3.03 pawns worse, Lc0=9.12 pawns worse, confidence=Medium
  Evidence: SF PV Bf4 | Lc0 PV Bf4
  Cause: The move misses a tactical continuation and concedes material in the engine follow-up.
  Lesson: Scan forcing candidate moves first, then compare resulting material before choosing a move.
