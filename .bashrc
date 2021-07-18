echo "Welcome, Paul"
source ~/.bash_aliases

# export PS1='do what? --> '
# default PS1='\h:\W \u$ '
export PS1='paul:\W $ '
export EDITOR="/usr/bin/vim"
export PSQL_EDITOR="/usr/bin/vim"
export HISTCONTROL=ignoreboth:erasedups # ignore duplicate entries in history

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

#GOPATH="$HOME/code/go"
#GOPATH="$HOME/Google Drive/Code/gostuff"
#export GOPATH

#export GOROOT="/usr/local/go"

PATH=$PATH:/usr/local/bin:/opt/local/sbin:/Users/paulcohn/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/mysql/bin:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin/
export PATH


# for git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
else
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash && . ~/.git-completion.bash
fi


_codeComplete() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls -C --ignore=\. --ignore=\.\. ~/code/)" -- $cur) )
}

function code(){
cd $(python3 "$HOME"/dotfiles/code.py "$@")
}
complete -F _codeComplete code

export NVM_DIR="/Users/paulcohn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
