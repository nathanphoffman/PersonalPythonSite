from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def DownloadButton(label: str = "", href: str = "") -> Any:
    """A plain link styled as a button; `download` makes the browser save the file instead of navigating."""
    return (
        <a href={href} download className="inline-block bg-blue-600 hover:bg-blue-700 text-white text-sm font-medium px-4 py-2 rounded shadow transition-colors">
            {label}
        </a>
    )
