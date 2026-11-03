from reactpy import component
from reactpy_jsx import jsx
from reactpy.backend.hooks import use_location
from typing import Any

from components.layout.navbar import Navbar
from components.layout.header import Header
from components.layout.footer import Footer
from components.games.game_modal import GameModals
from pages.home import Home
from pages.about import About
from pages.projects import Projects

@component
def App() -> Any:
    # Links are plain <a> tags that do a full page load, so the address bar is the only
    # source of truth for which page to show.
    path = use_location().pathname

    if path == "/projects":
        content = <Projects />
    elif path == "/about":
        content = <About />
    else:
        content = <Home />

    # Modals sit outside the fading content below: its animation would trap them under the navbar
    modals = <GameModals /> if path == "/projects" else None

    return (
        <div className="min-h-screen bg-white">
            {modals}
            <Navbar />
            <Header />
            <div className="animate-fade-in motion-reduce:animate-none">
                <div className="max-w-5xl mx-auto px-6 py-16">
                    {content}
                </div>
                <Footer />
            </div>
        </div>
    )
