set nocompatible

call plug#begin('~/.nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'elixir-editors/vim-elixir'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plug 'etdev/vim-hexcolor.git'
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go'
Plug 'ElmCast/elm-vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'rhysd/vim-crystal'
Plug 'dracula/vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'itchyny/vim-gitbranch'
Plug 'Raimondi/delimitMate'
Plug 'jdsimcoe/abstract.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'slim-template/vim-slim.git'
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'keith/swift.vim'
Plug 'udalov/kotlin-vim'
Plug 'jonmorehouse/vim-flow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'chrisbra/Colorizer'
Plug 'janko/vim-test'
Plug 'kassio/neoterm'
Plug 'tpope/vim-rails'
Plug 'zah/nim.vim'
Plug 'KurtPreston/vim-autoformat-rails'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'leafgarland/typescript-vim'
Plug 'jvirtanen/vim-hcl'
Plug 'fatih/vim-hclfmt'
" Plug 'ludovicchabant/vim-gutentags'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

syntax on
set nu
set shiftwidth=0
set tabstop=2
set linespace=2
set expandtab

fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

" Jump to tag
nn <M-g> :call JumpToDef()<cr>
ino <M-g> <esc>:call JumpToDef()<cr>i

map <C-,> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
map <C-f> :Rg<CR>
" Close the current buffer
map [d :bn <bar> bd# <CR>
noremap <leader>f :Autoformat<CR>
set clipboard+=unnamedplus
" let g:deoplete#enable_at_startup = 1
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let NERDTreeShowHidden=1
let dart_style_guide = 2
let g:crystal_auto_format=1
" let g:autoformat_verbosemode=1
let g:python3_host_prog="/usr/bin/python"

" Required for operations modifying multiple buffers like rename.
set hidden
nnoremap <silent> c<Tab> :let @/=expand('<cword>')<cr>cgn
nnoremap <leader>tf :NERDTreeFind<cr>
nnoremap <leader>gd :call CocAction('jumpDefinition')<cr>
" Execute the current file
nnoremap <leader>x :!sh %:p<cr>
" Replace word under the cursor with the one specified
:nnoremap <Leader>r :%s/\<<C-r><C-w>\>/
" Persistent undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000
set foldlevelstart=99
set foldmethod=syntax

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty="⚡"

set guifont=Consolas\ NF:h13:style=Book

colorscheme OceanicNext
