from reactpy import component
from reactpy_jsx import jsx
from typing import Any

from components.games.install_guide import InstallGuide

STEPS = [
    ("Install uv, the Python tool the project runs on. It also installs numpy, the only library needed. You need Python 3.10 or newer. On Linux or macOS:", "curl -LsSf https://astral.sh/uv/install.sh | sh"),
    ("Download the project. The trained models come with it.", "git clone https://github.com/nathanphoffman/TzaarNeuralNet\ncd TzaarNeuralNet"),
    ("Start the game server, then open http://localhost:8001 in your browser, pick a model and generation, and play against it.", "uv run serve.py"),
    ("Optional: train the models yourself. A live dashboard opens at http://localhost:8002. Press Ctrl+C to stop; running it again picks up from the last finished generation.", "uv run train.py"),
]


@component
def TzaarNetGuide() -> Any:
    return <InstallGuide steps={STEPS} />
