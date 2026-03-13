# SoloPistol vs AmeerIrfan (SoloPistol POV)

- White: `SoloPistol`
- Black: `AmeerIrfan`
- POV: `SoloPistol` (White)
- Turn labels: `me` = `SoloPistol`, `opp` = `AmeerIrfan`

## How The Game Was Won

- Result: `SoloPistol` beat `AmeerIrfan` by resignation on `40. Rc2`.
- Final sequence: `39... Kb7` was met by `40. Rc2`, after which Black resigned.
- Finish detail: the PGN records a resignation rather than a terminal mate position.

## Significant Swings

- Config: threshold=20.0 pts, scope=pov, max-events=8, cause-mode=forensic, severity=Critical only

- [Critical] 25. fxg3 (me): W/L/D 100.0/0.0/0.0 -> 0.0/100.0/0.0, eval 4.70 -> -4.91, expected score 1.00 -> 0.00 (-100.0 pts)
  Impact: me=negative (-100.0 pts), opp=positive (+100.0 pts)
  Best: Rxg3 (Stockfish+Lc0) | Played: fxg3 | Opportunity cost: 46.88 pawns worse
  Engines: Stockfish=9.42 pawns worse, Lc0=84.33 pawns worse, confidence=Medium
  Evidence: SF PV Rxg3 Rxg3 Kxg3 a6 Kg2 Kd7 | Lc0 PV Rxg3
  Cause: 25. fxg3 was inferior to Rxg3; it won material short-term but handed over tactical momentum. Evidence: expected score 1.00 -> 0.00 (-100.0 pts), Stockfish 9.42 pawns worse, Lc0 84.33 pawns worse.
  What you likely thought: Humans are pulled toward obvious material gains and can stop calculating once a capture looks winning. The trap is ending the calculation before testing the opponent's forcing reply.
  What you missed on the board: The key missed cue is recapture/tempo risk after the grab: loose pieces, exposed king, and forcing counterplay. You captured a knight, so recapture tempo needed deeper verification. After your move, the opponent had 1 checking idea(s), which is a forcing-warning signal.
  How to decide better next time: 1) After any tempting capture, calculate the opponent's forcing reply first. 2) Re-check king safety and piece safety two plies deep. 3) If unclear, choose the safer improving move.
  Practice habit: Treat every 'free' pawn or piece as suspicious until the tactical sequence is proven safe.
  Lesson: If a gain looks free, verify the punishment line before taking it.

```text
Ply   Turn Move    Win% Loss% Draw%    Eval
-------------------------------------------
1.    me  e4       3.4   0.2  96.4    0.29
1...  opp e5       2.9   0.2  96.9    0.26
2.    me  Nf3      2.2   0.2  97.6    0.21
2...  opp f5      90.5   0.0   9.5    1.37
3.    me  Nxe5    82.5   0.0  17.5    1.23
3...  opp Nf6     95.0   0.0   5.0    1.50
4.    me  exf5    40.1   0.0  59.9    0.86
4...  opp Nc6     99.8   0.0   0.2    2.07
5.    me  Nxc6    96.8   0.0   3.2    1.58
5...  opp dxc6    99.0   0.0   1.0    1.81
6.    me  d4      46.6   0.0  53.4    0.92
6...  opp Bb4+    99.4   0.0   0.6    1.89
7.    me  Nc3     41.1   0.0  58.9    0.88
7...  opp Bxf5    32.2   0.0  67.8    0.81
8.    me  Bd3      9.7   0.0  90.3    0.53
8...  opp Bxd3    69.2   0.0  30.8    1.10
9.    me  cxd3     0.1   5.2  94.7   -0.41
9...  opp Ng4    100.0   0.0   0.0    5.66
10.   me  O-O     99.2   0.0   0.8    1.85
10... opp Qh4    100.0   0.0   0.0    3.17
11.   me  h3     100.0   0.0   0.0    2.95
11... opp Nf6    100.0   0.0   0.0    3.33
12.   me  Ne4     99.3   0.0   0.7    1.87
12... opp Nh5    100.0   0.0   0.0    6.57
13.   me  Qe2    100.0   0.0   0.0    4.28
13... opp g6     100.0   0.0   0.0    7.61
14.   me  Be3    100.0   0.0   0.0    3.70
14... opp O-O-O  100.0   0.0   0.0    5.75
15.   me  Rac1    85.5   0.0  14.5    1.28
15... opp Rhf8   100.0   0.0   0.0    5.60
16.   me  a3      62.4   0.0  37.6    1.06
16... opp Bd6    100.0   0.0   0.0    5.50
17.   me  Nxd6+    7.2   0.0  92.8    0.50
17... opp cxd6   100.0   0.0   0.0    4.13
18.   me  Kh2      0.7   0.3  99.0    0.06
18... opp Nf6     85.8   0.0  14.2    1.29
19.   me  g3      81.3   0.0  18.7    1.24
19... opp Qh5     89.3   0.0  10.7    1.35
20.   me  Qxh5    71.2   0.0  28.8    1.14
20... opp Nxh5    99.1   0.0   0.9    1.83
21.   me  b4      10.1   0.0  89.9    0.58
21... opp Rf3     40.2   0.0  59.8    0.90
22.   me  Rg1      3.8   0.0  96.2    0.39
22... opp d5      99.9   0.0   0.1    2.22
23.   me  a4      98.4   0.0   1.6    1.72
23... opp Rdf8    99.4   0.0   0.6    1.89
24.   me  Rcf1    52.1   0.0  47.9    1.00
24... opp Nxg3   100.0   0.0   0.0    4.70
25.   me  fxg3     0.0 100.0   0.0   -4.91
25... opp Rxf1     0.0 100.0   0.0   -4.78
26.   me  Rg2      0.0 100.0   0.0   -5.15
26... opp c5       0.0 100.0   0.0   -3.53
27.   me  bxc5     0.0 100.0   0.0   -4.24
27... opp b5       0.0  98.7   1.3   -1.78
28.   me  axb5     0.0  99.7   0.3   -2.06
28... opp Re1      0.0  63.6  36.4   -1.09
29.   me  Bh6      0.0 100.0   0.0   -2.61
29... opp Rff1     0.0  77.7  22.3   -1.22
30.   me  c6       0.0 100.0   0.0     M-1
30... opp a5       0.2   0.9  98.9   -0.13
31.   me  Bd2      0.0 100.0   0.0     M-1
31... opp a4     100.0   0.0   0.0    3.56
32.   me  Bxe1   100.0   0.0   0.0    3.74
32... opp Rxe1   100.0   0.0   0.0    4.22
33.   me  Rb2    100.0   0.0   0.0    3.00
33... opp a3     100.0   0.0   0.0    4.34
34.   me  Ra2    100.0   0.0   0.0    4.04
34... opp Ra1    100.0   0.0   0.0    M+11
35.   me  Rxa1   100.0   0.0   0.0     M+9
35... opp a2     100.0   0.0   0.0     M+7
36.   me  Rxa2   100.0   0.0   0.0     M+8
36... opp g5     100.0   0.0   0.0     M+6
37.   me  Rb2    100.0   0.0   0.0     M+7
37... opp h5     100.0   0.0   0.0     M+4
38.   me  b6     100.0   0.0   0.0     M+3
38... opp Kb8    100.0   0.0   0.0     M+2
39.   me  c7+    100.0   0.0   0.0     M+6
39... opp Kb7    100.0   0.0   0.0     M+6
40.   me  Rc2    100.0   0.0   0.0     M+5
```
