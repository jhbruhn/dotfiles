set nocompatible              " be iMproved, required
set laststatus=2
filetype off                  " required
set noshowmode
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'Chiel92/vim-autoformat'
Plugin 'itchyny/lightline.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'embear/vim-localvimrc'
"Plugin 'Conque-GDB'
call vundle#end()            " required

map <C-a> :Autoformat<CR>

syntax enable
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
"

let g:localvimrc_sandbox=0
let g:localvimrc_whitelist='/home/jhbruhn/eurorack/eurorack-dev-environment/eurorack-modules/'

let g:ycm_clangd_args = ['-query-driver=/usr/local/arm-*/bin/arm-none-eabi*,/usr/bin/avr-*']

