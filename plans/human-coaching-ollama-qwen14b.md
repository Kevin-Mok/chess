# ExecPlan: Human Coaching + Ollama Qwen3 14B Rewrite

## Goal
Upgrade forensic explanations so they are detailed, human-first coaching text while preserving evidence from PGN + Stockfish/Lc0.

## Plan
- [x] Add deterministic deep coaching fields (`cause_summary`, thought process, missed cues, decision process, habit, lesson).
- [x] Enforce engine-free human language guardrails for coaching text.
- [x] Integrate Ollama rewrite backend with default model `qwen3:14b`.
- [x] Keep llama-cli rewrite path as fallback backend.
- [x] Add CLI flags for backend selection and Ollama configuration.
- [x] Update markdown rendering to show expanded coaching block.
- [x] Update docs to reflect new defaults/flags and usage.
- [x] Validate deterministic forensic and forensic-llm fallback flows.

## Review
- `python3 -m py_compile analyze_pgn.py` passed.
- `--cause-mode forensic` run completed and rendered all new coaching fields.
- `--cause-mode forensic-llm` run completed; when Ollama was unavailable, deterministic fallback executed as expected.
- Coaching fields were checked for banned engine terms and passed.
