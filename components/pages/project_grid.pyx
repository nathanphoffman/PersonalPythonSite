from reactpy import component, html
from typing import Any

@component
def ProjectGrid(children=None) -> Any:
    return (<div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">{children}</div>)
