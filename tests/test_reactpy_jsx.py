from reactpy import html

from reactpy_jsx import _to_snake_case, jsx


def test_to_snake_case_converts_camel_case():
    assert _to_snake_case("className") == "class_name"
    assert _to_snake_case("onClick") == "on_click"


def test_to_snake_case_handles_acronyms_and_lowercase():
    assert _to_snake_case("myHTMLPage") == "my_html_page"
    assert _to_snake_case("title") == "title"


def test_jsx_html_element_without_props():
    assert jsx("h1", {}, "Hello") == html.h1("Hello")


def test_jsx_html_element_converts_props_to_snake_case():
    assert jsx("div", {"className": "box"}, "hi") == html.div({"class_name": "box"}, "hi")


def test_jsx_html_element_flattens_lists_and_drops_none():
    assert jsx("ul", {}, [html.li("a"), html.li("b")], None) == html.ul(html.li("a"), html.li("b"))


def test_jsx_vdom_constructor_keeps_original_prop_keys():
    def constructor(*args):
        return args

    assert jsx(constructor, {"dataId": 1}, "x") == ({"dataId": 1}, "x")
    assert jsx(constructor, None) == ()
