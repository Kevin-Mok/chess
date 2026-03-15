# ExecPlan: Combine `games/all` PGN Exports

## Goal
Create one consolidated PGN from every raw Chess.com export currently in `games/all` and make the minimal `README.md` update required by repo rules.

## Assumptions
1. The requested output should be a new PGN file in `games/all`, not an overwrite of any raw export.
2. Combining should preserve every unique game currently present in the three source exports.
3. A minimal README note about the new combined archive is sufficient documentation for this task.

## Plan
- [x] Inspect `games/all`, repo rules, and current README requirements.
- [x] Generate a combined PGN artifact from all current exports with stable input ordering.
- [x] Update `README.md` to mention the new combined archive and confirm `## Next goals` still matches `docs/TODO.md`.
- [x] Verify game counts, final file paths, and resulting git diff/status.

## Review
- Added `games/all/chess_com_games_2026-03-15_combined.pgn` by concatenating the three current raw exports in stable filename order.
- Verified the combined archive contains 119 games, matching the total from the three source files exactly.
- Updated `README.md` minimally so the new subdirectory artifact is documented and the viewer instructions now cover `games/**/*.pgn`.
- Read `docs/TODO.md` and left `## Next goals` unchanged because the existing three bullets already match its current priorities.
