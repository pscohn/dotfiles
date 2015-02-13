#!/usr/bin/env python3
"""
Shortcuts for moving around in bash, called from .bashrc.
"""
import sys
import os.path

def main():
    base = os.path.expanduser('~/')

    d = {
        'p': 'Code/python/',
        'c': 'Code/c',
        'd': 'Code/django/',
        'cb': 'Code/django/commonplace/',
        'h': 'Code/haskell/', 
        'j': 'Code/javascript/',
        'g': 'Code/go/src/github.com/pscohn'
    }

    add = ''
    if len(sys.argv) > 1:
        add = '/'.join(sys.argv[2:])
    else:
        print(base + 'Code/')
        return

    if sys.argv[1] in d:
        print(base + d[sys.argv[1]] + add)
    else:
        print(base + 'Code/' + sys.argv[1])

sys.exit(main())
