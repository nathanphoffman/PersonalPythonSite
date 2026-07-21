from reactpy import component, use_state
from reactpy_jsx import jsx
from typing import Any

from components.router import NavLink


@component
def Navbar(on_navigate=None) -> Any:
    menu_open, set_menu_open = use_state(False)

    def toggle_menu(e):
        set_menu_open(lambda open_: not open_)

    def close_menu(e):
        set_menu_open(False)

    async def handle_mobile_navigate(href):
        set_menu_open(False)
        if on_navigate:
            await on_navigate(href)

    overlay_visibility = "" if menu_open else "hidden"
    menu_visibility = "" if menu_open else "hidden"

    overlay = (
        <div className={overlay_visibility + " fixed inset-0 z-0"} onClick={close_menu}></div>
    )

    mobile_menu = (
        <div className={menu_visibility + " md:hidden bg-gray-800 border-t border-gray-700 px-6 py-4 space-y-4 relative z-10"}>
                <NavLink href="/" onNavigate={handle_mobile_navigate} className="block text-center text-gray-300 hover:text-white hover:bg-gray-700 text-sm py-3 px-5 rounded-md border border-gray-700 shadow-md transition-colors">Home (Latest Posts)</NavLink>
                <NavLink href="/projects" onNavigate={handle_mobile_navigate} className="block text-center text-gray-300 hover:text-white hover:bg-gray-700 text-sm py-3 px-5 rounded-md border border-gray-700 shadow-md transition-colors">Code Projects</NavLink>
                <NavLink href="/about" onNavigate={handle_mobile_navigate} className="block text-center text-gray-300 hover:text-white hover:bg-gray-700 text-sm py-3 px-5 rounded-md border border-gray-700 shadow-md transition-colors">About Me</NavLink>
        </div>
    )

    return (
        <nav className="fixed top-0 w-full bg-gray-900 z-50 shadow-lg">
            <div className="max-w-5xl mx-auto px-6 h-16 flex items-center justify-between relative z-10">
                <NavLink href="/" onNavigate={on_navigate} className="text-white text-xl font-bold hover:text-gray-300 transition-colors">
                    The Code of Nathan Hoffman
                </NavLink>

                <ul className="hidden md:flex space-x-6 list-none m-0 p-0">
                    <li><NavLink href="/" onNavigate={on_navigate} className="text-gray-300 hover:text-white text-sm transition-colors">Home (Latest Posts)</NavLink></li>
                    <li><NavLink href="/projects" onNavigate={on_navigate} className="text-gray-300 hover:text-white text-sm transition-colors">Code Projects</NavLink></li>
                    <li><NavLink href="/about" onNavigate={on_navigate} className="text-gray-300 hover:text-white text-sm transition-colors">About Me</NavLink></li>
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
