from reactpy import component, use_state
from reactpy_jsx import jsx


@component
def HelloWorld():
    count, set_count = use_state(0)
    return (
        <div>
            <h1>Hello, World!</h1>
            <p>Built with ReactPy + PyJSX on Starlette</p>
            <p>Button clicks: {count}</p>
            <button onClick={lambda e: set_count(count + 1)}>
                Click me
            </button>
        </div>
    )
