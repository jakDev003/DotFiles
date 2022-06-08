set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc " allow for external vimrc files
set guicursor= " keep cursor as a block instead of a line
set relativenumber
set nohlsearch " no highlight search
set hidden " keeps all buffers open
set noerrorbells " fail silently (no rang-a-danglin)
set nu
set nowrap
set ignorecase " ignore case when searching (needed for smartcase)
set smartcase " when searching and a capital letter is used it will become case sensitive

" how to keep file change history
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" searching
set incsearch " highlight as you type when searching
set termguicolors
set scrolloff=8 " when scrolling it will start scrolling when 'x' lines away
set noshowmode
set completeopt=menuone,noinsert,noselect

" displaying messages
set signcolumn=yes
set colorcolumn=80

" give more space for displaying messages
set cmdheight=2

" Having longer updatetime (default is 4000ms = 4s) leads to noticable
" delays and poor user experience
set updatetime=50

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

" OneHalf Theme
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark

" Telescope
let mapleader = " " " Sets the 'leader' key to 'SPACE'
" nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
