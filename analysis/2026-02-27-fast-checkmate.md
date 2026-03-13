# SoloPistol vs Woaheee (SoloPistol POV)

- White: `SoloPistol`
- Black: `Woaheee`
- POV: `SoloPistol` (White)
- Turn labels: `me` = `SoloPistol`, `opp` = `Woaheee`

## How The Game Was Won

- Result: `SoloPistol` beat `Woaheee` by checkmate on `15. Qxe7#`.
- Final sequence: `14... Nxf1` allowed `15. Qxe7#` immediately.
- Finish detail: the queen on `e7` was protected by the rook on `e1`, and Black's king on `e8` had no legal escape.

## Significant Swings

- Config: threshold=20.0 pts, scope=pov, max-events=8, cause-mode=forensic, severity=Critical only
- No critical swings met the configured threshold.

```text
Ply   Turn Move    Win% Loss% Draw%    Eval
-------------------------------------------
1.    me  e4       2.3   0.2  97.5    0.21
1...  opp e5       5.0   0.1  94.9    0.37
2.    me  Nf3      3.2   0.2  96.6    0.28
2...  opp Qe7     58.4   0.0  41.6    1.00
3.    me  Nc3     43.2   0.0  56.8    0.89
3...  opp Nc6     84.5   0.0  15.5    1.26
4.    me  Bd3     18.1   0.0  81.9    0.65
4...  opp Nd4     72.1   0.0  27.9    1.12
5.    me  O-O      8.1   0.0  91.9    0.49
5...  opp Nxf3+   14.8   0.0  85.2    0.61
6.    me  Qxf3     8.6   0.0  91.4    0.50
6...  opp Nf6     23.7   0.0  76.3    0.73
7.    me  Bb5      3.6   0.1  96.3    0.33
7...  opp c6       4.5   0.1  95.4    0.38
8.    me  Ba4      1.8   0.2  98.0    0.21
8...  opp g6      91.7   0.0   8.3    1.39
9.    me  Ne2      0.1   3.0  96.9   -0.31
9...  opp Bh6      1.0   0.3  98.7    0.10
10.   me  d4       0.9   0.3  98.8    0.10
10... opp Bxc1     1.1   0.3  98.6    0.13
11.   me  Raxc1    0.8   0.4  98.8    0.06
11... opp exd4     2.9   0.1  97.0    0.32
12.   me  Nxd4     1.8   0.1  98.1    0.22
12... opp Nxe4   100.0   0.0   0.0    3.05
13.   me  Rce1   100.0   0.0   0.0    2.96
13... opp Nd2    100.0   0.0   0.0    8.30
14.   me  Qe2    100.0   0.0   0.0    4.24
14... opp Nxf1   100.0   0.0   0.0     M+1
15.   me  Qxe7#  100.0   0.0   0.0     M+0
```
