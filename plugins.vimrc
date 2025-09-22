"
" Plugins load
"

" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'dense-analysis/ale'
Plug 'edkolev/tmuxline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'svermeulen/vim-subversive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Align'
call plug#end()

"
" Plugins configuration
"

" Airline
let g:airline_theme = 'base16_default_dark'
let g:airline_powerline_fonts = 1

" Base16 Colorscheme
colorscheme base16-default-dark
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE

" ALE
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'go': ['gofmt', 'goimports'],
\}
let g:ale_linters = {
\   'go': ['gopls', 'gofmt'],
\}

" fzf
#let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
nmap <C-p> :Files<cr>
nmap <C-t> :Tags<cr>
nmap <C-b> :Buffers<cr>
nmap <leader>f :Rg<space>
nmap <leader>F :exec "Rg ".expand("<cword>")<cr>

" Load Go-specific configuration
:silent! source ~/.vim/go.vimrc
