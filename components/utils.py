def children_text(children) -> str:
    """Extract and normalize whitespace from JSX text children (passed as a list of strings)."""
    if not children:
        return ""
    return " ".join(c.strip() for c in children if isinstance(c, str) and c.strip())
