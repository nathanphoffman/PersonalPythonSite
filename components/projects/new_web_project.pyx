from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def NewWebProject() -> Any:
    return (
        <Project image="newweb.png" link="https://newwebproject.org" github="https://github.com/nathanphoffman/NewWeb">
            <Title>The New Web Project</Title>
            <Tech>WASM</Tech>
            <Tech>TS/JS</Tech>
            <Tech>Go</Tech>
            <Tech>CSS</Tech>
            <Tech>Electron</Tech>
            The New Web Project was the result of asking myself "what would the web look 1995 if we had the tools of 2026." The response was this growing project: 
            a markdown-driven web platform complete with wasm integration for scripting and forms, along with an electron browser.
        </Project>
    )