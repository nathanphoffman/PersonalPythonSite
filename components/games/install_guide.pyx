from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.games.download_button import DownloadButton
from components.games.install_step import InstallStep
from components.utils import flatten_children


def _download_row(downloads: list[tuple[str, str]]) -> Any:
    if not downloads:
        return None

    buttons = [<DownloadButton label={label} href={href} /> for label, href in downloads]

    return <div className="flex flex-wrap gap-3 mb-6">{buttons}</div>


@component
def InstallGuide(downloads=None, steps=None, children=None) -> Any:
    """Everything under the project card in the modal: extra notes (children), download buttons, then numbered install steps.

    `downloads` is a list of (label, href); `steps` is a list of (text, command) where command may be "".
    """
    step_items = [
        <InstallStep number={index} text={text} command={command} />
        for index, (text, command) in enumerate(steps or [], start=1)
    ]

    return (
        <section className="mt-6">
            <div className="mb-4">{flatten_children(children)}</div>
            {_download_row(downloads or [])}
            <h3 className="text-lg font-semibold text-gray-800 mb-3">How to install</h3>
            <ol className="list-none m-0 p-0">{step_items}</ol>
        </section>
    )
