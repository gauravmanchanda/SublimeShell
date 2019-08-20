set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.nvim/bundle/Vundle.vim
" call vundle#begin("~/.nvim/bundle")
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

call plug#begin('~/.nvim/plugged')
" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'davidhalter/jedi-vim'
" Plug 'etdev/vim-hexcolor.git'
Plug 'tpope/vim-commentary'
" Plugin 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'ElmCast/elm-vim'
Plug 'scrooloose/nerdtree'
" Plugin 'autozimu/LanguageClient-neovim'
Plug 'Shougo/deoplete.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'rhysd/vim-crystal'
Plug 'dracula/vim'
Plug 'airblade/vim-gitgutter'
" Plugin 'itchyny/lightline.vim'
" Plugin 'w0rp/ale'
Plug 'itchyny/vim-gitbranch'
Plug 'Raimondi/delimitMate'
Plug 'jdsimcoe/abstract.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'slim-template/vim-slim.git'
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'ludovicchabant/vim-gutentags'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
" call vundle#end()            " required
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
syntax on
set nu
set shiftwidth=0
set tabstop=2
set expandtab

map <C-,> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
map <C-f> :Rg<CR>
map [d :bn <bar> bd# <CR>
noremap <Space> :Autoformat<CR>
set clipboard+=unnamedplus
let g:deoplete#enable_at_startup = 1
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let NERDTreeShowHidden=1
" let g:autoformat_verbosemode=1

" Required for operations modifying multiple buffers like rename.
set hidden

nnoremap <leader>tf :NERDTreeFind<cr>
nnoremap <leader>gd :call CocAction('jumpDefinition')<cr>
nnoremap <leader>x :!%:p<cr>

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

set guifont=Consolas:h13

colorscheme OceanicNext
