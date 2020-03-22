command! PI PlugInstall
command! PU PlugUpdate | PlugUpgrade

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

let g:fzf_command_prefix = 'FZF'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'sbdchd/neoformat'

Plug 'neomake/neomake'

Plug 'nathanaelkane/vim-indent-guides'

" --------------------------------------------------------------------------
" Language: zsh
" --------------------------------------------------------------------------

Plug 'chrisbra/vim-zsh'

" ==========================================================================
" Themes
" ==========================================================================

Plug 'joshdick/onedark.vim'
