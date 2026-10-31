from reactpy import component
from reactpy_jsx import jsx
from reactpy.backend.hooks import use_location
from typing import Any

from components.navbar import Navbar
from components.header import Header
from components.footer import Footer
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

    return (
        <div className="min-h-screen bg-white">
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
