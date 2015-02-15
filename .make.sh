#!/bin/bash
####################
# .make.sh
# Creates symlinks from home directory to dotfiles in ~/dotfiles
####################

######## Variables

dir=~/Code/dotfiles
olddir=~/dotfiles_old		# old dotfiles backup
files="vimrc gitconfig gitignore_global bash_aliases bash_profile inputrc mongorc.js tmux.conf vim"

########

#create dotfiles_old
echo "Creating $olddirfor backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to dotfiles dir
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old, create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file $olddir
	echo "Creating symlink to $file in home directory."
	ln -s $dir/.$file ~/.$file
done
