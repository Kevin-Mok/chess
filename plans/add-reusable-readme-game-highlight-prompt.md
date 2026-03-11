# ExecPlan: Add Reusable README Game Highlight Prompt

## Goal
Create a reusable prompt doc that generalizes the one-off `docs/add-3-11-endgame.md` workflow for any highlight-worthy game in `games/` and `analysis/`.

## Assumptions
1. This task is documentation-only; no `README.md`, `games/`, or `analysis/` artifacts should change.
2. The new doc should produce README-ready output, not a full standalone article.
3. User-provided framing should shape the highlight angle when available, but tracked repo artifacts remain the source of truth for concrete facts.

## Plan
- [x] Review the existing one-off doc and reusable prompt style in `docs/`.
- [x] Add `docs/README_GAME_HIGHLIGHT_PROMPT.md` with required inputs, inference rules, hard constraints, and output contract.
- [x] Include worked examples for `3.11-tense-endgame` and `3.11-back-rank-mate`.
- [x] Verify the new doc covers `Link` vs `Site` URL handling and highlight inference when `## Significant Swings` is empty.

## Review
- Added `docs/README_GAME_HIGHLIGHT_PROMPT.md` as a reusable README-update prompt for highlight games.
- The prompt now accepts an optional user framing note and optional screenshot/stats input, while keeping PGN and analysis files as the factual source of truth.
- Verification confirmed the prompt explicitly handles:
  - public-link fallback from PGN `Link` to URL-shaped `Site`
  - highlight inference from filename/final move when `## Significant Swings` is empty
  - a separate `Why This Is A Highlight` output section
- Worked examples cover:
  - `3.11-tense-endgame` for user-note and stats-driven highlighting
  - `3.11-back-rank-mate` for filename/final-move inference and `Link` handling
