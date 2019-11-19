set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

" something to indent
Plugin 'vim-scripts/indentpython.vim'

" complete utility
Bundle 'Valloric/YouCompleteMe'

" syntax checker
Plugin 'scrooloose/syntastic'

" PEP8 alarm
Plugin 'nvie/vim-flake8'

" File searcher
Plugin 'kien/ctrlp.vim'

" git for vim
Plugin 'tpope/vim-fugitive'

" Folding python indent
Plugin 'tmhedberg/SimpylFold'

" Gundo vim
Plugin 'sjl/gundo.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"


"Usefull movement mappings
"inoremap jk <ESC>
"inoremap <ESC> <nop>
inoremap <M-a> <ESC>A

"Usefull writting mappings
inoremap [] []<ESC>i
inoremap () ()<ESC>i
inoremap {} {}<Esc>i
inoremap $$ $$<Esc>i
inoremap <> <><ESC>i
inoremap "" ""<ESC>i
inoremap '' ''<ESC>i

" escape braces
inoremap <C-a> <Esc>l%%a


""""""""""" python part
let python_highlight_all=1
" this is for folding plugin to work in some cases
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<



""""""""""" UI Config
set tabstop=4       " number of visual spaces per TAB
set expandtab	    " expand tam into spaces
set showcmd
set cursorline
syntax on
set nu
set guifont=Anonymous\ Pro\ 14

if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif

filetype indent on " load filetype specific indent files
set wildmenu
set lazyredraw      " redraw only when needed
set showmatch       "highlight [(<>)]


" Searching
set hlsearch


" Folding
set foldenable " enable folding
set foldlevelstart=10 "open most folds by default
set foldnestmax=10
noremap <SPACE> za
set foldmethod=indent

nnoremap gV `[v`] " visually selects the block of characters last inserted


" leader shortcuts
let mapleader="," " leader is comma
nnoremap <leader>u :GundoToggle<CR>
