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
Plug 'preservim/vim-markdown'                        " Markdown syntax & features | ge (follow link)
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
let g:ale_completion_enabled = 1                         " Enable completion
set omnifunc=ale#completion#OmniFunc                     " Set omni completion function
let g:ale_fix_on_save = 1                                " Auto-fix files on save
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],  " Apply to all files
\   'javascript': ['prettier', 'eslint'],                " JS formatting
\   'go': ['gofmt', 'goimports'],                        " Go formatting
\   'markdown': ['prettier'],                            " Markdown formatting
\}
let g:ale_linters = {
\   'go': ['gopls', 'gofmt'],                            " Go linting
\}

" vim-markdown - Markdown syntax and features
let g:vim_markdown_folding_disabled = 1       " Disable section folding
let g:vim_markdown_frontmatter = 1            " Highlight YAML frontmatter
let g:vim_markdown_toml_frontmatter = 1       " Highlight TOML frontmatter
let g:vim_markdown_json_frontmatter = 1       " Highlight JSON frontmatter
let g:vim_markdown_follow_anchor = 1          " Follow anchors with ge
let g:vim_markdown_conceal = 1                " Don't hide syntax chars (*, _, etc)
let g:vim_markdown_conceal_code_blocks = 0    " Don't conceal code blocks
let g:vim_markdown_strikethrough = 1          " Enable ~~strikethrough~~ syntax

" fzf - Fuzzy finder shortcuts
#let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
nmap <C-p> :Files<cr>                           " Ctrl-p: Find files
nmap <C-t> :Tags<cr>                            " Ctrl-t: Find tags
nmap <C-b> :Buffers<cr>                         " Ctrl-b: List buffers
nmap <leader>f :Rg<space>                       " <leader>f: Search with ripgrep
nmap <leader>F :exec "Rg ".expand("<cword>")<cr> " <leader>F: Search word under cursor

" Load Go-specific configuration
:silent! source ~/.vim/go.vimrc
