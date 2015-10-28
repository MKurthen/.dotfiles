"""s_" Vundle stuff, copied from https://github.com/vundlevim/vundle.vim#about
set nocompatible " be iMproved, required
filetype off  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vundle_managed_vim_plugins')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'sjl/badwolf'

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
" Put your non-Plugin stuff after this line"pathogen (see https://github.com/tpope/vim-pathogen )
"execute pathogen#infect()
"
" 
" 
" misc
"source working tree .vimrc, but secure c
set exrc
set secure
" do not confit ycm_config loading
let g:ycm_confirm_extra_conf = 0
"disable beep completely
set noerrorbells
set visualbell
set t_vb=

"color {{{
colorscheme badwolf
syntax on
"Transparency
hi Normal ctermbg=none
highlight NonText ctermbg=none
" }}}
"
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1 "modeline for file specific options
filetype indent on
filetype plugin on
set autoindent
" }}}
"
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline          " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
" }}}
"
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
"
" Leader Shortcuts {{{
let mapleader=","
" disable highlighting 
nnoremap <leader><space> :noh<CR>
vnoremap <leader>y "+y
" }}}

