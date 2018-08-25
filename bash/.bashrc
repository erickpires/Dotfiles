# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls --color=always'
alias subl=subl3

export SSLKEYLOGFILE=~/.sslkeys/sslkeylog.log
