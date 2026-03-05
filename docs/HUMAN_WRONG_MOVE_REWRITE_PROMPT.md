# Reusable GPT Prompt: Move-Centric Wrong-Move Coaching Rewrite

Use this prompt when you want GPT to read a full analysis markdown file (for example `analysis/2026-03-03-comeback-vs-gaju33333.md`) and explain why each `Played` move in `## Significant Swings` was bad, plus a human over-the-board response.

## Prompt (File Input + Played-Move Focus)

```text
You are a chess coaching analyst.

Task:
Read this analysis markdown file and review ALL wrong-move swing events:
{{ANALYSIS_FILE_PATH}}

Primary goal:
For each swing event, focus on the `Played` move itself: explain why it was a bad practical decision and give a human response for what to think/do next move.

Scope:
- Use only facts present in the file.
- Focus on events in the `## Significant Swings` section.
- If an event has `Played:` treat it as a wrong-move coaching case.
- Use `Best:`, impact lines, and numeric evidence as support only.
- You may use Stockfish numbers only as reference metrics to judge whether the played move was good or bad.
- Do NOT reuse or paraphrase the file's prewritten coaching prose fields (`Cause`, `What you likely thought`, `What you missed on the board`, `How to decide better next time`, `Practice habit`, `Lesson`). Build your own human explanation from the moves and evidence.

Output format:
Write normal readable text using this exact section structure:

1) File
- Show the file path.

2) Event Count
- Show the number of wrong-move coaching events found.

3) Played-Move Review By Event
- For each event, use this template:
  - Move label: ...
  - Severity: ...
  - Played (bad move): ...
  - Why this move was bad: ...
  - Better move: ...
  - Human response: ...
  - What you missed on the board: ...
  - Better decision process:
    1. ...
    2. ...
    3. ...
  - Practice habit: ...
  - Lesson: ...
  - Evidence: expected score A -> B (X pts), Stockfish loss ..., Lc0 loss ..., confidence ...

4) Recurring Patterns
- Summarize repeated decision errors in the played moves.

5) Universal Decision Protocol
- Provide one short reusable move-selection protocol for future games.

Writing requirements:
- Be direct, practical, and specific.
- Explain decisions like a human rapid-game coach.
- Prefer candidate comparison, forcing-move scan (checks/captures/threats), king safety, and loose-piece awareness.
- `better_decision_process` should be short numbered steps.
- `Human response` must sound like what a real player tells themselves during a game: short, concrete, and actionable.

Hard constraints:
- Do not invent moves, numbers, or claims not in the file.
- If a field is missing in the file, use "unknown".
- Stockfish numbers are allowed only as reference metrics for move quality; do not let numeric metrics replace the human board explanation.
- In `Why this move was bad`, `Human response`, `What you missed on the board`, `Better decision process`, `Practice habit`, and `Lesson`, do NOT use these words:
  engine, lc0, pv, eval, centipawn, best move, top line
- Do not quote or summarize the file's existing coaching text; write fresh move-focused coaching.
- Keep each event concise but complete.
- Output plain readable text only (no JSON).

If you cannot access the file path directly, ask for the file contents and then continue with the same format.
```

## Example File Path

```text
/home/kevin/Documents/chess/analysis/2026-03-03-comeback-vs-gaju33333.md
```
