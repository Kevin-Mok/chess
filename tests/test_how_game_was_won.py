from __future__ import annotations

from pathlib import Path


class FakeEngine:
    def __init__(self, *args, **kwargs):
        self.calls = 0

    def analyse_fen(self, fen, movetime_ms, hard_timeout_ms):
        _ = (fen, movetime_ms, hard_timeout_ms)
        self.calls += 1
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
            "cp": 0,
            "mate": None,
            "wdl": None,
            "bestmove": "e2e4",
            "infos": [{"multipv": 1, "cp": 0, "mate": None, "wdl": None, "pv": ["e2e4"]}],
        }

    def quit(self):
        return None


def generate_report(runtime_module, monkeypatch, pgn_path: Path, output_md: Path):
    monkeypatch.setattr(runtime_module, "UCIEngine", FakeEngine)
    runtime_module.main(
        str(pgn_path),
        cause_mode="heuristic",
        max_seconds=2,
        output_md=str(output_md),
    )
    return output_md.read_text(encoding="utf-8")


def test_checkmate_report_describes_how_game_was_won(
    runtime_module,
    repo_root: Path,
    tmp_path: Path,
    monkeypatch,
):
    pgn_path = repo_root / "games" / "14-move-checkmate-SoloPistol_vs_Abhijeetnegi123_2026.03.13.pgn"
    output_md = tmp_path / "14-move-checkmate.md"

    text = generate_report(runtime_module, monkeypatch, pgn_path, output_md)

    assert "## How The Game Was Won" in text
    assert "Result: `SoloPistol` beat `Abhijeetnegi123` by checkmate on `14. Qxf7#`." in text
    assert "Final sequence: `13... Nxc2` allowed `14. Qxf7#` immediately." in text
    assert (
        "Finish detail: the queen on `f7` was protected by the knight on `e5`, "
        "and Black's king on `e8` had no legal escape."
    ) in text


def test_non_checkmate_win_uses_termination_fallback(
    runtime_module,
    repo_root: Path,
    tmp_path: Path,
    monkeypatch,
):
    pgn_path = repo_root / "games" / "2026-03-03-comeback-vs-gaju33333.pgn"
    output_md = tmp_path / "comeback-win.md"

    text = generate_report(runtime_module, monkeypatch, pgn_path, output_md)

    assert "## How The Game Was Won" in text
    assert "Result: `SoloPistol` beat `gaju33333` by resignation on `34... Qxc7`." in text
    assert "Final sequence: `34. Qxc7` was met by `34... Qxc7`, after which White resigned." in text
    assert (
        "Finish detail: the PGN records a resignation rather than a terminal mate position."
    ) in text
