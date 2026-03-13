# Add How The Game Was Won Section

## Plan

- [x] Add regression tests for a new `## How The Game Was Won` section.
- [x] Implement deterministic decisive-game summary helpers and render the section before `## Significant Swings`.
- [x] Update `README.md`, regenerate the requested analysis artifact, and run focused verification.

## Review

- Added `tests/test_how_game_was_won.py` covering both checkmate and non-checkmate decisive wins.
- Added deterministic winner-summary helpers in `pgn_analyzer/common.py` and a new renderer hook in `pgn_analyzer/pipeline.py`.
- Updated `README.md` to document the new decisive-game summary section.
- Regenerated `analysis/14-move-checkmate-SoloPistol_vs_Abhijeetnegi123_2026.03.13.md` in `heuristic` mode.
- Verification:
  - `.venv/bin/python -m pytest -q`
  - `.venv/bin/python -m py_compile analyze_pgn.py pgn_analyzer/*.py`
