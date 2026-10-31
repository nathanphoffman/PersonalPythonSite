from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def ContactApp() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/ContactProject">
            <Title>Contact App</Title>
            <Tech>TypeScript</Tech>
            <Tech>Next.js</Tech>
            <Tech>Expo</Tech>
            <Tech>Docker</Tech>
            Digital business cards for web and mobile, with friends and events. It is friends-only with no public content, built as a set of small services behind one gateway.
        </Project>
    )