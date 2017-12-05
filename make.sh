#!/bin/bash
####################
# .make.sh
# Creates symlinks from home directory to dotfiles in ~/dotfiles
####################

######## Variables

dir=~/dotfiles
olddir=~/dotfiles_old		# old dotfiles backup
files="vimrc gitconfig gitignore_global bashrc bash_aliases bash_profile inputrc mongorc.js bash_variables tmux.conf vim uncrustify"

########

#create dotfiles_old
echo "Creating $olddirfor backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to dotfiles dir
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# upgrade vim plugins
echo "Updating vim plugins"
git submodule init && git submodule update
echo "...done"
cd $dir

# move any existing dotfiles in homedir to dotfiles_old, create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file $olddir
	echo "Creating symlink to $file in home directory."
	ln -s $dir/.$file ~/.$file
done
