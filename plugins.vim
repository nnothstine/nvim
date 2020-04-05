command! PI PlugInstall
command! PU PlugUpdate | PlugUpgrade

" Similar but safer than Cond() from
" https://github.com/junegunn/vim-plug/wiki/tips
" This is a global function for command access
function! PlugIf(condition, ...) abort
  let l:enabled = a:condition ? {} : { 'on': [], 'for': [] }
  return a:0 ? extend(l:enabled, a:000[0]) : l:enabled
endfunction

" ==========================================================================
" Vim debugging
" ==========================================================================

" Show slow plugins
Plug 'tweekmonster/startuptime.vim', { 'on': [ 'StartupTime' ] }
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'pgdouyon/vim-evanesco'
Plug 'junegunn/vim-easy-align'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" --------------------------------------------------------------------------
" Modeline
" --------------------------------------------------------------------------

Plug 'itchyny/lightline.vim'

" Doesn't seem to work in after/plugin...
let g:fzf_command_prefix = 'FZF'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'sbdchd/neoformat', PlugIf(has('nvim'))

Plug 'neomake/neomake', PlugIf(has('nvim'))

Plug 'nathanaelkane/vim-indent-guides'

let g:matchup_delim_noskips = 2
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_status_offscreen = 0
Plug 'andymass/vim-matchup', PlugIf(has('patch-7.4.1689'))

" --------------------------------------------------------------------------
" Signature preview
" --------------------------------------------------------------------------

Plug 'Shougo/echodoc.vim'

" Cursorline
Plug 'delphinus/vim-auto-cursorline'

" --------------------------------------------------------------------------
" Language: Python
" --------------------------------------------------------------------------

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'vim-python/python-syntax'

" --------------------------------------------------------------------------
" Language: zsh
" --------------------------------------------------------------------------

Plug 'chrisbra/vim-zsh'

" ==========================================================================
" Themes
" ==========================================================================

Plug 'joshdick/onedark.vim'
