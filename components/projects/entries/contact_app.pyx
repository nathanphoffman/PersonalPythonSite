from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.projects.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def ContactApp() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/ContactProject">
            <Title>Contact App</Title>
            <Tech>TypeScript</Tech>
            <Tech>Next.js</Tech>
            <Tech>Expo</Tech>
            <Tech>Docker</Tech>
            A site that uses a digital business card format to allow friends to add each other as contacts and schedule events with each other. 
        </Project>
    )