if !stridx(&rtp, g:plugs['fzf.vim'].dir) | finish | endif

nnoremap <silent><special> <A-f> :<C-U>FZFFiles<CR>
nnoremap <silent><special> <A-b> :<C-U>FZFBuffers<CR>
nnoremap <silent><special> <Bslash> :<C-U>FZFRg<CR>
