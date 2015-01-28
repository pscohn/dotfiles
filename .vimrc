execute pathogen#infect()

set number
set t_co=256
set term=screen-256color
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
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


set tabstop=4
set softtabstop=4
set shiftwidth=4
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

autocmd bufnewfile *.py 0r /Users/paulcohn/dotfiles/default.py
