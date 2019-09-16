" Plug
call plug#begin()
" common settings
Plug 'tpope/vim-sensible'

" Python
Plug 'vim-scripts/indentpython.vim'
" syntastic
Plug 'nvie/vim-flake8'
Plug 'vim-syntastic/syntastic'

" Color
Plug 'tomasr/molokai'

" powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" File
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" Tag
Plug 'majutsushi/tagbar'

call plug#end()

" common
set encoding=utf-8
set nu
let mapleader=","

" airline
let g:airline#extensions#tabline#enabled = 1

" python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set fileformat=unix
" make code look pretty
let python_highlight_all=1
syntax on

" WEB
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Color
colorscheme molokai
highlight BadWhitespace ctermbg=red guibg=red
" Flagging Unnecessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.cc,*.h match BadWhitespace /\s\+$/
