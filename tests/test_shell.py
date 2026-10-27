from shell import _to_plain_vdom


def test_non_dict_is_returned_unchanged():
    assert _to_plain_vdom("text") == "text"


def test_class_name_becomes_class_and_callables_and_none_are_dropped():
    model = {
        "tagName": "div",
        "attributes": {"className": "box", "onClick": lambda: None, "id": None},
        "children": ["hi", {"tagName": "span", "attributes": {"class_name": "x"}}],
    }

    assert _to_plain_vdom(model) == {
        "tagName": "div",
        "attributes": {"class": "box"},
        "children": ["hi", {"tagName": "span", "attributes": {"class": "x"}, "children": []}],
    }
