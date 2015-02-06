cd ~
export PATH="/usr/local/mysql/bin:$PATH"

echo "Welcome, Paul"
source ~/.bash_aliases

# export PS1='do what? --> '
# default PS1='\h:\W \u$ '
export PS1='paul:\W $ '

PATH="/usr/local/bin:/opt/local/sbin:/Users/paulcohn/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

function code(){
cd $(python3 /Users/paulcohn/dotfiles/code.py "$@")
} 
