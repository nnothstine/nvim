if !nan#IsLoaded('completion-nvim') | finish | endif

let g:completion_enable_snippet = 'UltiSnips'

imap <silent> <C-f> <Plug>(completion_trigger)
" nmap <tab> <Plug>(completion_smart_tab)
let g:completion_confirm_key = "\<C-f>"
