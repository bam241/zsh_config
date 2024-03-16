
" Set to auto read when a file is changed from the outside
set autoread

augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Force to use underline for spell check results
augroup SpellUnderline autocmd!  
    autocmd ColorScheme * 
          \ highlight SpellBad 
          \     cterm=Underline 
          \     ctermfg=NONE 
          \     ctermbg=NONE 
          \     term=Reverse 
          \     gui=Undercurl 
          \     guisp=Red 
    autocmd ColorScheme * 
          \ highlight SpellCap 
          \     cterm=Underline 
          \     ctermfg=NONE 
          \     ctermbg=NONE 
          \     term=Reverse 
          \     gui=Undercurl 
          \     guisp=Red 
    autocmd ColorScheme * 
          \ highlight SpellLocal 
          \     cterm=Underline 
          \     ctermfg=NONE 
          \     ctermbg=NONE 
          \     term=Reverse 
          \     gui=Undercurl 
          \     guisp=Red 
    autocmd ColorScheme * 
          \ highlight SpellRare 
          \     cterm=Underline 
          \     ctermfg=NONE 
          \     ctermbg=NONE 
          \     term=Reverse 
          \     gui=Undercurl 
          \     guisp=Red 
augroup END

colorscheme darkmate
syntax enable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Statusline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"
"" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set ttimeoutlen=10
let g:bufferline_echo = 0
