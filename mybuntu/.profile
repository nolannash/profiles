# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists.

# Include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

# Set PATH for user's private bin directories
for dir in "$HOME/bin" "$HOME/.local/bin"; do
    [ -d "$dir" ] && PATH="$dir:$PATH"
done
export PATH

# Configure Pyenv
export PYENV_ROOT="$HOME/.pyenv"
if command -v pyenv >/dev/null; then
    eval "$(pyenv init -)"
else
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi
