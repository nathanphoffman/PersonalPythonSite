from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.utils import flatten_children

LINK_STYLE = "text-blue-600 hover:text-blue-800"


@component
def ExternalLink(href: str = "", extra_style: str = "", children=None) -> Any:
    """The site's standard blue link that opens in a new tab. `extra_style` adds layout classes like spacing.

    JSX drops plain spaces next to a link, so put {" "} beside it where a space is needed.
    """
    return (
        <a target="_blank" rel="noopener noreferrer" href={href} className={(LINK_STYLE + " " + extra_style).strip()}>
            {flatten_children(children)}
        </a>
    )


@component
def InternalLink(href: str = "", extra_style: str = "", children=None) -> Any:
    """Same look as ExternalLink but stays in the tab, for links to this site's own pages and #modals."""
    return <a href={href} className={(LINK_STYLE + " " + extra_style).strip()}>{flatten_children(children)}</a>
