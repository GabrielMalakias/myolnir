set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'elmcast/elm-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular.git'
Bundle 'vim-ruby/vim-ruby'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'elixir-editors/vim-elixir'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'rking/ag.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jpo/vim-railscasts-theme'

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
set mouse=a
set clipboard=unnamed

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-v> <ESC>"+pa
map <C-c> "+y
map <C-d> "+d

map <Esc><Esc> :w<CR>

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

let g:netrw_banner=0
let g:netrw_winsize=30

augroup ProjectDrawer
  autocmd!
augroup END

" Some visual improvements
colorscheme railscasts
set background=dark
let g:airline_theme='ubaryd'
let g:gitgutter_max_signs = 950

"set runtimepath^=~/.vim/bundle/ctrlp.vim

set t_Co=256
syntax on

" Setup some netrw options
let g:netrw_banner = 0
let g:netrw_liststyle=0         " thin (change to 3 for tree)
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically
map <C-E> :Lexplore<CR>
map <C-B> :Buffers<CR>

" Setup some ag patterns
let g:ag_working_path_mode="r"

nnoremap <C-p> :Files<CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_layout = { 'left': '100%' }
let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'

set nobackup
set nowritebackup
let g:ag_working_path_mode="r"

set rtp+=~/.fzf
nnoremap <C-p> :Files<CR>
set mouse=a
set clipboard=unnamed
