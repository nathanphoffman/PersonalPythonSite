from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def TinyMightyCharSheet() -> Any:
    return (
        <Project link="">
            <Title>Tiny Mighty (Char Sheet)</Title>
            <Tech>Next</Tech>
            <Tech>C#</Tech>
            This is an addition to the tiny mighty website, done with C# and Next, this is a work in progress. The ultimate idea is to allow creation of characters, rolling dice, and potential online-play.
        </Project>
    )