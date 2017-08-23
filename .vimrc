" Pantogen configs
execute pathogen#infect()
call pathogen#helptags()

" nerdtrhee configs
map <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1

" YCM python autocomplete
let g:ycm_python_binary_path = '/usr/bin/python2'

" paste and copy outside vim
set clipboard=unnamedplus

set encoding=utf-8
" setting enconding to utf-8

" rt-p config
set runtimepath^=~/.vim/bundle/ctrlp.vim


syntax on
" Syntax highlinghting

set laststatus=2
" To display the status line always

filetype plugin indent on
" identation

" solarized dark theme
syntax on
set t_Co=16
" set background=dark
" colorscheme solarized
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-default-dark


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
set softtabstop=0
" Number of spaces per Tab
au FileType ruby setl sw=2 sts=2 et
" two spaces by ruby
au FileType xml setl sw=2 sts=2 et
" two spaces for xml
set tabstop=8 expandtab

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

let g:ackprg = 'ag --nogroup --nocolor --column'
" silver search

let mapleader=","
" mapping leader key

autocmd BufNewFile,BufReadPost *.aiml set filetype=xml
" making vim threat aiml like xml

" nmap <Enter> O<Esc>
" nmap <CR> o<Esc>
" insert a line with enter, withou enter in mode insert

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Bold\ 11
" set guifont=Inconsolata-g\ for\ Powerline\ g\ Bold\ 6
"seting font and font-size

let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nnoremap <leader>. :CtrlPTag<cr>
" ctrlp + ctags

" navigate in vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" comment with tcomment
"nnoremap <C-/> <g-c>

nnoremap <leader>p oimport ipdb; ipdb.set_trace()<Esc>

" let g:auto_save = 1  " enable AutoSave on Vim startup

" let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option

" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

" poweline configs
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" removing menu and toolbar for gvim

:set guioptions -=m
:set guioptions -=T
:set guioptions -=t
:set guioptions -=r
:set guioptions -=L

set spell spelllang=pt_br
" spell checking

vnoremap // y/<C-R>"<CR>
" search for visual selected text


" g:vimtex_latexmk_enabled

" plugins im using

" ctrlp.vim
" nerdtree
" ultisnips
" vim-airline
" vim-colors-solarized
" vim-multiple-cursors
" dilimitMate
" syntastic
" vdebug
" vim-airline-themes
" vim-flake8
" YouCompleteMe
" tcomment
" ack.vim
" vim-commentary
" vim-flake8
" ag.vim
" vim-auto-save
" vim-easytags
" vim-fugitive
" vim-rails
" vim-endwise
" vim-misc
" vim-surround


" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml, *.xml, *.aiml"


:iabbrev </ </<C-X><C-O>

:imap <C-Space> <C-X><C-O>

set directory^=$HOME/.vim/tmp//
"preventing vim to create .swp files in work directory

"trim whitespace at the end of line
autocmd BufWritePre * %s/\s\+$//e

"syntastic syntaxe checker
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_ruby_checkers = ['rubocop']
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']
