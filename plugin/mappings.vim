" plugin/mappings.vim

" https://vi.stackexchange.com/questions/9751/understanding-ctrl-u-combination
nnoremap <silent><special> <Leader>evr :<C-U>execute 'edit ' . g:vdotdir . '/init.vim'<CR>

" cd to current buffer path
nnoremap <Leader>.. :<C-U>cd! %:h<CR>


nnoremap <Leader>v :<C-U>vsplit<CR>
nnoremap <Leader>h :<C-U>split<CR>