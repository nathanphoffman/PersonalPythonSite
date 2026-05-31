import re
from reactpy import html as _html


def _to_snake_case(name):
    s = re.sub(r"(.)([A-Z][a-z]+)", r"\1_\2", name)
    return re.sub(r"([a-z0-9])([A-Z])", r"\1_\2", s).lower()


def jsx(tag, props=None, *children):
    """Bridge between pyjsx and ReactPy.

    pyjsx compiles <h1>Hello</h1> → jsx("h1", {}, "Hello")
    This function maps those calls to reactpy html.* elements.
    """
    props = {_to_snake_case(k): v for k, v in (props or {}).items()}

    if isinstance(tag, str):
        fn = getattr(_html, tag)
        return fn(props, *children) if props else fn(*children)

    # tag is a @component function — call it directly
    return tag(**props)
