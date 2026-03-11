# ExecPlan: Commit All Dirty Work And Push

## Goal
Commit the current dirty worktree as a small sequence of coherent commits, verify the analyzer behavior before the code-bearing commit, and push each commit to `origin main`.

## Assumptions
1. The current branch is `main` and pushing to `origin main` is intended.
2. `games/3.11-989-midgame.md` is an intentional informal note file and should be committed separately from analyzer and README changes.
3. The current `README.md` diff should stay bundled with the analyzer/artifact change to avoid risky partial patch splitting.

## Plan
- [x] Add this ExecPlan file and keep it updated as work progresses.
- [x] Run targeted verification for terminal scoring, output-path mapping, and markdown contract behavior.
- [x] Commit and push the repo-rule update for informal game notes.
- [x] Commit and push the informal note file by itself.
- [x] Commit and push the analyzer, artifact, test, README, and related plan files together.
- [ ] Commit and push the reusable README game highlight prompt doc with its plan file.

## Review
- Verification completed before the analyzer commit:
  - `PYTHONPATH=. .venv/bin/pytest tests/test_terminal_scoring.py tests/test_output_path_mapping.py tests/test_markdown_contract.py`
  - `.venv/bin/python analyze_pgn.py games/3.11-back-rank-mate.pgn`
- Pushed commits:
  - `docs(agents): preserve informal game notes under games`
  - `chore(notes): add 3.11 midgame reminder`
  - `fix(analyzer): map repo PGNs to analysis and score terminal mates exactly`
