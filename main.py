import pyjsx_setup  # registers .px / .pyx import hook — must be first

pyjsx_setup.setup()

from reactpy import html
from reactpy.backend._common import read_client_index_html
from reactpy.backend.starlette import Options, configure
from starlette.applications import Starlette
from starlette.requests import Request
from starlette.responses import HTMLResponse
from starlette.staticfiles import StaticFiles

from components.app import App  # type: ignore[import-not-found]
from shell import render_shell_html

app = Starlette()
app.mount("/static", StaticFiles(directory="static"), name="static")

options = Options(
    head=(
        html.title("The Coding Astronomer"),
        html.meta({"name": "viewport", "content": "width=device-width, initial-scale=1"}),
        html.link({"rel": "stylesheet", "href": "/static/output.css"}),
    ),
    serve_index_route=False,
)
configure(app, App, options=options)

# Serve our own index page so it includes the static app shell (see shell.py).
_index_html: str | None = None


async def serve_index(request: Request) -> HTMLResponse:
    global _index_html
    if _index_html is None:
        shell_html = await render_shell_html()
        _index_html = read_client_index_html(options).replace(
            '<div id="app"></div>',
            f'<div id="app"></div><div id="app-shell">{shell_html}</div>',
        )
    return HTMLResponse(_index_html)


app.add_route("/", serve_index)
app.add_route("/{path:path}", serve_index)
