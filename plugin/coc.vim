if !stridx(&rtp, g:plugs["coc.nvim"].dir) | finish | endif

let g:coc_global_extensions = [ 'coc-snippets', 'coc-pairs' ]

" --------------------------------------------------------------------------
" Utils
" --------------------------------------------------------------------------

let s:vim_help = ['vim', 'help']
function! s:ShowDocumentation()
  if (index(s:vim_help, &filetype) >= 0)
    execute 'h ' . expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" --------------------------------------------------------------------------
" Mappings
" -------------------------------------------------------------------------

nnoremap <silent> K :<C-U>call <SID>ShowDocumentation()<CR>

" coc-snippets
imap <C-f> <Plug>(coc-snippets-expand-jump)
