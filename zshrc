#
# Basic config.
#

HISTFILE=~/.zhistfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -e

#
# asdf-vm.
#

export ASDF_DIR="$HOME/.local/asdf"
export ASDF_DATA_DIR="$HOME/.local/asdf"
. "$ASDF_DIR/asdf.sh"

#
# Completion.
#

zstyle :compinstall filename '/home/aicantar/.zshrc'
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit
compinit

#
# Keybindings.
#

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

#
# Prompt.
#

export PROMPT="%B%F{12}%n%f%b %B%F{10}%~%f%b%B > %b"

#
# External configs.
#

if [[ -d ~/.zshrc.d ]]; then
    for file in ~/.zshrc.d/*; do
        [[ -x $file ]] && . $file
    done
fi

