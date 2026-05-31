import pyjsx_setup  # registers .px / .pyx import hook — must be first

pyjsx_setup.setup()

from reactpy import html
from reactpy.backend.starlette import Options, configure
from starlette.applications import Starlette
from starlette.staticfiles import StaticFiles

from components.app import App  # type: ignore[import-not-found]

app = Starlette()
app.mount("/static", StaticFiles(directory="static"), name="static")

options = Options(
    head=(
        html.title("The Coding Astronomer"),
        html.link({"rel": "stylesheet", "href": "/static/output.css"}),
    )
)
configure(app, App, options=options)
