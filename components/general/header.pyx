from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def Header() -> Any:
    bg_style = {"backgroundImage": "url('/static/img/2.jpg')", "backgroundSize": "cover", "backgroundPosition": "center"}
    return (
        <header style={bg_style} className="bg-stone-700 relative text-white text-center pt-36 pb-16">
            <div className="absolute inset-0 bg-black/15"></div>
            <div className="relative max-w-3xl mx-auto px-4">
                <h2 className="text-5xl font-bold mb-4">Nathan Hoffman.me</h2>
                <hr className="w-16 mx-auto border-gray-300 mb-4" />
                <p className="text-lg text-gray-200">Programmer by day, astronomer by night,</p>
                <p className="text-gray-300">and tabletop gamer when friends are nearby</p>
            </div>
        </header>
    )
