"
" Plugins load
"

" Load plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'                        " Show git diff in sign column
Plug 'chriskempson/base16-vim'                       " Base16 colorschemes
Plug 'dense-analysis/ale'                            " Async linting & fixing | :ALEFix
Plug 'edkolev/tmuxline.vim'                          " Tmux statusline generator
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }  " Go development | :GoDef, :GoDoc, :GoRun
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'                              " FZF vim integration | Ctrl-p, Ctrl-t, Ctrl-b
Plug 'tpope/vim-markdown'                            " Markdown syntax & features
Plug 'svermeulen/vim-subversive'                     " Substitute operator | s motion
Plug 'tpope/vim-commentary'                          " Comment code | gc motion, gcc line
Plug 'tpope/vim-eunuch'                              " Unix commands | :Delete, :Move, :Rename, :Chmod
" Plug 'tpope/vim-fugitive'                          " Git integration | :Git
Plug 'tpope/vim-repeat'                              " Repeat plugin maps with .
Plug 'tpope/vim-speeddating'                         " Increment dates | Ctrl-a/Ctrl-x on dates
Plug 'tpope/vim-surround'                            " Surround motions | cs, ds, ys
Plug 'vim-airline/vim-airline'                       " Statusline
Plug 'vim-airline/vim-airline-themes'                " Airline themes
Plug 'vim-scripts/Align'                             " Text alignment | :Align
call plug#end()

"
" Plugins configuration
"

" Airline - Statusline configuration
let g:airline_theme = 'base16_material_darker'  " Set airline theme
let g:airline_powerline_fonts = 1               " Enable powerline fonts

" Base16 Colorscheme
colorscheme base16-material-darker
hi Normal guibg=NONE ctermbg=NONE        " Transparent background
hi NonText guibg=NONE ctermbg=NONE       " Transparent non-text
hi LineNr guibg=NONE ctermbg=NONE        " Transparent line numbers
hi SignColumn guibg=NONE ctermbg=NONE    " Transparent sign column

" ALE - Async linting and fixing
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_fix_on_save = 1
let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['prettier', 'eslint'], 'go': ['gofmt', 'goimports'], 'markdown': ['prettier']}
let g:ale_linters = {'go': ['gopls', 'gofmt'], 'markdown': ['markdownlint']}

" vim-markdown - Markdown syntax and features
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'javascript', 'go', 'json', 'yaml', 'sql']
let g:markdown_syntax_conceal = 0             " Don't hide syntax chars

" fzf - Fuzzy finder shortcuts
"let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
nmap <C-p> :Files<cr>                           " Ctrl-p: Find files
nmap <C-t> :Tags<cr>                            " Ctrl-t: Find tags
nmap <C-b> :Buffers<cr>                         " Ctrl-b: List buffers
nmap <leader>f :Rg<space>                       " <leader>f: Search with ripgrep
nmap <leader>F :exec "Rg ".expand("<cword>")<cr> " <leader>F: Search word under cursor

" Load Go-specific configuration
:silent! source ~/.vim/go.vimrc
