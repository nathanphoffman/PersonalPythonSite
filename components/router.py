from reactpy.web import module_from_string, export

_JS = """
import * as React from "https://esm.sh/react@18";
import * as ReactDOM from "https://esm.sh/react-dom@18";

export function bind(node, config) {
    const root = ReactDOM.createRoot(node);
    return {
        create: (component, props, children) =>
            React.createElement(component, wrapEventHandlers(props), ...children),
        render: (element) => root.render(element),
        unmount: () => root.unmount(),
    };
}

export function NavLink({ href, onNavigate, className, children }) {
    function handleClick(e) {
        e.preventDefault();
        window.history.pushState(null, "", href);
        if (onNavigate) onNavigate(href);
    }
    return React.createElement("a", { href, className, onClick: handleClick }, children);
}

export function PopStateListener({ onNavigate }) {
    React.useEffect(function () {
        function handler() {
            if (onNavigate) onNavigate(window.location.pathname);
        }
        window.addEventListener("popstate", handler);
        return function () { window.removeEventListener("popstate", handler); };
    }, []);
    return null;
}

function wrapEventHandlers(props) {
    const newProps = Object.assign({}, props);
    for (const [key, value] of Object.entries(props)) {
        if (typeof value === "function") {
            newProps[key] = makeJsonSafeEventHandler(value);
        }
    }
    return newProps;
}

function makeJsonSafeEventHandler(oldHandler) {
    return function () {
        oldHandler(
            ...Array.from(arguments).filter((value) => {
                if (typeof value === "object" && value.nativeEvent) return true;
                try { JSON.stringify(value); return true; }
                catch { return false; }
            })
        );
    };
}
"""

_module = module_from_string("spa-router", _JS)
NavLink, PopStateListener = export(_module, ["NavLink", "PopStateListener"])
