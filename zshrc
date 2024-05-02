#
# Basic config.
#

HISTFILE=~/.zhistfile
HISTSIZE=250000
SAVEHIST=250000
unsetopt beep
bindkey -e

#
# Completion.
#

zstyle :compinstall filename '/home/aicantar/.zshrc'
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
# Aliases.
#

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

#
# External configs.
#

if [[ -d ~/.zshrc.d ]]; then
    for file in ~/.zshrc.d/*; do
        [[ -x $file ]] && . $file
    done
fi
