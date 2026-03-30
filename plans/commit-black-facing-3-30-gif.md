# ExecPlan: Commit Black-Facing March 30 GIF

## Goal

Commit the updated March 30 blitz-mate GIF with the board shown from Black's perspective, while keeping unrelated dirty README/task work out of scope.

## Assumptions

1. `games/3.30-blitz-20-move-mate.gif` is the newly regenerated black-facing source asset.
2. `media/3.30-blitz-20-move-mate.gif` is the README-facing artifact that must match the source GIF for the visible repo highlight to update.
3. The current `README.md` text diff is unrelated to this request and should remain unstaged unless the README gate proves a textual change is required.

## Plan

- [x] Confirm the updated `games/3.30-blitz-20-move-mate.gif` is the intended black-facing asset.
- [x] Sync the matching `media/3.30-blitz-20-move-mate.gif` file without editing unrelated README text.
- [x] Re-run targeted verification on the two GIF paths and repo status to confirm the commit scope.
- [ ] Stage only the GIF assets plus this ExecPlan.
- [ ] Commit with a focused conventional message.

## Review

- Extracted and visually inspected the first frame of both GIFs; `games/3.30-blitz-20-move-mate.gif` showed Black's pieces at the bottom while the prior `media/` copy did not.
- Synced `media/3.30-blitz-20-move-mate.gif` from the updated `games/` source so the README-served highlight now uses the black-facing POV.
- Verified the two GIF files now match byte-for-byte with identical SHA-256 hashes.
- Confirmed the existing `README.md` text diff and untracked `tasks/` directory remain unrelated dirty work outside this commit scope.
