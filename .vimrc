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
"""autocompletion
"Plugin 'Valloric/YouCompleteMe' " autocompletion etc.
"Plugin 'scrooloose/syntastic' " syntax checking
Plugin 'ajh17/VimCompletesMe' "autocompletion
Plugin 'prabirshrestha/async.vim' " language server protocoll
"Plugin 'prabirshrestha/vim-lsp' " language server protocoll

""" Status Line
Plugin 'bling/vim-airline' "status line

""" Color Scheme
Plugin 'morhetz/gruvbox' "colorscheme
Plugin 'sjl/badwolf' "colorscheme
Plugin 'altercation/Vim-colors-solarized' "colorscheme

""" Misc
Plugin 'Yggdroot/indentLine' "indent markers
Plugin 'junegunn/fzf.vim' "fuzzy file search

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
"
" do not confirm ycm_config loading
let g:ycm_confirm_extra_conf = 0
"
"disable beep completely
set noerrorbells
set visualbell
set t_vb=
"
"show airline all the time
set laststatus=2
"
"color {{{
colorscheme badwolf
colorscheme solarized
colorscheme gruvbox
set background=dark
syntax on
"Transparency
hi Normal ctermbg=none
highlight NonText ctermbg=none
" }}}
"
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set softtabstop=4       " 4 space tab
set shiftwidth=2
set expandtab           " use spaces for tabs
set modelines=1 "modeline for file specific options
filetype indent on
filetype plugin on
set autoindent
" }}}
"
" UI Layout {{{
set number              " show line numbers
set relativenumber      " show relative (to the current line) line numbers
set showcmd             " show command in bottom bar
set nocursorline          " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set laststatus=2        " shows airline instead of default-statusline all the time
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

" Syntastic {{{
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" " }}}
if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif


" Disable ctrl c mapping for sql files
let g:ftplugin_sql_omni_key = '<C-j>'
