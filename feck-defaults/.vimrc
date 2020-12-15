" The following are all vundle related
set nocompatible              " be iMproved, required
filetype off                  " required

set laststatus=2

" Force on syntax highlighting
syntax on

" Typically PuTTY will be used with a dark background
set background=dark

" 256 colour mode
set t_Co=256

" Line number bar, highlight results, incremental results
set number hlsearch incsearch
" possibly useful
"set ignorecase noswapfile

" Ensure 4 spaces rather than 8
set tabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

" Don't wrap lines
set nowrap

" Enable mouse control
"set mouse=a

" Map F11 and F12 as previous tab and next tab
map <F11> :tabp <CR>
map <F12> :tabn <CR>

colo ron
set guifont=Cousine\ 8

" Open twig as Django
autocmd BufNewFile,BufRead *.twig set syntax=django

" Map Ctrl-V to paste

" netrw like nerdtree (somewhat)
let g:netrw_banner = 0
let g:netrw_liststyle = 3
