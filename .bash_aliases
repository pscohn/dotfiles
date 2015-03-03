alias python='python3.4'
alias h='cd ~/'
alias chrome="open -a 'Google Chrome'"
alias tmux="TERM=screen-256color-bce tmux"
alias vim='vim -p'
alias com="cat ~/code/dotfiles/commands.txt"

if [[ $OSTYPE == 'darwin14' ]]; then
    alias ls='ls -laG'
    alias ll='ls -aCG'
elif [[ $OSTYPE == 'linux-gnu' ]]; then
    alias ls='ls -la --color=auto'
    alias ll='ls -aC --color=auto'
fi

_parallelComplete() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls -C --ignore=\. --ignore=\.\. ../)" -- $cur) )
}

parallel() {
    cd ../"$1"
}
alias pd=parallel
complete -F _parallelComplete pd

makeCD() {
    mkdir "$1" && cd "$1"
}
alias md=makeCD
