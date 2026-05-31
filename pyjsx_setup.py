import importlib.util
import sys
from collections.abc import Sequence
from importlib.abc import MetaPathFinder
from importlib.machinery import ModuleSpec
from pathlib import Path
from types import ModuleType
from typing import Any

from pyjsx.codec_hook import register_jsx
from pyjsx.import_hook import PyJSXLoader


class _MultiSuffixFinder(MetaPathFinder):
    def __init__(self, suffixes: list[str]) -> None:
        self.suffixes = suffixes

    def find_spec(
        self,
        fullname: str,
        path: Sequence[str] | None,
        target: ModuleType | None = None,  # noqa: ARG002
    ) -> ModuleSpec | None:
        for p in (list(path) if path else sys.path):
            for suffix in self.suffixes:
                full_path = Path(p) / f"{fullname.rsplit('.', 1)[-1]}{suffix}"
                if full_path.exists():
                    loader = PyJSXLoader(fullname, str(full_path))
                    return importlib.util.spec_from_loader(fullname, loader)
        return None


def setup(suffixes: list[str] | None = None) -> None:
    register_jsx()
    sys.meta_path.append(_MultiSuffixFinder(suffixes or [".px", ".pyx"]))
