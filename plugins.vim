" Plug 'junegunn/vim-easy-align'

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
Plug 'pgdouyon/vim-evanesco'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

let g:fzf_command_prefix = 'FZF'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'sbdchd/neoformat'

Plug 'chrisbra/vim-zsh'

" Theme
Plug 'joshdick/onedark.vim'
