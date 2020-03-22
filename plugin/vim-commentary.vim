if !stridx(&rtp, g:plugs['vim-commentary'].dir) | finish | endif

nnoremap <silent> <C-\> :Commentary<CR>