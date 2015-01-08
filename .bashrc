source ~/.bash_profile
source ~/.bash_aliases
cd ~

function code(){
cd $(python3 /Users/paulcohn/dotfiles/code.py "$1")
}
