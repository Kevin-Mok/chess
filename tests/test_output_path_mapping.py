from __future__ import annotations

from pgn_analyzer.common import default_output_md_path


def test_default_output_md_path_preserves_repo_games_stem(repo_root):
    pgn_path = repo_root / "games" / "3.11-back-rank-mate.pgn"

    output_md = default_output_md_path(
        str(pgn_path),
        white="juliok22",
        black="SoloPistol",
        pov_name="SoloPistol",
        opponent_name="juliok22",
        pov_found=True,
    )

    assert output_md == "analysis/3.11-back-rank-mate.md"


def test_default_output_md_path_keeps_slug_fallback_outside_repo_games():
    output_md = default_output_md_path(
        "/tmp/outside-game.pgn",
        white="juliok22",
        black="SoloPistol",
        pov_name="SoloPistol",
        opponent_name="juliok22",
        pov_found=True,
    )

    assert output_md == "analysis/solopistol-vs-juliok22.md"
