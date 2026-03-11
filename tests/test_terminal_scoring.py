from __future__ import annotations

import re
from pathlib import Path

import chess

from pgn_analyzer.common import terminal_snapshot_for_pov


class FakeTerminalBugEngine:
    def __init__(self, *args, **kwargs):
        self.calls = 0

    def analyse_fen(self, fen, movetime_ms, hard_timeout_ms):
        _ = (movetime_ms, hard_timeout_ms)
        self.calls += 1
        board = chess.Board(fen)
        if board.is_game_over():
            return None, 0, None
        return 3000, None, None

    def analyse_fen_detailed(
        self,
        fen,
        movetime_ms,
        hard_timeout_ms,
        multipv=1,
        moves_uci=None,
    ):
        _ = (fen, movetime_ms, hard_timeout_ms, multipv, moves_uci)
        return {
            "cp": 3000,
            "mate": None,
            "wdl": None,
            "bestmove": "e2e4",
            "infos": [{"multipv": 1, "cp": 3000, "mate": None, "wdl": None, "pv": ["e2e4"]}],
        }

    def quit(self):
        return None


def test_terminal_snapshot_for_pov_scores_checkmate_and_stalemate_exactly():
    winning_mate = chess.Board("7k/6Q1/7K/8/8/8/8/8 b - - 0 1")
    white_snapshot = terminal_snapshot_for_pov(winning_mate, chess.WHITE)
    black_snapshot = terminal_snapshot_for_pov(winning_mate, chess.BLACK)

    assert white_snapshot == {"wld": (100.0, 0.0, 0.0), "score": 1.0, "eval_str": "M+0"}
    assert black_snapshot == {"wld": (0.0, 100.0, 0.0), "score": 0.0, "eval_str": "M-0"}

    stalemate = chess.Board("7k/5Q2/7K/8/8/8/8/8 b - - 0 1")
    draw_snapshot = terminal_snapshot_for_pov(stalemate, chess.WHITE)

    assert draw_snapshot == {"wld": (0.0, 0.0, 100.0), "score": 0.5, "eval_str": "0.00"}


def test_winning_checkmate_is_not_reported_as_negative_critical_swing(
    runtime_module,
    sample_pgn_path: str,
    tmp_path: Path,
    monkeypatch,
):
    monkeypatch.setattr(runtime_module, "UCIEngine", FakeTerminalBugEngine)
    output_md = tmp_path / "terminal-checkmate.md"

    runtime_module.main(
        sample_pgn_path,
        cause_mode="heuristic",
        max_seconds=2,
        output_md=str(output_md),
    )

    text = output_md.read_text(encoding="utf-8")
    assert "- Turn labels: `me` = `SoloPistol`, `opp` = `Woaheee`" in text
    assert "[Critical] 15. Qxe7# (me)" not in text
    assert re.search(r"^15\.\s+me\s+Qxe7#\s+100\.0\s+0\.0\s+0\.0\s+M\+0$", text, re.MULTILINE)
