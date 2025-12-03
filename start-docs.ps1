# Authority Cardgame - Documentation Server
# Simply double-click this file to start editing the documentation

param(
    [switch]$Force
)

$ErrorActionPreference = "Stop"

# Colors for output
$Green = [System.ConsoleColor]::Green
$Yellow = [System.ConsoleColor]::Yellow
$Red = [System.ConsoleColor]::Red

Write-Host "=" * 60
Write-Host "Authority Cardgame - Documentation Setup" -ForegroundColor $Green
Write-Host "=" * 60

# Check if uv is installed
Write-Host "`n[1/4] Checking for uv..." -ForegroundColor $Yellow
$uvPath = (Get-Command uv -ErrorAction SilentlyContinue).Source
if (-not $uvPath) {
    Write-Host "uv not found. Installing uv..." -ForegroundColor $Yellow
    $ProgressPreference = 'SilentlyContinue'
    Invoke-WebRequest -Uri "https://astral.sh/uv/install.ps1" -OutFile "$env:TEMP\install_uv.ps1"
    & "$env:TEMP\install_uv.ps1"
    Write-Host "uv installed successfully!" -ForegroundColor $Green
} else {
    Write-Host "uv found at: $uvPath" -ForegroundColor $Green
}

# Refresh PATH to ensure uv is available
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# Check if venv exists
Write-Host "`n[2/4] Checking for virtual environment..." -ForegroundColor $Yellow
if (Test-Path .\.venv) {
    Write-Host "Virtual environment found!" -ForegroundColor $Green
} else {
    Write-Host "Creating virtual environment..." -ForegroundColor $Yellow
    uv venv
    Write-Host "Virtual environment created!" -ForegroundColor $Green
}

# Activate venv and install/update dependencies
Write-Host "`n[3/4] Installing dependencies..." -ForegroundColor $Yellow
& .\.venv\Scripts\Activate.ps1

# Install mkdocs and material theme
uv pip install mkdocs mkdocs-material --quiet
Write-Host "Dependencies installed!" -ForegroundColor $Green

# Start mkdocs server
Write-Host ""
Write-Host "[4/4] Starting documentation server..." -ForegroundColor $Green
Write-Host ""
Write-Host "============================================================" -ForegroundColor $Green
Write-Host "  Documentation is now being served!" -ForegroundColor $Green
Write-Host "  Open your browser and go to: http://127.0.0.1:8000" -ForegroundColor $Green
Write-Host "" -ForegroundColor $Green
Write-Host "  Edit markdown files in the authority_docs/ folder" -ForegroundColor $Green
Write-Host "  Changes will appear in your browser automatically" -ForegroundColor $Green
Write-Host "" -ForegroundColor $Green
Write-Host "  Press Ctrl+C to stop the server" -ForegroundColor $Green
Write-Host "============================================================" -ForegroundColor $Green
Write-Host ""

# Serve with poll interval for better Windows support
mkdocs serve -o
