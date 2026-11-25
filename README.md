# DiscordChecker

A fast Discord username availability checker, written in Python.

Give it a list of usernames. It checks which ones are free and saves them to `results/hits.txt`. It can also ping a Discord webhook when it finds one.

## What does it do? (the simple version)

Imagine you want the Discord name `cool`. Maybe somebody already has it. Checking by hand is slow.
DiscordChecker asks Discord for you, thousands of names at once, and writes down only the ones nobody has taken yet.

## Features

- Async engine, so it can run many checks at the same time
- Works with proxies (your own list, pasted, or scraped), or with no proxy
- Rotating-proxy support with a circuit breaker
- Can generate usernames for you (2 to 5 characters)
- Discord webhook notification for every available name
- Live terminal dashboard

## Install and run

You need [Python 3.10+](https://python.org/downloads) (on Windows, tick "Add Python to PATH").

**Windows:** double-click `setup.bat`
**Mac / Linux:** `./setup.sh`

The setup script creates a virtual environment, installs what is needed and starts the program.
Next time, just use `run.bat` (Windows) or `./run.sh` (Mac / Linux).

Or do it by hand:

```
pip install -r requirements.txt
python checker.py
```

## Usage

```
python checker.py            # guided setup wizard
python checker.py -n         # skip the wizard, reuse your last settings
python checker.py -d         # debug output
python checker.py --version
```

The wizard asks four things: proxies, usernames, speed, webhook. Press Enter to accept the default.

| Folder / file | What it is |
|---|---|
| `data/` | Your saved settings, proxy list and username list (created automatically) |
| `results/hits.txt` | Available usernames found |
| `logs/error.txt` | Errors from the last run |

## Notes

- Your webhook URL is stored in `data/config.json`. Never share or commit that file (the `.gitignore` already blocks it).
- Free proxies are slow and unreliable. A paid rotating proxy works best.
- Use it responsibly and respect Discord's Terms of Service. You are responsible for how you use this tool.

## License

MIT, see [LICENSE](LICENSE).

Made by **Aziz** ([@c-1r](https://github.com/c-1r))
