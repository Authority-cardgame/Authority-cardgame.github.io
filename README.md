# Authority Cardgame — UV project

This repo is configured as a simple Python/Markdown site project using `uv` for environment management and MkDocs for local previewing and site builds.

**Prerequisites**
- Python 3.8+
  
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
# install project dependencies
uv pip install .
```

**Quick MkDocs guide (local debugging)**
From project root with venv activated:

- Serve locally (live reload):
```bash
mkdocs serve
# or explicitly:
uv pip run mkdocs serve
```
Open http://127.0.0.1:8000 in a browser.