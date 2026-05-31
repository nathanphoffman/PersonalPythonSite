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

    if path == "/projects":
        content = <Projects />
    elif path == "/about":
        content = <About />
    else:
        content = <Home />

    return (
        <div className="min-h-screen bg-white">
            <PopStateListener onNavigate={set_path} />
            <Navbar on_navigate={set_path} />
            <Header />
            <div className="max-w-5xl mx-auto px-6 py-16">
                {content}
            </div>
            <Footer />
        </div>
    )
