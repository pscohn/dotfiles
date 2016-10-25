echo "Welcome, Paul"
source ~/.bash_aliases
source ~/.bash_variables

# export PS1='do what? --> '
# default PS1='\h:\W \u$ '
export PS1='paul:\W $ '
export EDITOR="/usr/bin/vim"
export PSQL_EDITOR="/usr/bin/vim"

GOPATH="$HOME/code/go"
export GOPATH

export GOROOT="/usr/local/go"

PATH="/usr/local/bin:/opt/local/sbin:/Users/paulcohn/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/mysql/bin:/usr/local/go/bin:${PATH}:$GOPATH/bin"
export PATH

_codeComplete() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls -C --ignore=\. --ignore=\.\. ~/code/)" -- $cur) )
}

function code(){
cd $(python3 "$HOME"/code/dotfiles/code.py "$@")
} 
complete -F _codeComplete code

export NVM_DIR="/Users/paulcohn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
