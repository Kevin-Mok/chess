#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ANALYZER="${ROOT_DIR}/analyze_pgn.py"
PGN_PATH="${ROOT_DIR}/games/3.4-play-well.pgn"
OUT_MD="${ROOT_DIR}/analysis/3.4-play-well.md"
LIVE_DIR="${ROOT_DIR}/analysis/live"
PROGRESS_MD="${LIVE_DIR}/3.4-play-well.progress.md"
LESSONS_MD="${LIVE_DIR}/3.4-play-well.lessons.md"
STOCKFISH_MD="${LIVE_DIR}/3.4-play-well.stockfish.md"
THINKING_MD="${LIVE_DIR}/3.4-play-well.thinking.md"
EXTRA_ARGS=("$@")

if [[ ! -f "${PGN_PATH}" ]]; then
    echo "Missing PGN: ${PGN_PATH}" >&2
    exit 1
fi

mkdir -p "${ROOT_DIR}/analysis" "${LIVE_DIR}"

cat > "${LESSONS_MD}" <<'EOF'
# Live Lessons Stream (3.4-play-well)

EOF

cat > "${STOCKFISH_MD}" <<'EOF'
# Live Stockfish/Forensic Stream (3.4-play-well)

EOF

cat > "${THINKING_MD}" <<'EOF'
# Live LLM Thinking Stream (3.4-play-well)

EOF

echo "Running live forensic-llm analysis for 3.4-play-well..."
echo "Main report:     ${OUT_MD}"
echo "Progress log:    ${PROGRESS_MD}"
echo "Lessons stream:  ${LESSONS_MD}"
echo "Stockfish stream:${STOCKFISH_MD}"
echo "Thinking stream: ${THINKING_MD}"
echo
echo "Live terminal stream labels:"
echo "  [PROGRESS -> ${PROGRESS_MD}]"
echo "  [LESSON -> ${LESSONS_MD}]"
echo "  [STOCKFISH -> ${STOCKFISH_MD}]"
echo "  [THINKING -> ${THINKING_MD}]"
echo

python3 "${ANALYZER}" "${PGN_PATH}" \
  --output-md "${OUT_MD}" \
  --cause-mode forensic-llm \
  --llm-backend ollama \
  --ollama-model qwen3:14b \
  --ollama-timeout-ms 0 \
  --llm-log-raw \
  --llm-request-thinking \
  --llm-raw-max-chars 0 \
  "${EXTRA_ARGS[@]}" \
  2>&1 \
  | tee "${PROGRESS_MD}" \
    >(awk '
      /^\[forensic [0-9]+\/[0-9]+\] cause:/ ||
      /^\[forensic [0-9]+\/[0-9]+\] lesson:/ ||
      /^\[forensic [0-9]+\/[0-9]+\] thought:/ ||
      /^\[forensic [0-9]+\/[0-9]+\] habit:/ {
        print strftime("%Y-%m-%d %H:%M:%S"), $0
        fflush()
      }
    ' | tee -a "${LESSONS_MD}" | sed "s#^#[LESSON -> ${LESSONS_MD}] #") \
    >(awk '
      /^\[llm thinking\]/ {
        print strftime("%Y-%m-%d %H:%M:%S"), $0
        fflush()
      }
    ' | tee -a "${THINKING_MD}" | sed "s#^#[THINKING -> ${THINKING_MD}] #") \
    >(awk '
      /^\[forensic [0-9]+\/[0-9]+\] analyzing/ ||
      /^\[forensic [0-9]+\/[0-9]+\] done/ ||
      /^\[forensic [0-9]+\/[0-9]+\] lesson unavailable:/ ||
      /^forensic analysis failed at/ ||
      /^Starting forensic phase:/ ||
      /^Completed forensic phase/ ||
      /^Detected [0-9]+ significant swings/ ||
      /^  Best:/ ||
      /^  Engines:/ ||
      /^  Evidence:/ ||
      /^\[llm raw\]/ {
        print strftime("%Y-%m-%d %H:%M:%S"), $0
        fflush()
      }
    ' | tee -a "${STOCKFISH_MD}" | sed "s#^#[STOCKFISH -> ${STOCKFISH_MD}] #") \
  | sed "s#^#[PROGRESS -> ${PROGRESS_MD}] #"

echo
echo "Done."
echo "Tail commands:"
echo "  tail -f ${PROGRESS_MD}"
echo "  tail -f ${LESSONS_MD}"
echo "  tail -f ${STOCKFISH_MD}"
echo "  tail -f ${THINKING_MD}"
