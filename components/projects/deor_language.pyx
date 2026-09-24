from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def DeorLanguage() -> Any:
    return (
        <Project image="deor.png" link="https://deor.dev" github="https://github.com/nathanphoffman/DeorLang">
            <Title>Deor Programming Language</Title>
            <Tech>Deor</Tech>
            <Tech>Rust</Tech>
            <Tech>Tailwind</Tech>
            <Tech>TS/JS</Tech>
            A programming language that transpiles to rust, features a small from scratch vanilla js landing page, and a large transpiler, along with a demo Pi generator and a new-web
            <a class="underline ml-1" target="_new" href="https://spec.deor.dev">spec</a>.
        </Project>
    )
