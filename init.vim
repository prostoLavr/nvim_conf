set mouse=a  " enable mouse
set encoding=utf-8
set number
set noswapfile
set scrolloff=7

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set colorcolumn=79
filetype indent on      " load filetype-specific indent files

inoremap jk <esc>
nnoremap ,<space> :nohlsearch<CR>

call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'


" color schemas
Plug 'morhetz/gruvbox'  " colorscheme gruvbox
Plug 'preservim/tagbar'  " File structure

" For JS/JSX
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

colorscheme gruvbox

" Tagbar config
nmap <F8> :TagbarToggle<CR>
" Автостарт
autocmd VimEnter *.py TagbarToggle  
" Компактный вид
let g:tagbar_compact = 1  
" Отк. сортировка по имени 
let g:tagbar_sort = 0
