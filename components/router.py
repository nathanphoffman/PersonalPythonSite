from reactpy.web import module_from_string, export

_JS = """
import * as React from "https://esm.sh/react@18";
import * as ReactDOM from "https://esm.sh/react-dom@18";

// ReactPy's client can call bind() twice for the same node when a re-render lands before the
// first mount finishes. Two React roots in one node fight over its children and eventually
// throw, which freezes all page updates, so keep a single root per node.
export function bind(node, config) {
    function getRoot() {
        if (!node.__reactRoot) node.__reactRoot = ReactDOM.createRoot(node);
        return node.__reactRoot;
    }
    return {
        create: (component, props, children) =>
            React.createElement(component, wrapEventHandlers(props), ...children),
        render: (element) => getRoot().render(element),
        unmount: () => {
            if (node.__reactRoot) node.__reactRoot.unmount();
            delete node.__reactRoot;
        },
    };
}

export function ScrollButton({ targetId, direction, className, label, children }) {
    function handleClick() {
        const el = document.getElementById(targetId);
        if (!el || !el.firstElementChild) return;
        // Scroll by however many cards fit in view, so a click moves a full "page".
        const gap = parseFloat(getComputedStyle(el).columnGap) || 0;
        const cardStep = el.firstElementChild.offsetWidth + gap;
        const perView = Math.max(1, Math.floor((el.clientWidth + gap) / cardStep));
        el.scrollBy({ left: direction * perView * cardStep, behavior: "smooth" });
    }
    return React.createElement("button", { type: "button", className, onClick: handleClick, "aria-label": label }, children);
}

// Fades carousel cards based on how much of each is in view: fully visible cards are
// opaque, cards peeking in from the edges fade down to 25%.
export function CarouselFade({ targetId }) {
    React.useEffect(function () {
        let el = null;
        let frame = 0;
        function update() {
            frame = 0;
            const style = getComputedStyle(el);
            const rect = el.getBoundingClientRect();
            const left = rect.left + parseFloat(style.paddingLeft);
            const right = rect.right - parseFloat(style.paddingRight);
            for (const card of el.children) {
                const r = card.getBoundingClientRect();
                const visible = Math.max(0, Math.min(r.right, right) - Math.max(r.left, left));
                card.style.opacity = String(0.25 + 0.75 * Math.min(1, visible / r.width));
            }
        }
        function schedule() {
            if (!frame) frame = requestAnimationFrame(update);
        }
        function attach() {
            el = document.getElementById(targetId);
            if (!el) { frame = requestAnimationFrame(attach); return; }
            el.addEventListener("scroll", schedule, { passive: true });
            window.addEventListener("resize", schedule);
            update();
        }
        attach();
        return function () {
            cancelAnimationFrame(frame);
            if (el) el.removeEventListener("scroll", schedule);
            window.removeEventListener("resize", schedule);
        };
    }, [targetId]);
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
ScrollButton, CarouselFade = export(_module, ["ScrollButton", "CarouselFade"])
