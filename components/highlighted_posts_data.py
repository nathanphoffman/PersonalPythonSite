"""Highlighted blog posts, entered by hand so they don't depend on Medium's RSS feed (which only lists the 10 newest).

image is a file name in static/img. Leave fields empty to show a card without them.
"""
from dataclasses import dataclass

@dataclass(frozen=True)
class HighlightedPost:
    title: str
    link: str
    date: str = ""
    snippet: str = ""
    image: str = ""


HIGHLIGHTED_POSTS = [
    HighlightedPost(
        title='Entropy with AI (and Humans) in Code Systems',
        link="https://medium.com/@nathanphoffman/entropy-with-ai-and-humans-in-code-systems-1ebdcff9642f",
        date='April 25, 2026',
        snippet='Something occurred to me several days ago while I was having a surprisingly difficult time generating a basic table for amateur astronomy targets using Claude. After multiple prompts it seemed to get worse: I had a realization that code projects could be represented as a state of entropy (rather than compounding error) just as we measure the universe. The idea being: could AI (and humans for that matter) simply trend towards a more chaotic state without some kind of brake? Or perhaps is it just…',
        image='blog-1ebdcff9642f.png',
    ),
    HighlightedPost(
        title='The Time Estimate System I Love',
        link="https://medium.com/@nathanphoffman/the-time-estimate-system-i-love-b40c0a1d3d79",
        date='October 13, 2022',
        snippet='Back when I was working at a REIT company, I was developing a system for Revenue Management to price storage units. While the system was being developed, the revenue team was excited to start using it as it was being actively developed (effectively an alpha). The problem was, they had many wish-list items they wanted implemented quickly so that they could perform their job functions more efficiently. These requests were filed into Asana and were submitted in large numbers extremely rapidly.…',
    ),
    HighlightedPost(
        title='AI is likely to make code knowledge more useful',
        link="https://medium.com/@nathanphoffman/ai-is-likely-to-make-code-more-useful-efb13924e752",
        date='May 05, 2026',
        snippet='An interesting argument I have heard is that AI will remove our ability to think critically about programming, and discourage newer programmers from learning how to code. Interestingly, I think it is a bit of the opposite. I have recently been trying to compose computed tables using AI for astronomy targets and another for ethical food choices (based on ecosystems, intelligent animals, pesticide use, etc). What shocked me is how horrific it was at composing these tables using calculations…',
        image='blog-efb13924e752.png',
    ),
    HighlightedPost(
        title='What makes AI different from us?',
        link="https://medium.com/@nathanphoffman/what-makes-ai-different-from-us-378720f3aee1",
        date='September 23, 2026',
        snippet='A week or two back I was immersed in thought as to why everyone was saying we had achieved “AGI” or why Swarm Agents were somehow sentient or that these frontier models were somehow going to become the new Skynet. Aside from the fact that modern frontier models are just doing the same thing all AI has done for years which is matrix weighing and multi-dimensional signals (predicting what to say based on training data), I was wondering what really defines “human-like” intelligence and more so…',
        image='',
    ),
    HighlightedPost(
        title='Making a Simpler Web',
        link="https://medium.com/@nathanphoffman/making-a-simpler-web-6b130d4e0e5f",
        date='July 11, 2026',
        snippet='I have always been intrigued by people like Richard Stallman who make entire websites using nothing but html (no JS). In his case, it is freedom respecting, and while I respect Stallman tremendously I feel like my own frustration with the web is less the language being freedom respecting, even less the language being hard to write — I after-all love web programming. No, it is far more implementations on the web being frustrating to use, way overthought, and far too over-engineered — or as the…',
        image='blog-6b130d4e0e5f.png',
    ),
]
