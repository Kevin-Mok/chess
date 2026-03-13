# SoloPistol vs Abhijeetnegi123 (SoloPistol POV)

- White: `SoloPistol`
- Black: `Abhijeetnegi123`
- POV: `SoloPistol` (White)
- Turn labels: `me` = `SoloPistol`, `opp` = `Abhijeetnegi123`

## How The Game Was Won

- Result: `SoloPistol` beat `Abhijeetnegi123` by checkmate on `14. Qxf7#`.
- Final sequence: `13... Nxc2` allowed `14. Qxf7#` immediately.
- Finish detail: the queen on `f7` was protected by the knight on `e5`, and Black's king on `e8` had no legal escape.

## Significant Swings

- Config: threshold=20.0 pts, scope=pov, max-events=8, cause-mode=heuristic, severity=Critical only

- [Critical] 12. Qd3 (me): W/L/D 100.0/0.0/0.0 -> 0.0/100.0/0.0, eval 5.43 -> -2.78, expected score 1.00 -> 0.00 (-100.0 pts)
  Impact: me=negative (-100.0 pts), opp=positive (+100.0 pts)
  Cause: Likely cause: inaccuracy led to a positional/initiative drop.

```text
Ply   Turn Move    Win% Loss% Draw%    Eval
-------------------------------------------
1.    me  e4       2.9   0.2  96.9    0.25
1...  opp d6      13.3   0.0  86.7    0.57
2.    me  d4      11.0   0.0  89.0    0.53
2...  opp d5      87.9   0.0  12.1    1.32
3.    me  exd5    88.7   0.0  11.3    1.33
3...  opp Qxd5    92.8   0.0   7.2    1.42
4.    me  Be3     57.6   0.0  42.4    1.00
4...  opp b6      93.7   0.0   6.3    1.45
5.    me  Nc3     93.6   0.0   6.4    1.45
5...  opp Qd6    100.0   0.0   0.0    2.90
6.    me  Bc4     91.7   0.0   8.3    1.39
6...  opp Ba6    100.0   0.0   0.0    4.76
7.    me  Bxa6   100.0   0.0   0.0    2.40
7...  opp Nxa6   100.0   0.0   0.0    2.53
8.    me  Nf3    100.0   0.0   0.0    2.50
8...  opp Qg6    100.0   0.0   0.0    5.25
9.    me  O-O    100.0   0.0   0.0    4.02
9...  opp Rd8    100.0   0.0   0.0    5.51
10.   me  Ne5    100.0   0.0   0.0    5.09
10... opp Qf5    100.0   0.0   0.0    5.32
11.   me  Qd2    100.0   0.0   0.0    3.42
11... opp c5     100.0   0.0   0.0    5.43
12.   me  Qd3      0.0 100.0   0.0   -2.78
12... opp Nb4    100.0   0.0   0.0    9.61
13.   me  Qxf5   100.0   0.0   0.0    9.73
13... opp Nxc2   100.0   0.0   0.0     M+1
14.   me  Qxf7#  100.0   0.0   0.0     M+0
```
