" Vim plugins configuration
"
"
"

" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'qpkorr/vim-bufkill'
Plug 'ronakg/quickr-preview.vim'
Plug 'roxma/nvim-yarp'
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Align'
call plug#end()

"
" Plugins configuration
"

" ALE
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

" Airline
set laststatus=2
" let g:airline_theme = 'codedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

" fzf
nmap <C-p> :Files<cr>
nmap <C-t> :Tags<cr>
nmap <C-b> :Buffers<cr>
nmap <leader>f :Rg<space>
nmap <leader>F :exec "Rg ".expand("<cword>")<cr>

" Set colorscheme
colorscheme base16-default-dark
set background=dark
set termguicolors
hi NonText ctermbg=none
hi Normal guibg=NONE ctermbg=NONE

" Vim-GitGutter
set signcolumn=yes

" Quickr Preview
nmap <leader><space> <plug>(quickr_preview)
let g:quickr_preview_position = 'bottom'
