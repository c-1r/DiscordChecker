@echo off
cd /d "%~dp0"
.venv\Scripts\python checker.py %*
pause
