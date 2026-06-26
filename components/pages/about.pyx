from reactpy import component
from reactpy_jsx import jsx
from typing import Any


@component
def About() -> Any:
    return (
        <div className="text-gray-700 leading-relaxed">
            <h1 className="text-4xl font-bold text-gray-900 mb-8">About Me</h1>
            <div className="flex justify-center mb-8">
                <img src="/static/img/nate.jpg" alt="Me at a waterfall." className="rounded-full w-48 h-48 object-cover shadow-lg" />
            </div>

            <h2 className="text-2xl font-semibold text-gray-800 mt-8 mb-3">Programming</h2>
            <p>
                In the late 80s I was born into a basement which was flooded with Commodore 64 Amiga hardware
                and software from my dad's closed computer shop business. For many years, my brother and I
                discovered treasures from the shop in old boxes and storage. In my preteen years my dad handed
                me the Second Edition C book by Brian Kernighan and Dennis Ritchie, and I began building both my
                first programs and my first computers. By high school I was creating websites for friends who had
                parents with businesses, and building computers for their families. I joined computer LAN groups
                and hosted one of my own. Today, many years later, I continue my career in code, having worked
                as an Application Developer for a REIT company and a Senior Software Developer for a startup, vitamin company, and home building business.
                I also find myself coding in my spare time and my code can be found on GitHub. Currently my main
                talents are in the web specifically with Typescript, React, Vue, C#, Node, MongoDB and some cloud services.  
                I also have begun experimenting with Python, Go, Rust and even created my own programming language Deor.  
                Plus I sometimes go back to my roots opening up old school C code every once in a while.
            </p>

            <h2 className="text-2xl font-semibold text-gray-800 mt-8 mb-3">Astronomy</h2>
            <p>
                When I was young, my dad would look at the nightsky through a small spotting scope at planets,
                planets that I had seen on science programs or Star Trek. I remember being utterly fascinated
                that one could see something as distant as a planet through nothing more than glass, and today
                I make treks every year far away from city lights. While I am not stargazing, I am
                staying up-to-date with space news and looking back at the 1960s when spaceflight and science
                were the rage of a generation.
            </p>

            <h2 className="text-2xl font-semibold text-gray-800 mt-8 mb-3">Other Interests</h2>
            <p>
                I have had many other hobbies, though none as long or consistent as my love of programming and
                astronomy. Among them are: board gaming, video gaming, hiking, studying literary classics like
                Tolkien and Shakespeare.
            </p>
        </div>
    )
