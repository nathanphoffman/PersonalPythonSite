from reactpy import component, use_state
from reactpy_jsx import jsx
from typing import Any


@component
def Navbar() -> Any:
    menu_open, set_menu_open = use_state(False)

    mobile_menu = None
    if menu_open:
        mobile_menu = (
            <div className="md:hidden bg-gray-800 border-t border-gray-700 px-6 py-4 space-y-3">
                <a href="/" className="block text-gray-300 hover:text-white text-sm py-1">Home (Latest Posts)</a>
                <a href="/projects" className="block text-gray-300 hover:text-white text-sm py-1">Code Projects</a>
                <a href="/about" className="block text-gray-300 hover:text-white text-sm py-1">About Me</a>
            </div>
        )

    return (
        <nav className="fixed top-0 w-full bg-gray-900 z-50 shadow-lg">
            <div className="max-w-5xl mx-auto px-6 h-16 flex items-center justify-between">
                <a href="/" className="text-white text-xl font-bold hover:text-gray-300 transition-colors">
                    The Coding Astronomer
                </a>
                <ul className="hidden md:flex space-x-6 list-none m-0 p-0">
                    <li><a href="/" className="text-gray-300 hover:text-white text-sm transition-colors">Home (Latest Posts)</a></li>
                    <li><a href="/projects" className="text-gray-300 hover:text-white text-sm transition-colors">Code Projects</a></li>
                    <li><a href="/about" className="text-gray-300 hover:text-white text-sm transition-colors">About Me</a></li>
                </ul>
                <button
                    className="md:hidden text-gray-300 hover:text-white text-2xl leading-none"
                    onClick={lambda e: set_menu_open(not menu_open)}
                >
                    ☰
                </button>
            </div>
            {mobile_menu}
        </nav>
    )
