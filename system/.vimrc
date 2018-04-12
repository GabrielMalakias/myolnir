set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular.git'
Bundle 'vim-ruby/vim-ruby'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'elixir-editors/vim-elixir'
Plugin 'rking/ag.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points
set mouse=a     "some stuff to get the mouse going in term
set t_Co=256    "tell the term has 256 colors
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set nobackup
set number      "show line number
set cursorline  "highlight current line
set modifiable

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <Esc><Esc> :w<CR>

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

let g:netrw_banner=0
let g:netrw_browse_split=1
let g:netrw_winsize=30

augroup ProjectDrawer
  autocmd!
augroup END

" Some visual improvements
colorscheme railscasts
set background=dark
let g:airline_theme='ubaryd'
let g:gitgutter_max_signs = 950

let g:ag_working_path_mode="r"

set rtp+=~/.fzf
nnoremap <C-p> :Files<CR>
