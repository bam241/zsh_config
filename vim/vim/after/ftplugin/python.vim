setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
autocmd FileType python,*.pyx,*.pxd set tabstop=4 
au Filetype python,*.pyx,*.pxd set expandtab
au FileType python,*.pyx,*.pxd setlocal formatprg=autopep8\ -
autocmd FileType python,*.pyx,*.pxd set formatoptions=l
