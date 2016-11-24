"
" Vim's plugins configuration
"

" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'alessandroyorba/despacio'
Plug 'edkolev/tmuxline.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts'
call plug#end()

" Airline configuration
set laststatus=2
let g:airline_theme='ubaryd'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Despacio configuration
set background=dark
colorscheme despacio

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Tagbar configuration
nmap <F8> :TagbarToggle<CR>
