#!/usr/bin/env python3
import os
import pathlib
import subprocess
import sys
import tempfile

from pyjsx.transpiler import transpile

PROJECT_ROOT = pathlib.Path(__file__).parent.parent


def main() -> int:
    pyx_files = list(PROJECT_ROOT.glob("components/*.pyx"))
    if not pyx_files:
        print("No .pyx files found.")
        return 0

    with tempfile.TemporaryDirectory() as tmp:
        tmp_path = pathlib.Path(tmp)
        for pyx in pyx_files:
            compiled = transpile(pyx.read_text())
            (tmp_path / pyx.with_suffix(".py").name).write_text(compiled)

        result = subprocess.run(
            [
                sys.executable, "-m", "mypy",
                "--config-file", str(PROJECT_ROOT / "pyproject.toml"),
                str(tmp_path),
            ],
            env={**os.environ, "MYPYPATH": str(PROJECT_ROOT)},
        )
        return result.returncode


if __name__ == "__main__":
    sys.exit(main())
