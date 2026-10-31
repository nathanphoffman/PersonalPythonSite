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
                and hosted one of my own. 
            </p>
            <h2 className="text-2xl font-semibold text-gray-800 mt-8 mb-3">Career</h2>
            <p>
                While working for a REIT company as a Desktop Support Technician, I had a chance to make my childhood love a reality, becoming a FT programmer. I have since worked
                as an Application Developer for that REIT company, a Senior Software Developer for a startup, a vitamin company, and a home building business.
                I also find myself coding in my spare time and my code can be found on GitHub. Currently my main
                talents are in the web specifically with Typescript, React, Vue, C#, Node, MongoDB and some cloud services.  
            </p>
            <h2 className="text-2xl font-semibold text-gray-800 mt-8 mb-3">A New Surge</h2>
            <p>
            Covid really was a hard time on me (and many others I am sure) and while my love of code dropped some, probably due to a lack of time, that has substantially changed. 
            I have made a return to my hobby programming roots, possibly more strongly than ever in my life, with May 2026 - present being one of my most productive programming periods of my life. 
            I have now created my own programming language (Deor), explored Go, Rust, C (some more), Mojo, and Python.
            </p>
            <h2 className="text-2xl font-semibold text-gray-800 mt-8 mb-3">Astronomy</h2>
            <p>
                When I was young, my dad would look at the nightsky through a small spotting scope at planets,
                planets that I had seen on science programs or Star Trek. I remember being utterly fascinated
                that one could see something as distant as a planet through nothing more than glass, for quite a while I went out to dark sky sites and looked upwards, and while stargazing itself is not                     something I do as much anymore, I still dust off my telescope once in a while.
                I also love staying up-to-date with deep space news (like JWST) and looking back at the 1960s when spaceflight and science
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