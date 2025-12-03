# Contributing to Authority Cardgame Documentation

Welcome! This guide makes it easy for anyone to contribute to the documentation, regardless of technical experience.

## Quick Start (Windows)

1. **Double-click `start-docs.bat`** in the project folder
   - This will automatically:
     - Install uv (if needed)
     - Create a Python virtual environment
     - Install MkDocs and dependencies
     - Start the documentation server

2. **Open your browser** to `http://127.0.0.1:8000`

3. **Edit markdown files** in the `authority_docs/` folder using any text editor (Notepad, VS Code, etc.)

4. **Changes appear automatically** in your browser (may take a few seconds)

5. **Press Ctrl+C** in the terminal to stop the server when done

## File Structure

```
authority_docs/
├── index.md                 # Main page / Table of Contents
├── glossary.md             # Game terminology
├── appendix.md             # Credits & visual placeholders
├── Factions/               # Faction-specific information
│   ├── overview.md
│   ├── royal_soldiers.md
│   └── ... (other factions)
└── Rules/                  # Game rules
    ├── setup.md
    ├── core_actions.md
    ├── combat.md
    ├── market.md
    ├── abilities.md
    └── modes.md
```

## Editing Guide

### Basic Formatting

- `# Heading 1` — Page title
- `## Heading 2` — Major sections
- `### Heading 3` — Subsections
- `- Item` — Bullet point
- `1. Item` — Numbered list
- `**bold**` — Bold text
- `*italic*` — Italic text
- `[link text](file.md)` — Links to other pages

### Example

```markdown
## Combat System

The combat system uses a **three-tiered defense** structure.

### Defense Rows

- Row 0: Kingsguard (special)
- Row 1: Bottom row (max 3 units)
- Row 2: Middle row (max 2 units)
- Row 3: Top row (max 1 unit)
```

## Adding a New Page

1. Create a `.md` file in the appropriate folder
2. Add the page to `mkdocs.yml` under the `nav:` section
3. Restart the server (it will auto-detect the new page)

## Troubleshooting

### Server won't start
- Make sure no other process is using port 8000
- Try closing and re-opening `start-docs.bat`

### Changes not appearing
- Wait a few seconds (file watcher needs time to detect changes)
- Manually refresh your browser (F5 or Ctrl+R)
- Check that you saved the file in your editor

### PowerShell execution error
- This is normal the first time—Windows just needs to allow the script to run
- The batch file handles this automatically

## Questions?

If you have questions about editing, ask in the project discussions or check the existing pages for examples.

Happy documenting! 📖
