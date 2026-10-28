def children_text(children) -> str:
    """Extract and normalize whitespace from JSX text children (passed as a list of strings)."""

    if not children:
        return ""

    # Skip non-string children (nested elements) and blank strings left by JSX line breaks
    return " ".join(child.strip() for child in children if isinstance(child, str) and child.strip())


def flatten_children(children) -> list:
    """Flatten one level of nested lists, since JSX can hand a component its list children wrapped in another list."""

    flat: list = []

    for child in children or []:
        flat.extend(child if isinstance(child, list) else [child])

    return flat
