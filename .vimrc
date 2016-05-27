"Pantogen configs
execute pathogen#infect()
call pathogen#helptags()

"nerdtrhee configs
map <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1

"YCM python autocomplete
let g:ycm_python_binary_path = '/usr/bin/python3'

"crt-p config
set runtimepath^=~/.vim/bundle/ctrlp.vim


syntax on
"Syntax highlinghting

set laststatus=2
"To display the status line always

filetype plugin indent on
"identation

" solarized dark theme
syntax on
set t_Co=16
set background=dark
colorscheme solarized


set number	
" Show line numbers
set linebreak	
" Break lines at word (requires Wrap lines)
set showbreak=+++	
" Wrap-broken line prefix
set textwidth=100	
" Line wrap (number of cols)
set showmatch	
" Highlight matching brace
set visualbell	
" Use visual bell (no beeping)
 
set hlsearch	
" Highlight all search results
set smartcase	
" Enable smart-case search
set ignorecase	
" Always case-insensitive
set incsearch	
" Searches for strings incrementally
 
set autoindent	
" Auto-indent new lines
set shiftwidth=4	
" Number of auto-indent spaces
set smartindent	
" Enable smart-indent
set smarttab	
" Enable smart-tabs
set softtabstop=4	
" Number of spaces per Tab
 
set ruler	
" Show row and column ruler information

set undolevels=1000	
" Number of undo levels

set backspace=indent,eol,start	
" Backspace behaviour

map <F9> :w<CR>:!python %<CR>
" seting F9 to save and compile python

set viminfo^=h
" higlight match in search

" Default mapping vim-multiple-cursors

let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-e>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'



#plugins i'm using
ctrlp.vim
nerdtree
ultisnips
vim-airline
vim-colors-solarized
vim-multiple-cursors
dilimitMate
syntastic
vdebug
vim-airline-themes
vim-flake8
YouCompleteMe

