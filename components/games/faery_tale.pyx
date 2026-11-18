from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.games.install_guide import InstallGuide

STEPS = [
    ("Install the .NET 10 SDK (from dotnet.microsoft.com) and the SDL2 development files. On Ubuntu or Debian:", "sudo apt install libsdl2-dev"),
    ("Download the game.", "git clone https://github.com/nathanphoffman/FairyTaleAnAdventure\ncd FairyTaleAnAdventure"),
    ("Download the original game files into the folder the game looks in (it is not part of this project).", "git clone https://github.com/viridia/faery-tale-amiga"),
    ("Start it. The intro plays first (Esc skips it).", "dotnet run -c Release --project csharp/FaeryTale"),
    ("Controls: arrow keys walk, right mouse button or Ctrl fights, F11 toggles fullscreen, Esc closes the window. A gamepad also works.", ""),
]


@component
def FaeryTaleGuide() -> Any:
    screenshot = <img src="/static/img/faery_tale_adventure.png" alt="The Faery Tale Adventure start menu." loading="lazy" className="w-full rounded shadow mb-3" />

    return <InstallGuide steps={STEPS}>{screenshot}</InstallGuide>
