from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def FairyTaleAdventure() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/FairyTaleAnAdventure">
            <Title>The Faery Tale Adventure</Title>
            <Tech>Rust</Tech>
            <Tech>SDL2</Tech>
            A native Linux port of the 1987 Amiga game The Faery Tale Adventure, rewritten in safe Rust from the original source. The intro, map, fighting, shops, magic, music and save/load all work.
        </Project>
    )