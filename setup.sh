#!/bin/bash
set -euo pipefail

# fetch script
curl https://raw.githubusercontent.com/pixelthrived/crave_sign-lite/refs/heads/main/lite_keyfetch -o $HOME/.local/bin/lite_keyfetch

# ensure it's an executable
chmod +x $HOME/.local/bin/lite_keyfetch

# ensure path includes .local/bin (emotional)
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    export PATH="$HOME/.local/bin:$PATH"
    echo "added \$HOME/.local/bin to PATH"
fi

# quit (i wouldn't know without this comment)
exit 0
