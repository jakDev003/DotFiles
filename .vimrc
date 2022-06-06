set encoding=UTF=-8

" New lines inherit the indentation of previous lines
set autoindent

" Convert tabs to spaces
set expandtab

" Insert the 'tabstop' number of spaces when the 'tab' key is pressed
set smarttab

" Indent using 4 spaces
set tabstop=4

" Enable search highlighting
set hlsearch

" Incrementatl search that shows partial matches
set incsearch

" Automatically switch search to case-sensitive when search query contains an
" upper case letter
set smartcase

" Avoid wrapping a line in the middle of a word
set linebreak

" Enable syntax highlighting
syntax enable

" Enable line wrapping
set wrap

" Show line numbers
" set number

" Show relative line numbers
set relativenumber

" Set the window's title, reflecting the file currently being edited
set title

" Fold based on indetation levels
set foldmethod=indent

" Fold up to three nested levels
set foldnestmax=3


" Automatically monitor for changes to .vimrc so VIM does not need to reload
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Install plugins using Vim-Plug
call plug#begin()
" ---- Notes ----
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" ---- Default plugins to install ----
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" ---- NerdTree ----
Plug 'scrooloose/nerdtree'

" ---- NerdTree Git Plugin ----
Plug 'Xuyuanp/nerdtree-git-plugin'

" ---- NerdTree Vim Dev-Icons ----
Plug 'ryanoasis/vim-devicons'

" ---- Syntastic ----
Plug 'vim-syntastic/syntastic'

" ---- Vim Airline ----
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ---- Tabular ----
Plug 'godlygeek/tabular'

" ---- Synthwave Theme ----
Plug 'TroyFletcher/vim-colors-synthwave/'

" ---- OneHalf Theme ----
Plug 'sonph/onehalf'

" Initialize plugin system
call plug#end()


" ---- Syntastic Specific settings ----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ---- Set theme ----
" colorscheme onehalfdark
colorscheme synthwave

" ---- NerdTree Specific settings ----
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p


