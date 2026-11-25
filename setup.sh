#!/bin/bash
cd "$(dirname "$0")"
echo "DiscordChecker v3.1 — Setup"
echo "=========================="
echo ""

# Check Python
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python 3 not found. Install from https://python.org/downloads"
    exit 1
fi
echo "✓ Python found: $(python3 --version)"

# Create venv
if [ ! -d ".venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv .venv
fi
echo "✓ Virtual environment ready"

# Activate and install
source .venv/bin/activate
echo "Installing dependencies..."
pip install aiohttp rich
echo ""
echo "✓ Setup complete!"
echo ""
echo "Starting DiscordChecker..."
python checker.py "$@"
