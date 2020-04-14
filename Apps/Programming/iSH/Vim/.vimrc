"禁用 vi 兼容模式
set nocompatible

"文件
set noswapfile
set undofile
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
set ffs=unix,dos,mac
set formatoptions+=m
set formatoptions+=B
filetype on
filetype plugin on
filetype indent on
set autoread
set history=1024

"缩进:Tab 与空格
set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"只用空格，不使用Tab
set expandtab

"syntax
syntax on

"界面
set ruler
set laststatus=2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set showcmd
set signcolumn=yes
set showtabline=2
set scrolloff=7
set number
augroup relative_numbers
        autocmd!
        autocmd InsertEnter * :set norelativenumber
        autocmd InsertLeave * :set relativenumber
augroup END
set cursorcolumn
set cursorline
set colorcolumn=80
set list
set showmatch
set matchtime=2

set foldenable
set foldmethod=indent
set foldlevel=99

"mouse
set mouse=a
set mousehide

"搜索
set hlsearch
set incsearch
set ignorecase
set smartcase

"keymap
map <space> /
"iPadOS 不需要设置 ; 替换 :
"nnoremap ; :
noremap H ^
noremap L $
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap U <C-r>

set suffixes+=.info,.aux,.log,.dvi,.bbl,.out,.o,.lo

set nomodeline
autocmd BufRead APKBUILD set filetype=sh

"Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar



"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"插件管理器 dein

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

"插件管理器 vim-plug

call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'plasticboy/vim-markdown'
Plug 'jceb/vim-orgmode'
Plug 'honza/vim-snippets'

call plug#end()

