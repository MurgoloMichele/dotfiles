syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set laststatus=2
set cursorline
set cursorcolumn

set colorcolumn=80
highlight ColorColumn ctermbg=9 guibg=lightgrey

inoremap jk <Esc>

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'junegunn/goyo.vim'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
let g:newtrw_browse_split=2
let g:newtrw_banner = 0
let g:newtrw_winsize = 25

map <C-o> :NERDTreeToggle<CR>
nnoremap <CR> :nohlsearch<CR><CR>
