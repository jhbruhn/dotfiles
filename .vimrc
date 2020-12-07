set nocompatible              " be iMproved, required
set laststatus=2
filetype off                  " required
set noshowmode
set nu

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plug 'VundleVim/Vundle.vim'
" Plin 'valloric/youcompleteme'
" Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'embear/vim-localvimrc'
Plug 'iCyMind/NeoSolarized'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'

" completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'lionawurscht/deoplete-biblatex'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf'
Plug 'Shougo/echodoc.vim'

"Plugin 'Conque-GDB'
call plug#end()            " required

map <C-a> :call LanguageClient#textDocument_formatting()<CR>
" :Autoformat<CR>

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

" deoplete
let g:deoplete#enable_at_startup = 1

"langserver
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ 'cpp': ['clangd', '-query-driver=/usr/bin/avr-*,/usr/bin/arm-none-eabi*', '-fallback-style=google'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ }

set cmdheight=2
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

let g:localvimrc_sandbox=0
let g:localvimrc_whitelist='/home/jhbruhn/eurorack/eurorack-dev-environment/eurorack-modules/'

let g:ycm_clangd_args = ['-query-driver=/usr/bin/avr-*,/usr/bin/arm-none-eabi*']
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

let g:ycm_auto_hover='CursorHold'

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
set signcolumn=yes

