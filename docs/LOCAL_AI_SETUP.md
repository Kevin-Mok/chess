# Local AI Setup (Zero-Cost)

This project can generate higher-confidence swing explanations using local tools only:

- `stockfish` (table pass + forensic baseline)
- `lc0` + network weights (second-opinion forensic engine)
- `ollama` + `qwen3:14b` (default local rewrite layer)
- `llama-cli` + local GGUF model (optional rewrite fallback layer)

## One-command install

Run:

```bash
bash scripts/install_local_ai_stack.sh
```

The script installs dependencies (with sudo), builds `lc0` and `llama-cli`, downloads an Lc0 network, and downloads a local GGUF model.
It does **not** install Ollama.

## Ollama setup (for default `qwen3:14b` rewrite)

Preferred (handles upgrade + service start + pull):

```bash
bash scripts/pull_qwen3_14b.sh
```

Manual fallback (if you prefer to run each step yourself):

```bash
ollama serve
ollama pull qwen3:14b
```

## Default installed paths

- Stockfish: `/usr/games/stockfish`
- Lc0 binary: `/usr/local/bin/lc0`
- Lc0 weights: `/usr/local/share/lc0/best.pb.gz`
- llama-cli: `/usr/local/bin/llama-cli`
- GGUF model: `~/models/gemma-3-1b-it-Q4_K_M.gguf`

`analyze_pgn.py` auto-detects these paths.

## Usage examples

Forensic mode (default):

```bash
python3 analyze_pgn.py games/2026-03-03-comeback-vs-gaju33333.pgn
```

Forensic mode with explicit Lc0 paths:

```bash
python3 analyze_pgn.py games/2026-03-03-comeback-vs-gaju33333.pgn \
  --cause-mode forensic \
  --lc0-path /usr/local/bin/lc0 \
  --lc0-weights /usr/local/share/lc0/best.pb.gz
```

Forensic + local LLM rewrite (default Ollama backend):

```bash
ollama pull qwen3:14b

python3 analyze_pgn.py games/2026-03-03-comeback-vs-gaju33333.pgn \
  --cause-mode forensic-llm \
  --llm-backend ollama \
  --ollama-model qwen3:14b
```

Forensic + local LLM rewrite with slow-GPU-friendly settings and raw thinking logs:

```bash
python3 analyze_pgn.py games/2026-03-03-comeback-vs-gaju33333.pgn \
  --cause-mode forensic-llm \
  --llm-backend ollama \
  --ollama-model qwen3:14b \
  --ollama-timeout-ms 0 \
  --llm-log-raw \
  --llm-request-thinking \
  --llm-raw-max-chars 0 \
  2>&1 | tee analysis/live/comeback.progress.md
```

Live split-stream run for `3.4-play-well`:

```bash
bash scripts/test_play_well_live.sh
tail -f analysis/live/3.4-play-well.progress.md
tail -f analysis/live/3.4-play-well.thinking.md
```

Quick pass-through test (single swing event):

```bash
bash scripts/test_play_well_live.sh --swing-max-events 1 --max-seconds 8
```

Forensic + llama-cli fallback:

```bash
python3 analyze_pgn.py games/2026-03-03-comeback-vs-gaju33333.pgn \
  --cause-mode forensic-llm \
  --llm-backend llama-cli \
  --llama-model ~/models/gemma-3-1b-it-Q4_K_M.gguf
```

## Troubleshooting

- If forensic mode fails with missing `lc0`, install via `scripts/install_local_ai_stack.sh` or pass `--lc0-path`.
- If forensic mode fails with missing weights, pass `--lc0-weights` to a `.pb.gz` network file.
- If `forensic-llm` cannot reach Ollama and cannot find a valid llama-cli/model fallback, the script falls back to deterministic forensic text.
- If Ollama is installed but not running, start it (`ollama serve`) and verify with `ollama list`.
