

" Sets how many lines of history VIM has to remember
set history=700
set noswapfile
" Enable filetype plugins
filetype plugin on
filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

set autoindent
set smartindent

set number
set ruler

set shiftwidth=4
set softtabstop=4
set tabstop=4

set nofoldenable

" Linebreak on 80 characters
set lbr
set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


set hlsearch
set incsearch

set backspace=indent,eol,start

autocmd FileType gnuplot set formatoptions=l

autocmd Filetype html,xml,xsl let g:closetag_html_style=1
autocmd Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => clang-format plugin: configureation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,cxx,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,cxx,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,cxx,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
autocmd FileType c,cpp,cxx,ojbc setlocal formatprg=clang-format\ -

autocmd BufNewFile,BufEnter *.xsh :setlocal filetype=python
au FileType python setlocal formatprg=autopep8\ -
au FileType cython setlocal formatprg=autopep8\ -
