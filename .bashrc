cd ~

echo "Welcome, Paul"
source ~/.bash_aliases

# export PS1='do what? --> '
# default PS1='\h:\W \u$ '
export PS1='paul:\W $ '

GOPATH="$HOME/code/go"
export GOPATH

export GOROOT="/usr/local/go"

PATH="/usr/local/bin:/opt/local/sbin:/Users/paulcohn/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/mysql/bin:/usr/local/go/bin:${PATH}:$GOPATH/bin"
export PATH

function code(){
cd $(python3 "$HOME"/code/dotfiles/code.py "$@")
} 
