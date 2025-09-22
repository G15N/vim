"
" Go-specific vim configuration
"

" vim-go configuration
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_rename_command='gopls'
let g:go_implements_mode='gopls'

" Enable syntax highlighting for Go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1

" Auto import dependencies
let g:go_fmt_autosave = 1
let g:go_imports_autosave = 1
let g:go_mod_fmt_autosave = 1

" Show type info automatically
let g:go_auto_type_info = 1
let g:go_updatetime = 100

" Use quickfix list for errors
let g:go_list_type = "quickfix"

" Go-specific indentation settings
augroup go_indentation
  autocmd!
  autocmd FileType go setlocal tabstop=8
  autocmd FileType go setlocal shiftwidth=8
  autocmd FileType go setlocal noexpandtab
augroup END

" Go navigation key mappings
augroup go_mappings
  autocmd!
  " Go to definition
  autocmd FileType go nmap <leader>gd <Plug>(go-def)
  autocmd FileType go nmap <leader>gdv <Plug>(go-def-vertical)
  autocmd FileType go nmap <leader>gds <Plug>(go-def-split)

  " Go to declaration
  autocmd FileType go nmap <leader>gD <Plug>(go-decls)
  autocmd FileType go nmap <leader>gDD <Plug>(go-decls-dir)

  " Show documentation
  autocmd FileType go nmap <leader>gdoc <Plug>(go-doc)
  autocmd FileType go nmap <leader>gdocv <Plug>(go-doc-vertical)

  " Show type info
  autocmd FileType go nmap <leader>gi <Plug>(go-info)

  " Show interface implementations
  autocmd FileType go nmap <leader>gim <Plug>(go-implements)

  " Show what interfaces this type implements
  autocmd FileType go nmap <leader>gii <Plug>(go-describe)

  " Rename identifier
  autocmd FileType go nmap <leader>gr <Plug>(go-rename)

  " Find references/callers
  autocmd FileType go nmap <leader>grf <Plug>(go-referrers)
  autocmd FileType go nmap <leader>gc <Plug>(go-callers)
  autocmd FileType go nmap <leader>gce <Plug>(go-callees)

  " Navigate between functions
  autocmd FileType go nmap ]] <Plug>(go-def-stack)
  autocmd FileType go nmap [[ <Plug>(go-def-stack-clear)

  " Build and test
  autocmd FileType go nmap <leader>gb <Plug>(go-build)
  autocmd FileType go nmap <leader>gt <Plug>(go-test)
  autocmd FileType go nmap <leader>gtf <Plug>(go-test-func)

  " Generate interface stubs
  autocmd FileType go nmap <leader>gen :GoImpl<cr>
augroup END