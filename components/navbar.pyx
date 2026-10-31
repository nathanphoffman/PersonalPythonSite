from reactpy import component, use_state
from reactpy_jsx import jsx
from typing import Any


@component
def Navbar() -> Any:
    menu_open, set_menu_open = use_state(False)

    def toggle_menu(e):
        set_menu_open(lambda open_: not open_)

    def close_menu(e):
        set_menu_open(False)

    overlay_visibility = "" if menu_open else "hidden"
    menu_visibility = "" if menu_open else "hidden"

    overlay = (
        <div className={overlay_visibility + " fixed inset-0 z-0"} onClick={close_menu}></div>
    )

    mobile_menu = (
        <div className={menu_visibility + " md:hidden bg-gray-800 border-t border-gray-700 px-6 py-4 space-y-4 relative z-10"}>
                <a href="/" className="block text-center text-gray-300 hover:text-white hover:bg-gray-700 text-sm py-3 px-5 rounded-md border border-gray-700 shadow-md transition-colors">Home (Latest Posts)</a>
                <a href="/projects" className="block text-center text-gray-300 hover:text-white hover:bg-gray-700 text-sm py-3 px-5 rounded-md border border-gray-700 shadow-md transition-colors">Code Projects</a>
                <a href="/about" className="block text-center text-gray-300 hover:text-white hover:bg-gray-700 text-sm py-3 px-5 rounded-md border border-gray-700 shadow-md transition-colors">About Me</a>
        </div>
    )

    return (
        <nav className="fixed top-0 w-full bg-gray-900 z-50 shadow-lg">
            <div className="max-w-5xl mx-auto px-6 h-16 flex items-center justify-between relative z-10">
                <a href="/" className="text-white text-xl font-bold hover:text-gray-300 transition-colors">
                    The Code of Nathan Hoffman
                </a>

                <ul className="hidden md:flex space-x-6 list-none m-0 p-0">
                    <li><a href="/" className="text-gray-300 hover:text-white text-sm transition-colors">Home (Latest Posts)</a></li>
                    <li><a href="/projects" className="text-gray-300 hover:text-white text-sm transition-colors">Code Projects</a></li>
                    <li><a href="/about" className="text-gray-300 hover:text-white text-sm transition-colors">About Me</a></li>
                </ul>
                <button
                    className="md:hidden text-gray-300 hover:text-white text-2xl leading-none"
                    onClick={toggle_menu}
                >
                    ☰
                </button>
            </div>
            {mobile_menu}
            {overlay}
        </nav>
    )
