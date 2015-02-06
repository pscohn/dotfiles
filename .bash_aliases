alias python='python3'
alias h='cd ~/'
alias chrome="open -a 'Google Chrome'"
alias tmux="TERM=screen-256color-bce tmux"
alias vim='vim -p'

if [[ $OSTYPE == 'darwin14' ]]; then
    alias ls='ls -laG'
elif [[ $OSTYPE == 'linux-gnu' ]]; then
    alias ls='ls -la --color=auto'
fi
