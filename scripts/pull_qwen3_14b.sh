#!/usr/bin/env bash
set -euo pipefail

# Upgrades Ollama to a version that supports qwen3 and pulls qwen3:14b.
# Safe to re-run.

OLLAMA_HOST="${OLLAMA_HOST:-http://127.0.0.1:11434}"
OLLAMA_MODEL="${OLLAMA_MODEL:-qwen3:14b}"
WAIT_SECONDS="${WAIT_SECONDS:-30}"

run_root() {
    if [[ "${EUID}" -eq 0 ]]; then
        "$@"
    else
        sudo "$@"
    fi
}

need_cmd() {
    if ! command -v "$1" >/dev/null 2>&1; then
        echo "Missing required command: $1" >&2
        exit 1
    fi
}

wait_for_ollama() {
    local tries=0
    local max_tries="${WAIT_SECONDS}"
    while (( tries < max_tries )); do
        if curl -fsS "${OLLAMA_HOST}/api/version" >/dev/null 2>&1; then
            return 0
        fi
        sleep 1
        tries=$((tries + 1))
    done
    return 1
}

need_cmd curl
need_cmd systemctl

if [[ "${EUID}" -ne 0 ]]; then
    sudo -v
fi

tmp_root="$(mktemp -d)"
cleanup() {
    rm -rf "${tmp_root}"
}
trap cleanup EXIT

install_script="${tmp_root}/install-ollama.sh"

echo "[1/5] Downloading latest Ollama installer..."
curl -fsSL https://ollama.com/install.sh -o "${install_script}"
chmod +x "${install_script}"

echo "[2/5] Stopping existing Ollama service/processes..."
run_root systemctl stop ollama 2>/dev/null || true
pkill -f "ollama serve" 2>/dev/null || true

echo "[3/5] Installing/upgrading Ollama..."
run_root bash "${install_script}"

echo "[4/5] Starting Ollama service..."
if systemctl list-unit-files | grep -q '^ollama.service'; then
    run_root systemctl daemon-reload
    run_root systemctl enable --now ollama
else
    nohup ollama serve >/tmp/ollama.log 2>&1 < /dev/null &
fi

if ! wait_for_ollama; then
    echo "Ollama API did not become ready at ${OLLAMA_HOST} within ${WAIT_SECONDS}s." >&2
    echo "If needed, inspect logs with: sudo journalctl -u ollama -n 100 --no-pager" >&2
    exit 1
fi

need_cmd ollama

echo "[5/5] Pulling ${OLLAMA_MODEL}..."
echo "Detected: $(ollama --version | tr '\n' ' ')"
ollama pull "${OLLAMA_MODEL}"

echo "Verifying model presence..."
ollama list | grep -F "${OLLAMA_MODEL}" >/dev/null
echo "Done: ${OLLAMA_MODEL} is installed and available."
