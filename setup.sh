#!/bin/bash
set -euo pipefail

# fetch script
curl https://raw.githubusercontent.com/pixelthrived/crave_sign-lite/refs/heads/main/lite_keyfetch -o $HOME/.local/bin/lite_keyfetch

# ensure it's an executable
chmod +x $HOME/.local/bin/lite_keyfetch

# quit (i wouldn't know without this comment)
exit 0
