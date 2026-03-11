# ExecPlan: Direct Output Analysis Stem Mapping

## Goal
Make direct `python3 analyze_pgn.py games/<name>.pgn` runs write to `analysis/<name>.md` so CLI output naming matches the existing `scripts/analyze_game.sh` behavior and the `analysis/3.11-*.md` artifact pattern.

## Assumptions
1. The requested behavior only needs to change the default auto-generated output path when the PGN lives under this repo's `games/` tree.
2. PGNs outside this repo's `games/` tree should keep the current fallback naming to avoid unrelated churn.
3. README sync is required because `analyze_pgn.py` behavior is changing, even if the visible diff is small.

## Plan
- [x] Update analyzer default output path resolution to preserve the relative stem under `games/`.
- [x] Add a regression test for `games/3.11-back-rank-mate.pgn -> analysis/3.11-back-rank-mate.md`.
- [x] Update README wording so direct CLI usage documents the new default naming.
- [x] Verify with pytest and a direct analyzer run that writes the expected file.

## Review
- `pgn_analyzer.common.default_output_md_path(...)` now prefers `analysis/<relative-games-path>.md` when the PGN resolves under this repo's `games/` tree, while keeping the older slug fallback outside that tree.
- `pgn_analyzer.pipeline.main(...)` now passes `pgn_path` into the default-path helper.
- Added `tests/test_output_path_mapping.py` to lock `games/3.11-back-rank-mate.pgn -> analysis/3.11-back-rank-mate.md` and preserve the outside-repo fallback.
- README sync:
  - Documented the new direct CLI default output naming.
  - Added the new local artifact link for `analysis/3.11-back-rank-mate.md`.
- Verification:
  - `.venv/bin/python -m pytest -q tests/test_output_path_mapping.py tests/test_wrapper_entrypoint.py tests/test_markdown_contract.py`
  - `.venv/bin/python analyze_pgn.py games/3.11-back-rank-mate.pgn`
  - Observed output path: `analysis/3.11-back-rank-mate.md`
