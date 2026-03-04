# SoloPistol vs Woaheee (SoloPistol POV)

- White: `SoloPistol`
- Black: `Woaheee`
- POV: `SoloPistol` (White)
- Turn labels: `me` = `SoloPistol`, `op.` = `Woaheee`

```text
Ply   Turn Move    Win% Loss% Draw%    Eval
-------------------------------------------
1.    me  e4       4.9   0.1  95.0    0.36
1...  op. e5       4.7   0.1  95.2    0.36
2.    me  Nf3      3.3   0.2  96.5    0.29
2...  op. Qe7     71.0   0.0  29.0    1.11
3.    me  Nc3     54.7   0.0  45.3    0.97
3...  op. Nc6     93.8   0.0   6.2    1.46
4.    me  Bd3     29.2   0.0  70.8    0.77
4...  op. Nd4     94.3   0.0   5.7    1.47
5.    me  O-O     11.2   0.0  88.8    0.55
5...  op. Nxf3+   21.7   0.0  78.3    0.70
6.    me  Qxf3    15.7   0.0  84.3    0.63
6...  op. Nf6     24.3   0.0  75.7    0.73
7.    me  Bb5      3.1   0.1  96.8    0.31
7...  op. c6       4.4   0.1  95.5    0.38
8.    me  Ba4      1.8   0.2  98.0    0.21
8...  op. g6      98.5   0.0   1.5    1.72
9.    me  Ne2      0.1   2.3  97.6   -0.26
9...  op. Bh6      1.4   0.2  98.4    0.16
10.   me  d4       1.3   0.2  98.5    0.16
10... op. Bxc1     1.2   0.2  98.6    0.14
11.   me  Raxc1    1.2   0.2  98.6    0.14
11... op. exd4     2.6   0.1  97.3    0.29
12.   me  Nxd4     2.8   0.1  97.1    0.31
12... op. Nxe4   100.0   0.0   0.0    2.73
13.   me  Rce1    99.9   0.0   0.1    2.26
13... op. Nd2    100.0   0.0   0.0    7.88
14.   me  Qe2    100.0   0.0   0.0    4.09
14... op. Nxf1   100.0   0.0   0.0     M+1
15.   me  Qxe7#    0.0   0.0 100.0     M+0
```

## Significant Swings

- Config: threshold=15.0 pts, scope=both, max-events=1, cause-mode=heuristic
- [Critical] 9. Ne2 (me): expected score 0.99 -> 0.49 (-50.4 pts), eval 1.72 -> -0.26
  Cause: Likely cause: inaccuracy led to a positional/initiative drop.
