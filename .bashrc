cd ~

echo "Welcome, Paul"
source ~/.bash_aliases

# export PS1='do what? --> '
# default PS1='\h:\W \u$ '
export PS1='paul:\W $ '

GOPATH="$HOME/Code/go"
export GOPATH

PATH="/usr/local/bin:/opt/local/sbin:/Users/paulcohn/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/mysql/bin:${PATH}:$GOPATH/bin"
export PATH

function code(){
cd $(python3 /Users/paulcohn/Code/dotfiles/code.py "$@")
} 
