import asyncio
from reactpy import component, use_state
from reactpy_jsx import jsx
from reactpy.backend.hooks import use_location
from typing import Any

from components.general.navbar import Navbar
from components.general.header import Header
from components.general.footer import Footer
from components.pages.home import Home
from components.pages.about import About
from components.pages.projects import Projects
from components.router import PopStateListener


@component
def App() -> Any:
    location = use_location()
    path, set_path = use_state(location.pathname)
    fading, set_fading = use_state(False)

    async def handle_navigate(new_path: str) -> None:
        set_fading(True)
        await asyncio.sleep(0.3)
        set_path(new_path)
        await asyncio.sleep(0.05)
        set_fading(False)

    if path == "/projects":
        content = <Projects />
    elif path == "/about":
        content = <About />
    else:
        content = <Home />

    content_class = "max-w-5xl mx-auto px-6 py-16 transition-opacity duration-300 " + ("opacity-0" if fading else "opacity-100")

    return (
        <div className="min-h-screen bg-white">
            <PopStateListener onNavigate={handle_navigate} />
            <Navbar on_navigate={handle_navigate} />
            <Header />
            <div className={content_class}>
                {content}
            </div>
            <Footer />
        </div>
    )
