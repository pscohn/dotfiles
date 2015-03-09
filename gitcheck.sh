#!/bin/bash

gitcheck() {
    DIRS=`find $1 -type d -name '\.git'`
    START=$PWD
    for dir in $DIRS; do
        cd $dir
        cd ..
        d=$PWD
        if [[ `git status --porcelain` ]]; then
            echo "uncommitted changes in $d"        
        fi
        cd $START
    done
}
