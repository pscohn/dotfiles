source ~/.bash_profile
source ~/.bash_aliases
cd ~

function code(){
cd $(python3 /usr/bin/code "$1")
}
