from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.games.install_guide import InstallGuide

LINUX_DOWNLOAD = "/static/downloads/SpaceCombat-linux.tar.gz"
WINDOWS_DOWNLOAD = "/static/downloads/SpaceCombat-windows.zip"

STEPS = [
    ("Windows: download the zip above and unzip it anywhere. Windows may warn that the app is from an unknown publisher; choose More info, then Run anyway.", ""),
    ("Windows: double-click SpaceCombat.exe. It runs fullscreen and Esc quits.", ""),
    ("Linux: download the tar.gz above, then unpack it and start the game.", "tar -xzf SpaceCombat-linux.tar.gz\ncd SpaceCombat-linux\n./SpaceCombat"),
    ("Optional multiplayer: one player runs the server (Start-Server.bat on Windows, ./start-server.sh on Linux) and everyone else picks JOIN GAME and types the host's address. It uses UDP port 7777, so forward that port on your router for internet play.", ""),
    ("Controls: mouse steers, W/S throttle, A/D and R/F strafe, Q/E roll, left click or Space fires, right click fires a missile, 1-7 picks a cannon.", ""),
]


@component
def SpaceCombatGuide() -> Any:
    downloads = [("Download for Windows", WINDOWS_DOWNLOAD), ("Download for Linux", LINUX_DOWNLOAD)]

    screenshot = <img src="/static/img/space_game_3d.png" alt="3D Space Game in action." loading="lazy" className="w-full rounded shadow mb-3" />

    return <InstallGuide downloads={downloads} steps={STEPS}>{screenshot}</InstallGuide>
