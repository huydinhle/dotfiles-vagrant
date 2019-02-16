let mapleader = ','
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'marijnh/tern_for_vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
" Plugin 'scrooloose/syntastic'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'fatih/molokai'
Plugin 'Sirver/ultisnips'
Plugin 'fatih/vim-hclfmt'
Plugin 'Yggdroot/indentLine'
call vundle#end()
filetype plugin indent on
syntax enable
set number
filetype plugin on
set shell=bash\ -i
imap <C-c> <CR><Esc>O
set completeopt-=preview
map <Leader> <Plug> (easymotion-prefix)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0
let g:NERDTreeMapHelp = '<F1>'
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
execute pathogen#infect()
imap <C-G> <Plug>snipMateNextOrTrigger
smap <C-G> <Plug>snipMateNextOrTrigger
map <Leader>c <c-_><c-_>
silent! nmap <C-z> :NERDTreeToggle<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim
set clipboard=unnamedplus
let vascript_enable_domhtmlcss=1
:set regexpengine=1
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>

" use space instead of tab
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2

syntax on
set t_Co=256
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
"colorscheme molokai
set hidden
set autowrite
set splitright
set splitbelow
