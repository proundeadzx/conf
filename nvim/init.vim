syntax enable
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
set inccommand=nosplit
set termguicolors
set scrolloff=8

noremap ö ;
noremap <space> :write<CR>
nnoremap <silent><F2> :e $MYVIMRC<CR>
nnoremap <silent><F3> :so $MYVIMRC<CR>
set undofile
filetype plugin indent on
call plug#begin('~/.vim/plugged')
  Plug 'roxma/nvim-completion-manager'
  Plug 'https://github.com/morhetz/gruvbox.git' "Theme
  let g:gruvbox_italic=1
  let g:gruvbox_contrast_dark='hard'
  Plug 'https://github.com/lervag/vimtex.git' "LaTeX support
  Plug 'tpope/vim-surround'
  Plug 'machakann/vim-sandwich'
  Plug 'tpope/vim-commentary' "Uncomment and comment
  Plug 'daeyun/vim-matlab'
  Plug 'w0rp/ale'
  Plug 'mhinz/vim-signify'
  Plug 'jpalardy/vim-slime'
  let g:slime_target = 'tmux'
  let g:slime_default_config = {"socket_name": "default", "target_pane": ":"}
  let g:slime_dont_ask_default = 1
  Plug 'justinmk/vim-dirvish'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'https://github.com/mbbill/undotree'
  Plug 'Floobits/floobits-neovim'
  Plug 'https://github.com/vim-scripts/Gundo'
call plug#end()

colorscheme gruvbox
noremap Y y$
nnoremap <silent><esc><esc> :noh<return><esc>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w> <C-\><C-n><C-w>
