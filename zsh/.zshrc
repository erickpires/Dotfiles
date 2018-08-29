# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt appendhistory
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/erick/.zshrc'

fpath+=~/.zfunc

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt HIST_IGNORE_DUPS

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# USER MODIFICATIONS

# export TERM="xterm-256color"

# NOTE(erick): Hack to avoid Emacs Tramp from hanging when using zsh.
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return


source $HOME/.bashrc

export EDITOR="emacs -nw"
export VISUAL="code"
export TERMINAL="termite"
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
export GCC_COLORS='error=01;31:warning=01;33:note=01;36:caret=01;31:locus=01:quote=01;32'

#
# Android MTP stuff
#
alias android-connect="mkdir -p /tmp/`mtp-device-name` &&
    jmtpfs /tmp/`mtp-device-name` > /dev/null 2> /dev/null &&
    echo Mounted: `mtp-device-name`"
alias android-disconnect="fusermount -u /tmp/`mtp-device-name`"

# NOTE(erick): Unfortunately (or fortunately)I don't use sublime anymore.
# 'code' is now a script in .local/bin and it runs emacs.
# alias code=subl3

alias update='sudo pacman -Suy'
alias remove='sudo pacman -R'
alias pacinfo='pacman -Qi'
alias exterminate='pkill -9'
alias access-point="sudo create_ap wlp8s0 enp7s0"
alias mono-sound="pacmd load-module module-remap-sink sink_name=mono
master=alsa_output.pci-0000_00_1b.0.analog-stereo channels=2
channel_map=mono,mono"
alias subtitle='subdl --lang=pob --download=best-rating --username erick-pires --password erick123456'
alias journal-vacuum='sudo journalctl --vacuum-time=2d'
alias magit='emacsclient -nw -e \(magit-status\)'

eval $(thefuck --alias)

# alias novo-aluno='ssh operador@petropolis.dcc.ufrj.br -p 22022 novoAluno'

alias poweroff="echo My watch is ended && sleep 2 && poweroff"
cowquotes

#
# Powerline
#
source ~/.powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=" "
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="↳ "
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE='awesome-fontconfig'

set -g mode-keys emacs
set -g status-keys emacs

bindkey '^[[3;5~' kill-word
bindkey '^H' backward-kill-word
bindkey -s '^Xk' 'exit\n'


#
# Termite
#
if [[ $TERM == xterm-termite ]]; then
  source /etc/profile.d/vte.sh
  __vte_osc7
fi

export MINERVA_ID="13964035742"
export MINERVA_PASS="13964035742"
export MINERVA_BOTO_API="668233805:AAFybMOCqzXnQM7UOqTzk4d6EPGSB5YH9F4"
