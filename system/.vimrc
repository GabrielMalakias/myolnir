set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

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
Plugin 'morhetz/gruvbox'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'c.vim'

call vundle#end()

set nocompatible              " be iMproved, required
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
set nobackup
set nowritebackup

filetype plugin indent on
syntax on

augroup ProjectDrawer
  autocmd!
augroup END

" Some visual improvements
colorscheme gruvbox
set background=dark
let g:airline_theme='ubaryd'
let g:gitgutter_max_signs = 950
let g:airline_powerline_fonts = 1

" Setup some netrw options
let g:netrw_winsize=30
let g:netrw_banner=0
let g:netrw_liststyle=0         " thin (change to 3 for tree)
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically

" Setup some ag patterns & FZF
let g:ag_working_path_mode="r"
set rtp+=/usr/local/opt/fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_layout = { 'left': '75%' }
let g:fzf_files_options =
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" Clean empty spaces
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" Keyboard mappings
nnoremap <C-p> :Files<CR>
map <C-E> :Lexplore<CR>
map <C-B> :Buffers<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-c> "+y
map <C-d> "+d
map <Esc><Esc> :w<CR>

