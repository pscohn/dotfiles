#!/usr/bin/env python3
"""
Shortcuts for moving around in bash, called from .bashrc.
"""
import sys
import os.path

def main():
    base = os.path.expanduser('~/')

    d = {
        'p': 'code/python/',
        'c': 'code/c',
        'd': 'code/django/',
        'cb': 'code/django/commonplace/',
        'h': 'code/haskell/', 
        'j': 'code/javascript/',
        'g': 'code/go/src/github.com/pscohn'
    }

    add = ''
    if len(sys.argv) > 1:
        add = '/'.join(sys.argv[2:])
    else:
        print(base + 'code/')
        return

    if sys.argv[1] in d:
        print(base + d[sys.argv[1]] + add)
    else:
        print(base + 'code/' + sys.argv[1])

sys.exit(main())
