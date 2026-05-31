from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def Header() -> Any:
    return (
        <header className="bg-gray-800 text-white text-center pt-32 pb-24 mt-16">
            <div className="max-w-3xl mx-auto px-4">
                <h2 className="text-5xl font-bold mb-4">The Coding Astronomer</h2>
                <hr className="w-16 mx-auto border-gray-500 mb-4" />
                <p className="text-lg text-gray-200">The Site of Nathan Hoffman</p>
                <p className="text-gray-400">Programmer and Amateur Astronomer</p>
            </div>
        </header>
    )
