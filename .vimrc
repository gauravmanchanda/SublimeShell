set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'davidhalter/jedi-vim'
Bundle 'https://github.com/etdev/vim-hexcolor.git'
Bundle 'tpope/vim-commentary'
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'fatih/vim-go'
Plugin 'ElmCast/elm-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'uplus/deoplete-solargraph'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'rhysd/vim-crystal'
Plugin 'dracula/vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'itchyny/lightline.vim'
Plugin 'w0rp/ale'
Plugin 'itchyny/vim-gitbranch'
Plugin 'Raimondi/delimitMate'
Plugin 'jdsimcoe/abstract.vim'
Plugin 'cseelus/vim-colors-lucid'
Plugin 'AlessandroYorba/Sierra'
Plugin 'rakr/vim-two-firewatch'
Plugin 'sts10/vim-pink-moon'
Plugin 'arcticicestudio/nord-vim'
Plugin 'mhartington/oceanic-next'
Bundle 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'slim-template/vim-slim.git'
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
let g:ale_ruby_rubocop_executable = 'bundle'

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

set guifont=Consolas:h13

colorscheme OceanicNext

let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'gitbranch_path'), ':h:h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
