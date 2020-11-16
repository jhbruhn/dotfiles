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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'embear/vim-localvimrc'
Plugin 'iCyMind/NeoSolarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'arcticicestudio/nord-vim'

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

let g:ycm_clangd_args = ['-query-driver=/usr/bin/avr-*,/usr/bin/arm-none-eabi*']
set termguicolors
" colorscheme NeoSolarized
colorscheme nord
set background=dark
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'
set t_Co=256

" Use filetype detection and file-based automatic indenting.
filetype plugin indent on

" Use actual tab chars in Makefiles.

" For everything else, use a tab width of 4 space chars.
set tabstop=4       " The width of a TAB is set to 4.
" Still it is a \t. It is just that
" Vim will interpret it to be having
" a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.

autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
autocmd BufNewFile,BufRead makefile* set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

"nnoremap j jzz
"nnoremap k kzz
"nnoremap <Down> jzz
"nnoremap <Up> kzz

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
:set mouse=a
