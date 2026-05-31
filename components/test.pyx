# Required component imports
from reactpy import component, use_state
from reactpy_jsx import jsx
from typing import Any

@component
def Test() -> Any:
    return (<div>Hello World</div>)
