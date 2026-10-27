def children_text(children) -> str:
    """Extract and normalize whitespace from JSX text children (passed as a list of strings)."""
    if not children:
        return ""

    return " ".join(child.strip() for child in children if isinstance(child, str) and child.strip())
