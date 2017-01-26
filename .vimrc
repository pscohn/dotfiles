set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vimwiki/vimwiki'
" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required

set runtimepath-=~/.vim/bundle/auto-pairs " Temporarily disable pairs

set number
set t_co=256
set term=screen-256color
syntax enable
let g:solarized_termcolors=256
set background=light
colorscheme slate
hi Search ctermbg=1
set guifont=Monaco:h14
set laststatus=2
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

map <C-n> :NERDTreeToggle<CR>
vmap <C-c> :w !pbcopy<CR><CR> 

let mapleader=","
 
function! ConvertTabs()
  " convert spaces to tabs first
  set noexpandtab
  set tabstop=4
  set shiftwidth=4
  retab!
  " " now you have tabs instead of spaces, so insert spaces according to
  " " your new preference
  set tabstop=2
  set shiftwidth=2
  set expandtab
  retab!
endfunction

set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

nnoremap j gj
nnoremap k gk

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

set notimeout
set ttimeout
set timeoutlen=100

autocmd bufnewfile *.py 0r /home/paul/code/dotfiles/default.py

autocmd bufnewfile,bufread Makefile set noexpandtab

" Syntastic configuration
let g:syntastic_javascript_checkers = ['eslint']

" for vimwiki
filetype plugin on
syntax on
" let g:vimwiki_folding='expr'
let g:vimwiki_list = [
                        \{'path': '~/Google Drive/vimwiki/personal.wiki'},
                \]
au BufRead,BufNewFile *.wiki set filetype=vimwiki
