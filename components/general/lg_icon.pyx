from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def LgIcon(address: str = "#", icon: str = "", link_target: str = "_self") -> Any:
    return (
        <a
            href={address}
            target={link_target}
            rel="noopener noreferrer"
            className="inline-block px-3 py-1 text-gray-400 hover:text-white text-sm font-medium capitalize transition-colors"
        >
            {icon}
        </a>
    )
