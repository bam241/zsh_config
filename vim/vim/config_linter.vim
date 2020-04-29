

let g:ale_sign_error = '●'
let g:ale_sign_warning = '+'

hi ALEErrorSign ctermfg=Red
hi ALEWarningSign ctermfg=Yellow cterm=bold

hi ALESignColumnWithErrors  guibg=#232323
hi ALESignColumnWithoutErrors  guibg=#232323
hi ALESignColumn ctermbg=240
let g:ale_change_sign_column_color = 1

let g:ale_linters = {
            \  'python': ['pycodestyle'],
            \  'cpp': ['cpplint', 'cppcheck', 'flawfinder', 'ccls'],
            \}
