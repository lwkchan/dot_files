call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'sbdchd/neoformat'
call plug#end()

let g:vim_markdown_folding_disabled = 1
let g:neoformat_enabled_javascript = ['prettier']

" Open NerdTree sidebar
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Execute Neoformat on write
autocmd InsertLeave *.js Neoformat

" Make jk work as escape
:inoremap jk <esc>

" Turn off escape to learn the new pattern
:inoremap <esc> <nop>
