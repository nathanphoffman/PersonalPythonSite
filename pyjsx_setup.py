import importlib.util
import sys
from collections.abc import Sequence
from importlib.abc import MetaPathFinder
from importlib.machinery import ModuleSpec
from pathlib import Path
from types import ModuleType

from pyjsx.codec_hook import register_jsx
from pyjsx.import_hook import PyJSXLoader


class _MultiSuffixFinder(MetaPathFinder):
    def __init__(self, suffixes: list[str]) -> None:
        self.suffixes = suffixes

    def _find_module_file(self, fullname: str, directories: list[str]) -> Path | None:
        # Only the last dotted part names the file: "pages.home" lives in pages/home.pyx
        module_name = fullname.rsplit(".", 1)[-1]

        for directory in directories:
            for suffix in self.suffixes:
                candidate = Path(directory) / f"{module_name}{suffix}"

                if candidate.exists():
                    return candidate

        return None

    def find_spec(
        self,
        fullname: str,
        path: Sequence[str] | None,
        target: ModuleType | None = None,  # noqa: ARG002
    ) -> ModuleSpec | None:
        """Find a module file ending in one of our suffixes (e.g. .pyx) and load it through pyjsx."""
        module_file = self._find_module_file(fullname, list(path) if path else sys.path)

        if module_file is None:
            return None

        loader = PyJSXLoader(fullname, str(module_file))

        return importlib.util.spec_from_loader(fullname, loader)


def setup(suffixes: list[str] | None = None) -> None:
    register_jsx()

    # Appended (not inserted) so normal .py imports are still found first
    sys.meta_path.append(_MultiSuffixFinder(suffixes or [".px", ".pyx"]))
