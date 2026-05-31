from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def Header() -> Any:
    bg_style = {"backgroundImage": "url('/static/img/2.jpg')", "backgroundSize": "cover", "backgroundPosition": "center"}
    return (
        <header style={bg_style} className="relative text-white text-center pt-32 pb-24 mt-16">
            <div className="absolute inset-0"></div>
            <div className="relative max-w-3xl mx-auto px-4">
                <h2 className="text-5xl font-bold mb-4">Nathan Hoffman .me</h2>
                <hr className="w-16 mx-auto border-gray-300 mb-4" />
                <p className="text-lg text-gray-200">Programmer by day, Astronomer by night:</p>
                <p className="text-gray-300">And Tabletop gamer when friends are nearby</p>
            </div>
        </header>
    )
