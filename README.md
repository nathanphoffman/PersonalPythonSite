# Personal Python Site

A personal website built with [ReactPy](https://reactpy.dev/) (Python-based React-style components), Starlette, and Tailwind CSS. Components are written in `.pyx` files (JSX-like Python syntax) and transpiled at runtime.

## Prerequisites

- [Node.js](https://nodejs.org/) (v18+)
- [uv](https://docs.astral.sh/uv/getting-started/installation/) — Python package manager

## Setup

```bash
npm run setup
```

This installs Python dependencies (via `uv sync`) and Node dependencies (via `npm install`) in one step. A `.venv` is created automatically by `uv`.

## Development

```bash
npm run dev
```

Starts three concurrent watchers:

| Process | Description |
|---------|-------------|
| `css`   | Tailwind CSS in watch mode |
| `server` | Uvicorn with hot reload on `.pyx` file changes |
| `mypy`  | Type-checking watcher on the `components/` directory |

The app runs at [http://localhost:8000](http://localhost:8000).

## Other commands

```bash
npm run type-check   # run mypy once
npm run build:css    # build Tailwind CSS (unminified)
npm run deploy       # build Tailwind CSS minified (used in production)
```

## Project structure

```
components/       # ReactPy components (.pyx files)
  pages/          # page-level components
scripts/          # dev tooling (mypy wrapper)
static/           # CSS and static assets
main.py           # Starlette app entry point
pyproject.toml    # Python dependencies and tool config
package.json      # Node dependencies and npm scripts
```

## Deployment

The project includes config for [Railway](https://railway.app/) (`railway.toml`) and [Render](https://render.com/) (`render.yaml`). Both use `uv sync --no-dev` for the build step and `uv run uvicorn` as the start command.
