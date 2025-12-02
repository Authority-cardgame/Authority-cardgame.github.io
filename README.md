# Authority Cardgame — UV project

This repo is configured as a simple Python/Markdown site project using `uv` for environment management and MkDocs for local previewing and site builds.

**Prerequisites**
- Python 3.8+
- `curl` (for installer scripts) or PowerShell on Windows

**Install `uv`**

Windows (PowerShell)
```powershell
# On Windows.
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

Linux / macOS (sh)
```bash
# On macOS and Linux.
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Confirm installation:

```bash
uv --version
```

**Create and use the virtual environment (uv)**
From the repository root:

```bash
# create a .venv using uv
uv venv

# Windows activate
.\.venv\Scripts\activate

# Linux/macOS activate
source .venv/bin/activate
```

**Install dependencies and create package.lock**
If your project declares dependencies in `pyproject.toml`, install them using uv's pip wrapper. Example (explicit install):

```bash
# install MkDocs for local debugging (or install your project if pyproject defines deps)
uv pip install mkdocs mkdocs-material

# or install the local project (if pyproject.toml has dependencies)
uv pip install .
```

Create a lock file (package.lock) using uv:

```bash
# produce a lock of installed packages using uv's pip
uv pip freeze > package.lock
```

Commit `package.lock` to track exact dependency versions.

**Quick MkDocs guide (local debugging)**
From project root with venv activated:

- Serve locally (live reload):
```bash
mkdocs serve
# or explicitly:
uv pip run mkdocs serve
```
Open http://127.0.0.1:8000 in a browser.

- Build the static site:
```bash
mkdocs build -d site
```

The built site will be in the `site/` directory (this is what GitHub Pages will host).

**Git ignore recommendations**
Ensure the following (or similar) entries exist in `.gitignore`:
- `.venv/`
- `site/`
- `package.lock` (if you prefer not to commit it) — otherwise keep it tracked

**Troubleshooting**
- If `uv` is not on PATH after install, restart your terminal.
- Use the `uv pip` wrapper so the pip operations run inside the uv-managed venv.

That's it — use `uv venv`, `uv pip install ...`, `uv pip freeze > package.lock`, and `mkdocs serve` for local debugging.
