"
" Vim's plugins configuration
"

" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'aklt/plantuml-syntax'
Plug 'cocopon/iceberg.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'ntpeters/vim-better-whitespace'
Plug 'powerline/fonts'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Align'
call plug#end()

" Airline configuration
set laststatus=2
let g:airline_theme = 'iceberg'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_sh_shellcheck_args = "-x"

" Ctrlp configuration
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'
let g:ctrlp_custom_ignore = '\v[\/]\.?(git|hg|svn|srv)$'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0

" Vim-better-whitespace configuration
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:strip_whitelines_at_eof = 1
let g:show_spaces_that_precede_tabs = 1
