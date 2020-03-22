function! s:SetByShebang() abort
  let l:shebang = getline(1)
  if l:shebang =~# '^#!.*/.*\s\+node\>' | setfiletype javascript | endif
  if l:shebang =~# '^#!.*/.*\s\+zsh\>' | setfiletype zsh | endif
endfunction

augroup filetypedetect
  autocmd! BufNewFile,BufRead * call s:SetByShebang() 
  autocmd! BufNewFile,BufRead *.plist setfiletype xml
augroup END

autocmd! FileType * setlocal formatoptions-=o
