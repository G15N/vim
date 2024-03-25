"
" Global vim configuration
"

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" Sets how many lines of history VIM has to remember
set history=100

" Set to auto read when a file is changed from the outside
set autoread

" When the page starts to scroll, keep the cursor 10 lines from the top and 10 lines from the bottom
set scrolloff=10

" Turn on the Wild menu
set wildmenu

" List all matches and complete each full match
set wildmode=list,full

" Case insensitive while looking for a file
set wildignorecase

" Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hidden

" Set the search scan to wrap lines
set wrapscan

" Ignore case with search
set ignorecase

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Disable highlighting search results
set nohlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" Add line number
set number

" Add relative line number
set relativenumber

" Set complete options
set complete=.,w,b,t

" Set completion popup menu works as in IDEs
set completeopt=longest,menuone

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Show invisibles as character
set list

" Switch on syntax highlighting
syntax on

" This is only necessary if you use "set termguicolors".
" fixes glitch? in colors when using vim with tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Set UTF8 as standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smartcase

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

" Do not Wrap lines by default
set nowrap

" Show the current mode
set showmode

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
set timeoutlen=500

" Enable mouse
set mouse=a

" Highlight the current line and column
" Don't do this - It makes window redraws painfully slow
set nocursorline
set nocursorcolumn

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Copy indent from current line when starting a new line
set autoindent
set copyindent

" > Never ever let Vim write a backup file! They did that in the 70’s.
" > Use modern ways for tracking your changes, for God’s sake.
set nobackup
set nowritebackup
set noswapfile

" Enable modelines
set modeline

" Enables the reading of a .vimrc file from the current directory
set exrc

" Set wimdiff to ignore whitespace
set diffopt+=iwhite

" Set wimdiff to ignore case
set diffopt+=icase

" System default for mappings is now the "," character
let mapleader = ","

" Mapping to switch to paste mode
set pastetoggle=<F2>

" Define foldmethod to manuel
set foldmethod=manual

" Spelling
set spelllang=fr

" Uses the * register, aka primary selection
set clipboard+=unnamed

" Writes the content of the file automatically if you call :make
set autowrite

" Set colorscheme
colorscheme default

" Bubble single lines
nmap <C-K> ddkP
nmap <C-J> ddp

" Bubble multiple lines
vmap <C-K> xkP`[V`]
vmap <C-J> xp`[V`]

" Smart way to move between windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Toggle current fold open/closed
nmap <space> za

" Fast saving
nmap <leader>w :w!<cr>

" Wipe out all buffers
nmap <leader>wa :1,9000bwipeout<cr>

" Close the current buffer
nmap <leader>bd :Bclose<cr>

" Close all the buffers
nmap <leader>ba :1,1000 bd!<cr>

" Enable/Disable highlight when <leader><cr> is pressed
nmap <leader><cr> :set hls!<cr>

" Activate relative line number (buggy before 7.4)
nmap <leader>rn :set relativenumber<cr>

" Set text wrapping toggles
nmap <leader>ww :set invwrap<cr>:set wrap?<cr>

" Useful mapping for managing buffers
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>

" Useful mappings for managing tabs
nmap <leader>tnew :tabnew<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tclose :tabclose<cr>
nmap <leader>tm :tabmove<cr>
nmap <leader>tp :tabprevious<cr>
nmap <leader>tn :tabnext<cr>
nmap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Display results in cope
nmap <leader>c :cw<cr>

" Display current location results in cope
nmap <leader>l :lw<cr>

" Hide copen results
nmap <leader>cc :ccl<cr>

" To go to the next search result do:
nmap <leader>n :cn<cr>

" To go to the previous search results do:
nmap <leader>p :cp<cr>

" Show invisible
nmap <leader>i :set list!<cr>

" Create a new terminal emulator
nmap <leader>sh :terminal<CR>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

" Load plugins
:silent! source ~/.vim/plugins.vimrc
