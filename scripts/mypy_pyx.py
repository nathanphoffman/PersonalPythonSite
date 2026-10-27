#!/usr/bin/env python3
import os
import pathlib
import subprocess
import sys
import tempfile

from pyjsx.transpiler import transpile

PROJECT_ROOT = pathlib.Path(__file__).parent.parent


def transpile_pyx_files(pyx_files: list[pathlib.Path], output_dir: pathlib.Path) -> None:
    """Write a plain .py copy of each .pyx file so mypy can check it."""
    for pyx in pyx_files:
        compiled = transpile(pyx.read_text())
        (output_dir / pyx.with_suffix(".py").name).write_text(compiled)


def run_mypy(target_dir: pathlib.Path) -> int:
    result = subprocess.run(
        [
            sys.executable, "-m", "mypy",
            "--config-file", str(PROJECT_ROOT / "pyproject.toml"),
            str(target_dir),
        ],
        env={**os.environ, "MYPYPATH": str(PROJECT_ROOT)},
    )
    return result.returncode


def main() -> int:
    pyx_files = list(PROJECT_ROOT.glob("components/*.pyx"))
    if not pyx_files:
        print("No .pyx files found.")
        return 0

    with tempfile.TemporaryDirectory() as tmp:
        tmp_path = pathlib.Path(tmp)
        transpile_pyx_files(pyx_files, tmp_path)
        return run_mypy(tmp_path)


if __name__ == "__main__":
    sys.exit(main())
