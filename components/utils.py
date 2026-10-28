def children_text(children) -> str:
    """Extract and normalize whitespace from JSX text children (passed as a list of strings)."""

    if not children:
        return ""

    # Skip non-string children (nested elements) and blank strings left by JSX line breaks
    return " ".join(child.strip() for child in children if isinstance(child, str) and child.strip())
