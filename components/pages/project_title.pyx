from reactpy import component, html
from reactpy_jsx import jsx
from typing import Any

@component
def ProjectTitle(children=None) -> Any:
    return (<h2 className="text-2xl font-semibold text-gray-700 mt-10 mb-4 border-b border-gray-200 pb-2">{children}</h2>)
