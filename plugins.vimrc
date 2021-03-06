" Vim plugins configuration
"

" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'cocopon/iceberg.vim'
Plug 'dense-analysis/ale'
Plug 'edkolev/tmuxline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'phpactor/ncm2-phpactor'
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'preservim/nerdtree'
Plug 'qpkorr/vim-bufkill'
Plug 'ronakg/quickr-preview.vim'
Plug 'roxma/nvim-yarp'
Plug 'sheerun/vim-polyglot'
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
nmap <C-p> :Files<cr>
nmap <C-t> :Tags<cr>
nmap <C-b> :Buffers<cr>
nmap <leader>f :Rg<space>
nmap <leader>F :exec "Rg ".expand("<cword>")<cr>

" Iceberg
colorscheme iceberg

" Phpactor mapping
au FileType php nmap <buffer> <Leader>u :PhpactorImportClass<CR>
au FileType php nmap <buffer> <Leader>e :PhpactorClassExpand<CR>
au FileType php nmap <buffer> <Leader>ua :PhpactorImportMissingClasses<CR>
au FileType php nmap <buffer> <Leader>mm :PhpactorContextMenu<CR>
au FileType php nmap <buffer> <Leader>nn :PhpactorNavigate<CR>
au FileType php,cucumber nmap <buffer> <Leader>o :PhpactorGotoDefinition<CR>
au FileType php,cucumber nmap <buffer> <Leader>Oh :PhpactorGotoDefinitionHsplit<CR>
au FileType php,cucumber nmap <buffer> <Leader>Ov :PhpactorGotoDefinitionVsplit<CR>
au FileType php,cucumber nmap <buffer> <Leader>Ot :PhpactorGotoDefinitionTab<CR>
au FileType php nmap <buffer> <Leader>K :PhpactorHover<CR>
au FileType php nmap <buffer> <Leader>tt :PhpactorTransform<CR>
au FileType php nmap <buffer> <Leader>cc :PhpactorClassNew<CR>
au FileType php nmap <buffer> <Leader>ci :PhpactorClassInflect<CR>
au FileType php nmap <buffer> <Leader>fr :PhpactorFindReferences<CR>
au FileType php nmap <buffer> <Leader>mf :PhpactorMoveFile<CR>
au FileType php nmap <buffer> <Leader>cf :PhpactorCopyFile<CR>
au FileType php nmap <buffer> <silent> <Leader>ee :PhpactorExtractExpression<CR>
au FileType php vmap <buffer> <silent> <Leader>ee :<C-u>PhpactorExtractExpression<CR>
au FileType php vmap <buffer> <silent> <Leader>em :<C-u>PhpactorExtractMethod<CR>

" Vim-GitGutter
set signcolumn=yes

" Vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_command='goimports'

" Quickr Preview
nmap <leader><space> <plug>(quickr_preview)
let g:quickr_preview_position = 'bottom'
