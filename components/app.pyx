from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.general.navbar import Navbar
from components.general.header import Header
from components.general.footer import Footer
from components.pages.home import Home
from components.pages.about import About
from components.pages.projects import Projects


@component
def App() -> Any:
    return (
        <div className="min-h-screen bg-white">
            <Navbar />
            <Header />
            <div className="max-w-5xl mx-auto px-6">
                <section id="home" className="py-16">
                    <Home />
                </section>
                <hr className="border-gray-200" />
                <section id="projects" className="py-16">
                    <Projects />
                </section>
                <hr className="border-gray-200" />
                <section id="about" className="py-16">
                    <About />
                </section>
            </div>
            <Footer />
        </div>
    )
