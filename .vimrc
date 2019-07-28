set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'posva/vim-vue'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox
set background=dark

" Nerdtree config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" auto-close when Nerdtree the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'

" nerdcommenter
filetype plugin on
