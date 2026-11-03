from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def InstallStep(number: int = 1, text: str = "", command: str = "") -> Any:
    """One numbered install instruction, with an optional copy-able command block under it."""
    command_block = (
        <pre className="mt-2 bg-gray-900 text-gray-100 text-sm rounded p-3 overflow-x-auto">{command}</pre>
    ) if command else None

    return (
        <li className="mb-4">
            <p className="text-gray-700"><span className="font-semibold">{number}.</span>{" "}{text}</p>
            {command_block}
        </li>
    )
