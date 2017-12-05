#!/usr/bin/env python3
"""
Shortcuts for moving around in bash, called from .bashrc.
"""
import sys
import os.path

CODE_PATH = 'Dropbox/Code/'

def main():
    base = os.path.expanduser('~/')

    d = {
        'p': CODE_PATH + 'python/',
        'c': CODE_PATH + 'c',
        'd': CODE_PATH + 'django/',
        'cb': CODE_PATH + 'django/commonplace/',
        'h': CODE_PATH + 'haskell/', 
        'j': CODE_PATH + 'javascript/',
        'g': CODE_PATH + 'go/src/github.com/pscohn'
    }

    add = ''
    if len(sys.argv) > 1:
        add = '/'.join(sys.argv[2:])
    else:
        print(base + CODE_PATH)
        return

    if sys.argv[1] in d:
        print(base + d[sys.argv[1]] + add)
    else:
        print(base + CODE_PATH + sys.argv[1])

sys.exit(main())
