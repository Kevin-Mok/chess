# AGENTS.repo.md

Repository-specific strict additions for `/home/kevin/Documents/chess`.

These rules extend `AGENTS.md` and do not relax any baseline requirement.

## README Sync Trigger (Required)

Update `README.md` in the same change whenever any of the following happens:

1. A game or analysis artifact is added, removed, renamed, or materially changed.
2. Analysis script behavior, defaults, CLI flags, or output format changes.
3. Local setup/runtime requirements for analysis change.

Scratch-game exception:

- If a change is exclusively for scratch artifacts under `games/scratch-games/**` and/or `analysis/scratch-games/**`, `README.md` does not need to be updated.

Treat these as trigger paths:

- `games/**/*.pgn`
- `analysis/**/*.md`
- `analyze_pgn.py`
- `scripts/**/*.sh`
- `docs/LOCAL_AI_SETUP.md`
- `docs/TODO.md`

If a trigger path changes, README updates are mandatory in that same change set, except for the scratch-game exception above.

## README Source Of Truth

All README claims must come from repository artifacts only:

- `games/*.pgn`
- `analysis/*.md`
- `analyze_pgn.py`
- `scripts/analyze_game.sh`
- `docs/LOCAL_AI_SETUP.md`
- `docs/TODO.md`
- `media/*`
- Existing public game/study links already tracked in this repo

Never invent games, moves, links, percentages, or outcomes.

## README Tone And Score Filter (Required)

When writing or regenerating `README.md`, do not include negative content or bad-score callouts.

- Exclude explicit loss-result narratives, blunders, collapses, missed tactics, or expected-score drops.
  - Exception: required technical schema labels such as `Win%`, `Loss%`, `Draw%` are allowed when describing analyzer output format.
- Exclude negative delta notation for score changes (for example `-99.7 pts`) in README narrative content.
- Keep framing positive/neutral and evidence-backed by repository artifacts.
- If a required section has no qualifying positive evidence yet, use neutral wording without negative metrics.
- Do not fabricate positive outcomes; keep all claims traceable to current repository files.

## TODO To README Sync (Required)

When README regeneration is triggered, explicitly read `docs/TODO.md` and sync relevant near-term items into `README.md` section `## Next goals` (max 3 bullets).

- Prefer the highest-priority actionable items from `docs/TODO.md`.
- Keep README wording concise and recruiter-readable while preserving task intent.
- If `docs/TODO.md` has no actionable items, keep `## Next goals` evidence-based and do not fabricate work.

## Recruiter Repo-Ideas Doc Sync (Required)

Maintain a recruiter-focused idea bank at `docs/RECRUITER_REPO_IDEAS.md`.

Cadence ("every few updates"):

1. Refresh this doc at least once every 3 README-triggered updates (see `## README Sync Trigger (Required)`).
2. Also refresh whenever the user explicitly asks for new ideas.

Doc content contract per refresh:

1. Include exactly 5 GitHub repository ideas.
2. For each idea, include:
   - proposed repo name containing both substrings `ai` and `chess`,
   - an `about` field intended for GitHub About text, max length `160` characters, short and catchy, and containing at least one searchable keyword phrase (for example `ai-chess-analysis-pipeline`),
   - SWE recruiter signal (what engineering strength it demonstrates).
3. Ideas should be realistic extensions of this repo's local AI/chess tooling direction.
4. Do not claim an idea is already implemented unless corresponding artifacts exist in this repository.
5. Do not use explicit "hook" labels/phrases (for example `Recruiter hook:` or `Hiring-signal hook:`) in this document.

## README Output Contract (Required)

`README.md` must be recruiter-readable and evidence-backed. Use this structure:

1. `# Chess Highlights`
2. `## Overview`
3. `## SWE Recruiter View`
4. `## AI Tooling Stack`
5. `## Local Analysis Pipeline`
6. `## Chess Improvement View`
7. `## Highlight Games`
8. `## Key Moves and Turning Points`
9. `## High Win% Comeback Evidence`
10. `## Study/Analysis Links`
11. `## How to View the Games`
12. Optional visual highlight image
13. `## Next goals` (max 3 bullets)

README length policy:

- Do not optimize for shortness.
- Include enough detail to explain tooling behavior, reproducibility, and evidence-backed outcomes.
- Prefer completeness over brevity when analysis pipeline or results are non-trivial.

## README Preservation And Contract-Drift Rules (Required)

Do not remove existing substantive README sections/subsections unless the user explicitly asks to remove them.
Do not remove existing evidence-backed bullets, tables, or command examples unless they are invalid/obsolete and replaced by updated evidence-backed equivalents.

When README regeneration is requested, preserve and maintain these currently-present subsections:

1. Under `## Overview`: `### Why I Built This`
2. Under `## SWE Recruiter View`: `### Engineering Signals`, `### What The Main Script Produces`
3. Under `## AI Tooling Stack`: `### Tool Roles`, `### AI/Engine Execution Modes`, `### Why This Tooling Matters`
4. Under `## Local Analysis Pipeline`: `### Key CLI Controls`, `### Local Setup`
5. Under `## High Win% Comeback Evidence`: `### Why This Matters`

If `README.md` contains additional substantive sections/subsections that are not yet specified in this file, add explicit rules for them in `AGENTS.repo.md` in the same change before marking the task done.

## Recruiter View Requirements

`## SWE Recruiter View` must explicitly explain what the code does:

1. PGN parsing + POV-oriented move-by-move engine table (`Win%`, `Loss%`, `Draw%`, eval).
2. Expected-score swing detection with configurable threshold/scope/max-events.
3. Forensic mode behavior (`Stockfish` + `Lc0` best-move comparison and PV evidence).
4. Optional local LLM rewrite path for forensic explanations (`forensic-llm` + `llama-cli` model).
5. Deterministic fallback behavior when optional components are missing/fail.

## AI Tooling Emphasis (Required)

README must strongly emphasize local AI/engine tooling and each tool's role.

`## AI Tooling Stack` must include:

1. Tool inventory with responsibilities:
   - `stockfish` for baseline evaluation/WDL.
   - `lc0` + weights for forensic second-opinion move quality.
   - `llama-cli` + GGUF model for optional local rewrite in `forensic-llm`.
2. Why local execution matters (reproducibility, no external API dependency, controllable latency/cost).
3. Degradation behavior:
   - Forensic requirements (`lc0` and weights) and fail-fast behavior.
   - `forensic-llm` fallback to deterministic forensic text when LLM assets are unavailable.
4. Evidence linkage to current `analysis/*.md` outputs.

## Local Pipeline Requirements

`## Local Analysis Pipeline` must include runnable commands from this repo:

- Direct analyzer usage: `python3 analyze_pgn.py <pgn-path>`
- Helper script usage: `scripts/analyze_game.sh <game-name-or-path>`
- At least one advanced mode example (`--cause-mode forensic` or `--cause-mode forensic-llm`)
- Preferred: include both advanced modes (`forensic` and `forensic-llm`) when available.

If CLI flags change in `analyze_pgn.py`, update README command examples immediately.

## Scratch Game Routing (Required)

When analyzing PGNs under `games/scratch-games/`, output markdown must be written under `analysis/scratch-games/` (same filename stem, `.md` extension).

- For `scripts/analyze_game.sh`, preserve relative subpath under `games/` when mapping to `analysis/`.

## Informal Game Notes (Required)

Sometimes `games/` contains informal `.md` note files with partial move lists or reminders for later review rather than PGN artifacts.

- Preserve these files as-is unless the user explicitly asks to remove or rewrite them.
- Do not analyze them, rename them, convert them to PGN, or include them in README evidence unless the user explicitly asks.
- Do not treat these note files as README trigger paths or as missing/invalid analysis inputs.
- If a task is about committing or organizing dirty files, keep these note files separate from analyzer/README behavior changes unless the user explicitly wants them grouped.

## Chess View Requirements

`## Chess Improvement View` + following sections must include:

1. `Highlight Games` table with: Date, Opponent, Platform, Result, Why it matters.
   - Include a direct game URL column/link to the live game page on the source site (for example Chess.com or Lichess) for each row.
2. At least 2 concrete SAN move references in `Key Moves and Turning Points`.
3. At least one evidence-backed comeback item in `High Win% Comeback Evidence`:
   - Include explicit expected-score before/after values from `analysis/*.md`.
   - Final expected score must be `>= 0.80`.
4. If no qualifying comeback exists in current analysis files, state that explicitly and do not fabricate one.

## Completion Gate

Before marking a task done, if trigger paths changed, verify:

1. `README.md` is updated in the same change (except scratch-only changes under `games/scratch-games/**` or `analysis/scratch-games/**`).
2. README command examples match current script interfaces.
3. Numeric claims in README match current `analysis/*.md`.
4. All required sections in the output contract are present.
5. Existing required subsections were preserved unless user explicitly requested removal.
6. Any new README subsection content not covered by this file has matching added rules here.
