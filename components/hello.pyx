from reactpy import component, use_state
from reactpy_jsx import jsx


@component
def HelloWorld():

    count, set_count = use_state(0)
    x: int = "hello"
    
    return (
        <div className="min-h-screen bg-gray-50 flex items-center justify-center">
            <div className="text-center space-y-4">
                <h1 className="text-4xl font-bold text-gray-900">Hello, World 7!</h1>
                <p className="text-gray-500">Built with ReactPy + PyJSX on Starlette</p>
                <p className="text-lg text-gray-700">Button clicks: {count}</p>
                <button
                    className="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700"
                    onClick={lambda e: set_count(count + 1)}
                >
                    Click me
                </button>
            </div>
        </div>
    )
