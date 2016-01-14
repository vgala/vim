


call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
" Make sure you use single quotes
Plug 'vhda/verilog_systemverilog.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tmhedberg/matchit'
Plug 'Valloric/YouCompleteMe'
Plug 'majutsushi/tagbar'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'junegunn/fzf'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
call plug#end()
syntax enable
set background=light
"colorscheme solarized
if has('gui_running')
    set background=dark
else
    set background=dark
endif
colorscheme solarized

filetype plugin on
set omnifunc=syntaxcomplete#Complete
let g:solarized_underlilne=0
set tags+=~/.vim/tags/UVM 
" Personal configs
set hlsearch
set expandtab
set shiftwidth=2
set softtabstop=2
"augroup Systemverilog
"    autocmd!
"    autocmd FileType systemverilog setlocal omnifunc=syntaxcomplete#Complete
"augroup END
set backspace=2
set dir=~/.vim/swap/
" Syntax folding
let g:verilog_syntax_fold = "function,task"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger = "<C-l>"
