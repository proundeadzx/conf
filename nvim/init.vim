syntax enable
filetype plugin indent on

set hidden
set number
set showcmd
set shiftwidth=2
set shiftround
set expandtab
set list
set completeopt=noinsert,menuone,noselect
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set history=200
set background=dark
set ruler
set clipboard=unnamedplus
set formatoptions+=o
set textwidth=0
" set inccommand=nosplit
set termguicolors
set scrolloff=8
set undofile
set autoread
autocmd FileType c setlocal sw=4

noremap ö ;
noremap <space> :write<CR>
noremap Y y$
nnoremap <silent><F2> :e $MYVIMRC<CR>
nnoremap <silent><F3> :so $MYVIMRC<CR>
nnoremap <silent><esc><esc> :noh<return><esc>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w> <C-\><C-n><C-w>

call plug#begin('~/.vim/plugged')
    Plug 'https://github.com/morhetz/gruvbox.git' "Theme
    let g:gruvbox_italic=1
    let g:gruvbox_contrast_dark='hard'

    Plug 'tpope/vim-surround'
    Plug 'machakann/vim-sandwich'
    Plug 'tpope/vim-commentary' "Uncomment and comment
    Plug 'tpope/vim-speeddating'

    " Plug 'w0rp/ale'
    " let g:ale_linters = {'python': ['flake8'], 'c': ['gcc']}

    Plug 'mhinz/vim-signify'
    Plug 'justinmk/vim-dirvish'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-fugitive'
    Plug 'https://github.com/mbbill/undotree'
    Plug 'https://github.com/vim-scripts/Gundo'

    Plug 'neovim/nvim-lsp'
call plug#end()

colorscheme gruvbox

lua << EOF
local nvim_lsp = require'nvim_lsp'
nvim_lsp.ccls.setup{
cmd = {'/home/eitlmea/ccls/ccls'}}
EOF
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> ,f    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
