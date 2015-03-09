#!/bin/bash

gitcheck() {
    DIRS=`find $1 -type d -name '\.git'`
    START=$PWD
    for dir in $DIRS; do
        cd $dir
        cd ..
        d=$PWD
        if [[ `git status -sb --porcelain` ]]; then
            echo "$d: uncommitted changes"        
        fi
        cd $START
    done
}
