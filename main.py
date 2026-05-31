import pyjsx.auto_setup  # registers .px import hook — must be first

from reactpy.backend.starlette import configure
from starlette.applications import Starlette

from components.hello import HelloWorld

app = Starlette()
configure(app, HelloWorld)
