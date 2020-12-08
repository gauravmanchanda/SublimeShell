set nocompatible

call plug#begin('~/.nvim/plugged')

Plug 'tpope/vim-fugitive'
" Plug 'elixir-editors/vim-elixir'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plug 'vim-scripts/DrawIt'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'tpope/vim-commentary'
" Plug 'ElmCast/elm-vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'rhysd/vim-crystal'
Plug 'dracula/vim'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
" Plug 'itchyny/vim-gitbranch'
Plug 'Raimondi/delimitMate'
Plug 'jdsimcoe/abstract.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'slim-template/vim-slim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'keith/swift.vim'
Plug 'udalov/kotlin-vim'
" Plug 'jonmorehouse/vim-flow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'janko/vim-test'
Plug 'kassio/neoterm'
Plug 'tpope/vim-rails'
Plug 'zah/nim.vim'
" Plug 'KurtPreston/vim-autoformat-rails'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'leafgarland/typescript-vim'
Plug 'jvirtanen/vim-hcl'
Plug 'fatih/vim-hclfmt'
Plug 'chr4/nginx.vim'
" Plug 'ledger/vim-ledger'
Plug 'cespare/vim-toml'
Plug 'vimwiki/vimwiki'
" Plug 'michal-h21/vim-zettel'
" Plug 'ryanoasis/vim-devicons'
Plug 'flrnd/candid.vim'
Plug 'Jimeno0/vim-chito'
Plug 'kaicataldo/material.vim'
Plug 'nightsense/office'
Plug 'yuttie/hydrangea-vim'
Plug 'ekalinin/Dockerfile.vim'

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

map <C-,> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
map <C-f> :Ag<CR>
noremap <leader>f :call CocAction('format')<CR>
" Close the current buffer
map [d :bn <bar> bd# <CR>
" noremap <leader>f :Autoformat<CR>
nnoremap <silent> c<Tab> :let @/=expand('<cword>')<cr>cgn
nnoremap <C-m> :NERDTreeFind<CR>
nnoremap <leader>gd :call CocAction('jumpDefinition')<cr>
" Execute the current file
nnoremap <leader>x :!sh %:p<cr>
" Replace word under the cursor with the one specified
:nnoremap <Leader>r :%s/\<<C-r><C-w>\>/
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

let g:formatdef_rubyfmt = '"rubyfmt"'
let g:formatters_ruby = ['rubyfmt']
set clipboard+=unnamedplus
" let g:deoplete#enable_at_startup = 1
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let NERDTreeShowHidden=1
let dart_style_guide = 2
let g:crystal_auto_format=1
" let g:autoformat_verbosemode=1
let g:python3_host_prog="$HOME/.asdf/shims/python"
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }
let g:neoterm_default_mod = "botright"
let g:neoterm_size = 15
let g:Hexokinase_highlighters = ['sign_column']

" Required for operations modifying multiple buffers like rename.
set hidden

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

let g:material_theme_style = 'palenight'
colorscheme OceanicNext
