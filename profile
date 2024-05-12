#
# Load .bashrc if running bash.
#

if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

#
# Load .zshrc if running zsh.
#

if [ -n "$ZSH_VERSION" ]; then
    if [ -f "$HOME/.zshrc" ]; then
        . "$HOME/.zshrc"
    fi
fi

#
# Add ~/.local/bin to PATH.
#

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

