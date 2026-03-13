# Rerun Analysis For All Games

## Plan

- [x] Enumerate all PGNs under `games/` and map each to its analysis output path.
- [x] Regenerate every analysis artifact, preserving existing non-default mode settings where practical.
- [x] Verify the refreshed outputs and capture the results here.

## Review

- Regenerated all 7 PGN-backed reports under `analysis/`.
- Preserved `forensic-llm --swing-max-events 1` for `3.4-play-well`; kept the new `14-move-checkmate` sample on `heuristic`; used `forensic` for the remaining games.
- Added the new `## How The Game Was Won` section to every decisive-game artifact during the rerun.
- Retried the two reports that hit an Lc0 timeout on the first bulk pass:
  - `analysis/3.6-tough.md` succeeded on retry and now has full forensic text again.
  - `analysis/3.4-play-well.md` reproduced the same `Timed out waiting for bestmove from Lc0.` fallback on retry; the artifact was still regenerated successfully.
- Updated `README.md` so the `2026-03-03` comeback expected-score values match the refreshed analysis table.
- Verification:
  - `.venv/bin/python -m pytest -q`
  - confirmed every `analysis/*.md` now includes `## How The Game Was Won`
