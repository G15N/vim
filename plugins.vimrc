"
" Vim plugins configuration
"

" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'cocopon/iceberg.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'edkolev/tmuxline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'powerline/fonts'
Plug 'preservim/nerdtree'
Plug 'qpkorr/vim-bufkill'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Align'
Plug 'ronakg/quickr-preview.vim'
call plug#end()

"
" Plugins configuration
"

" Ack
nmap <silent> <C-f> :Ack! "\b<cword>\b"<cr>

" ALE
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
let g:ale_linters = {
\   'go': ['gopls'],
\}

" Airline
set laststatus=2
let g:airline_theme = 'iceberg'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" bufkill
map <leader>w :BD<cr>

" fzf
nmap <C-g><C-f> :Files<cr>
nmap <C-g><C-t> :Tags<cr>
nmap <C-g><C-b> :Buffers<cr>

" Iceberg
" set t_Co=256
" set background=dark
colorscheme iceberg

" Vim-GitGutter
set signcolumn=yes

" Vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_command='goimports'

" Quickr Preview
nmap <leader><space> <plug>(quickr_preview)
let g:quickr_preview_position = 'bottom'
