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

# function to look for uncommited git changes
gitcheck() {
    DIRS=`find $1 -type d -name '\.git'`
    START=$PWD
    for dir in $DIRS; do
        cd $dir
        cd ..
        d=$PWD
        if [[ `git status --porcelain` ]]; then
            echo "uncommitted changes:  $d"        
        fi
        if [[ `git remote` ]]; then
            if [[ `git log origin/master..HEAD` ]]; then
                echo "unpushed changes:     $d"
            fi
        else
            echo "no remote repository: $d"
        fi
        cd $START
    done
}
alias gitcheck=gitcheck
