


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
Plug 'vimtaku/hl_matchit.vim'
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
" Personal configs
set autochdir
set hlsearch
set expandtab
set shiftwidth=2
set softtabstop=2
augroup Systemverilog
    autocmd!
    autocmd FileType systemverilog setlocal omnifunc=syntaxcomplete#Complete
augroup END
set backspace=2
set dir=~/.vim/swap/
" Syntax folding
let g:verilog_syntax_fold = "function,task"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger = "<C-e>"
set tags+=~/.vim/tags/UVM,./tags; 



let g:tagbar_type_verilog_systemverilog = {
        \ 'ctagstype'   : 'SystemVerilog',
        \ 'kinds'       : [
            \ 'b:blocks:1:1',
            \ 'c:constants:1:0',
            \ 'e:events:1:0',
            \ 'f:functions:1:1',
            \ 'm:modules:0:1',
            \ 'n:nets:1:0',
            \ 'p:ports:1:0',
            \ 'r:registers:1:0',
            \ 't:tasks:1:1',
            \ 'A:assertions:1:1',
            \ 'C:classes:0:1',
            \ 'V:covergroups:0:1',
            \ 'I:interfaces:0:1',
            \ 'M:modport:0:1',
            \ 'K:packages:0:1',
            \ 'P:programs:0:1',
            \ 'R:properties:0:1',
            \ 'T:typedefs:0:1'
        \ ],
        \ 'sro'         : '.',
        \ 'kind2scope'  : {
            \ 'm' : 'module',
            \ 'b' : 'block',
            \ 't' : 'task',
            \ 'f' : 'function',
            \ 'C' : 'class',
            \ 'V' : 'covergroup',
            \ 'I' : 'interface',
            \ 'K' : 'package',
            \ 'P' : 'program',
            \ 'R' : 'property'
        \ },
    \ }
