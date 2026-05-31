import re
from typing import Any, Callable, Union

from reactpy import html as _html


def _to_snake_case(name: str) -> str:
    s = re.sub(r"(.)([A-Z][a-z]+)", r"\1_\2", name)
    return re.sub(r"([a-z0-9])([A-Z])", r"\1_\2", s).lower()


def jsx(
    tag: Union[str, Callable[..., Any]],
    props: Union[dict[str, Any], None] = None,
    *children: Any,
) -> Any:
    """Bridge between pyjsx and ReactPy.

    pyjsx compiles <h1>Hello</h1> → jsx("h1", {}, "Hello")
    This function maps those calls to reactpy html.* elements.
    """
    if isinstance(tag, str):
        converted: dict[str, Any] = {_to_snake_case(k): v for k, v in (props or {}).items()}
        fn: Callable[..., Any] = getattr(_html, tag)
        flat = [item for c in children for item in (c if isinstance(c, list) else [c])]
        return fn(converted, *flat) if converted else fn(*flat)

    if hasattr(tag, "__wrapped__"):
        # @component Python function — props become snake_case kwargs
        converted = {_to_snake_case(k): v for k, v in (props or {}).items()}
        flat_children = children[0] if children and isinstance(children[0], list) else list(children)
        if flat_children:
            return tag(children=flat_children, **converted)
        return tag(**converted)

    # VDOM constructor (e.g. from export()) — pass props dict as-is with original keys
    if props:
        return tag(props, *children)
    return tag(*children) if children else tag()
