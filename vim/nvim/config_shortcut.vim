
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" tabswitch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>



" Commenting blocks of code.
 autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
 autocmd FileType sh,ruby,python   let b:comment_leader = '# '
 autocmd FileType conf,fstab       let b:comment_leader = '# '
 autocmd FileType tex              let b:comment_leader = '% '
 autocmd FileType mail             let b:comment_leader = '> '
 autocmd FileType vim              let b:comment_leader = '" '
 noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
 noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helping with typo :)
command W w
command Wq wq
command Q q


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Over command plugin: visual search and replace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:vscode')
    nnoremap <leader>v :OverCommandLine<CR> %s/<C-r><C-w>/

    function! VisualFindAndReplace()
      :OverCommandLine %s/
      :noh
    endfunction
    nnoremap <Leader>s :call VisualFindAndReplace()<CR>

    function! VisualFindAndReplaceWithSelection() range
      :'<,'>OverCommandLine s/
      :noh
    endfunction
    xnoremap <Leader>s :call VisualFindAndReplaceWithSelection()<CR>
endif

