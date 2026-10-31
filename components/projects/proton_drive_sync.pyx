from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.pages.children.project import Project, Title, Tech  # type: ignore[import-not-found]


@component
def ProtonDriveSync() -> Any:
    return (
        <Project github="https://github.com/nathanphoffman/ProtonDriveSync">
            <Title>Proton Drive Sync</Title>
            <Tech>Node</Tech>
            <Tech>TypeScript</Tech>
            Watches a local folder and keeps it mirrored to Proton Drive using the proton-drive command line tool.
        </Project>
    )