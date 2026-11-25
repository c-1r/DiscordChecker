@echo off
title DiscordChecker v3.1 — Setup
cd /d "%~dp0"
echo DiscordChecker v3.1 — Setup
echo ==========================
echo.

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python not found. Install from https://python.org/downloads
    echo Make sure to check "Add Python to PATH" during installation.
    pause
    exit /b 1
)
echo [OK] Python found

if not exist ".venv" (
    echo Creating virtual environment...
    python -m venv .venv
)
echo [OK] Virtual environment ready

echo Installing dependencies...
call .venv\Scripts\activate
pip install aiohttp rich
echo.
echo [OK] Setup complete!
echo.
echo Starting DiscordChecker...
python checker.py %*
pause
