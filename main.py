import pyjsx_setup  # registers .px / .pyx import hook — must be first

pyjsx_setup.setup()

from reactpy.backend.starlette import configure
from starlette.applications import Starlette

from components.hello import HelloWorld  # type: ignore[import-not-found]

app = Starlette()
configure(app, HelloWorld)
