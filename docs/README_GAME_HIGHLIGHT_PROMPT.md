# Reusable GPT Prompt: README Game Highlight Update

Use this prompt when you want GPT to turn one selected game into a small, evidence-backed README highlight update.

It generalizes the one-off workflow from `docs/add-3-11-endgame.md` so you can point it at any tracked game in `games/` plus its matching analysis in `analysis/`.

## Prompt

```text
You are updating a chess highlights README.

Task:
Read the current README plus one selected PGN and one selected analysis markdown file, then produce a minimal highlight update for that game.

Inputs:
- README: {{README_PATH}}
- PGN: {{PGN_PATH}}
- Analysis markdown: {{ANALYSIS_PATH}}
- Highlight angle from user (optional): {{USER_NOTE}}
- Screenshot path or inline stats (optional): {{SCREENSHOT_OR_STATS}}

Goal:
Pick the strongest supported reason this game is worth highlighting, then write README-ready text that explains why it matters.

What to infer from the files:
- From the PGN: date, players, result, color, public link, finish move, opening, move count.
- From the analysis: POV player, whether the game was tactical, a conversion, a comeback, a long accurate win, a clean mate finish, or another notable practical result.
- From the filename/path: use descriptive clues such as `back-rank-mate`, `tense-endgame`, `fast-checkmate`, or similar naming when that helps identify the highlight angle.
- From the optional user note: treat it as framing guidance for why the game is notable.

Highlight-angle rules:
- If the user note is present, use it to shape the angle.
- If the user note is absent, infer the angle from the PGN path/title, terminal move, move count, result, and analysis evidence.
- Do not depend on `## Significant Swings` being present or non-empty. A game can still be highlight-worthy because of the finish, the style of win, or the practical story.
- If the user note suggests something stronger than the tracked evidence supports, keep the spirit but narrow the wording to supported facts.

Public-link rules:
- If the PGN has a `Link` tag with a usable URL, use that.
- Otherwise, if the PGN `Site` tag is a usable URL, use that.
- Otherwise, write `No public link in PGN`.

Stats rules:
- Mention accuracy, inaccuracies, mistakes, or blunders only if they are explicitly available in the optional screenshot/stats input or otherwise clearly present in the provided tracked sources.
- If the stats conflict across sources, use only the undisputed facts and note the mismatch in the verification checklist.

Output:
Write normal readable text using this exact section structure:

1) Chess Improvement View Bullet
- One concise bullet for the `## Chess Improvement View` section.

2) Highlight Games Row
- One Markdown table row for the `## Highlight Games` section using:
  `| Date | Opponent | Platform | Result | Game Link | Why it matters |`

3) Why This Is A Highlight
- One short sentence that answers: why is this a good highlight game?

4) Source Facts Used
- Short checklist of the concrete facts you used.

Writing requirements:
- Keep it brief.
- Keep it recruiter-friendly and chess-readable.
- Explain why the game stands out in practical terms.
- Prefer concrete phrasing over hype.
- Match the current README tone and table style.

Hard constraints:
- Use PGN, analysis, and optional screenshot/stats as the source of truth for concrete facts.
- Do not invent moves, links, accuracy numbers, opponent names, or results.
- Do not rewrite unrelated README sections.
- If a fact is missing, omit it instead of guessing.
- Prefer the analysis POV to determine whether `Win (White, 1-0)` or `Win (Black, 0-1)` style wording is appropriate.
- If the final move is especially readable or decisive, it is valid to build the highlight around that finish.
- If `## Significant Swings` says no critical swings met threshold, do not treat that as evidence against highlighting the game.

If you cannot access the file paths directly, ask for the file contents and then continue with the same format.
```

## Example 1: Long Endgame Win

Inputs:

```text
README: /home/kevin/Documents/chess/README.md
PGN: /home/kevin/Documents/chess/games/3.11-tense-endgame.pgn
Analysis markdown: /home/kevin/Documents/chess/analysis/3.11-tense-endgame.md
Highlight angle from user (optional): long, drawn-out win where I stayed accurate deep into the endgame
Screenshot path or inline stats (optional): /home/kevin/Documents/chess/media/3.11-88-accuracy.png
```

Expected style:

```text
1) Chess Improvement View Bullet
- Tense, drawn-out 76-move win vs `NickGen_Eral` with 88% accuracy maintained deep into the endgame.

2) Highlight Games Row
| 2026-03-11 | NickGen_Eral | Lichess | Win (White, 1-0) | [Lichess game](https://lichess.org/lY26zNo7) | Long 76-move win with 88% accuracy, showing steady practical play deep into a drawn-out endgame. |

3) Why This Is A Highlight
- It is a good highlight game because it shows sustained practical control in a long game instead of a quick one-shot tactic.

4) Source Facts Used
- Date `2026.03.11`
- Opponent `NickGen_Eral`
- POV `SoloPistol` as White
- Result `1-0`
- Final move `76. Qfh4#`
- Public URL from PGN `Site`
- User note about long accurate endgame play
- Optional stats input including `88% accuracy`
```

## Example 2: Back-Rank Mate Finish

Inputs:

```text
README: /home/kevin/Documents/chess/README.md
PGN: /home/kevin/Documents/chess/games/3.11-back-rank-mate.pgn
Analysis markdown: /home/kevin/Documents/chess/analysis/3.11-back-rank-mate.md
Highlight angle from user (optional):
Screenshot path or inline stats (optional):
```

Expected style:

```text
1) Chess Improvement View Bullet
- Back-rank mate win as Black in `3.11-back-rank-mate`, finishing a compact tactical game with `26...Re1#`.

2) Highlight Games Row
| 2026-03-11 | juliok22 | Chess.com | Win (Black, 0-1) | [Chess.com game](https://www.chess.com/game/live/165814123450) | Compact tactical highlight as Black, ending with a clean back-rank mate via `26...Re1#`. |

3) Why This Is A Highlight
- It is a good highlight game because the finish is immediate and readable: active rook play leads directly to a back-rank mate.

4) Source Facts Used
- Date `2026.03.11`
- Opponent `juliok22`
- POV `SoloPistol` as Black
- Result `0-1`
- Final move `26...Re1#`
- Public URL from PGN `Link`
- Filename clue `back-rank-mate`
- Analysis note that no critical swings met threshold
```
