# ExecPlan: Fix Terminal Mate Swing Classification

## Goal
Prevent terminal winning moves from being mislabeled as negative critical swings by scoring finished positions from the exact POV result before swing classification.

## Plan
- [x] Add a terminal-position scoring helper that returns exact POV W/L/D and eval strings for checkmate/drawn endings.
- [x] Use that helper in the analysis pipeline before heuristic/engine WDL conversion and swing detection.
- [x] Add regression tests for a winning checkmate conversion and a drawn terminal outcome.
- [x] Regenerate the affected analysis artifacts and update README text for the behavior change.
- [x] Run targeted tests and inspect the final diff for unrelated churn.

## Review
- Terminal positions now bypass heuristic/engine fallback scoring and render exact POV results:
  - winning mate -> `100.0/0.0/0.0`, `M+0`
  - losing mate -> `0.0/100.0/0.0`, `M-0`
  - drawn terminal -> `0.0/0.0/100.0`, `0.00`
- Updated generator labels from `op.` to `opp` in metadata, swing impact lines, and move-table rows.
- Regenerated artifacts:
  - `analysis/3.11-back-rank-mate.md`
  - `analysis/2026-02-27-fast-checkmate.md`
- Verification:
  - `PYTHONPATH=. .venv/bin/pytest tests/test_terminal_scoring.py tests/test_markdown_contract.py tests/test_output_path_mapping.py`
  - `rg -n "Turn labels|\\[Critical\\]|Re1#|Qxe7#|Ply   Turn Move|opp=|opp\\b" analysis/3.11-back-rank-mate.md analysis/2026-02-27-fast-checkmate.md -S`
