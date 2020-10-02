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

" let g:coc_global_extensions = [
"   \  'coc-diagnostic', 
"   \  'coc-html',
"   \  'coc-prettier',
"   \  'coc-yaml',
"   \]

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Add file manip commands like Remove, Move, Rename, SudoWrite
" Do not lazy load, tracks buffers
Plug 'tpope/vim-eunuch'

 " ==========================================================================
  " Color highlighting
  " ==========================================================================

  " The vim fallback choice is vim-css-color because it offers stability and
  " completeness. It can do multiple css colors on one line, which hexokinase
  " cannot, and it updates immediately, which coc-highlight has trouble
  " keeping up with.
  " let l:use_fancy_colors = has('nvim')
  "       \ && exists('&termguicolors')
  "       \ && &termguicolors

  " Plug 'ap/vim-css-color', PlugIf(!l:use_fancy_colors)
  " " Pure lua implementation, covers most cases and is fastest in neovim
  " Plug 'norcalli/nvim-colorizer.lua', PlugIf(l:use_fancy_colors)
  " augroup nannvimcolorizer
  "   autocmd! User nvim-colorizer.lua lua require 'colorizer'.setup({ '*' }, { css = true })
  " augroup END

" --------------------------------------------------------------------------
" Modeline
" --------------------------------------------------------------------------

Plug 'itchyny/lightline.vim'

" --------------------------------------------------------------------------
" FZF
" --------------------------------------------------------------------------

" Doesn't seem to work in after/plugin...
let g:fzf_command_prefix = 'FZF'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" --------------------------------------------------------------------------
" Autocomplete
" --------------------------------------------------------------------------

Plug 'sbdchd/neoformat', PlugIf(has('nvim'))

Plug 'neomake/neomake', PlugIf(has('nvim'))

" Plug 'nathanaelkane/vim-indent-guides'

let g:matchup_delim_noskips = 2
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_status_offscreen = 0
Plug 'andymass/vim-matchup', PlugIf(has('patch-7.4.1689'))

Plug 'AndrewRadev/splitjoin.vim'

" --------------------------------------------------------------------------
" Signature preview
" --------------------------------------------------------------------------

Plug 'Shougo/echodoc.vim'

" Cursorline
Plug 'delphinus/vim-auto-cursorline'

" --------------------------------------------------------------------------
" Language: Stylesheets
" --------------------------------------------------------------------------

Plug 'JulesWang/css.vim', PlugIf(v:version <= 704)
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim', { 'for': [ 'scss' ] }

" --------------------------------------------------------------------------
" Language: Python
" --------------------------------------------------------------------------

Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-python/python-syntax'

" --------------------------------------------------------------------------
" Language: tmux
" --------------------------------------------------------------------------

Plug 'ericpruitt/tmux.vim'

" --------------------------------------------------------------------------
" Language: VimL
" --------------------------------------------------------------------------

Plug 'machakann/vim-vimhelplint'
Plug 'junegunn/vader.vim'

" --------------------------------------------------------------------------
" Language: zsh
" --------------------------------------------------------------------------

Plug 'chrisbra/vim-sh-indent'
Plug 'chrisbra/vim-zsh'
" Plug 'tjdevries/coc-zsh'

" ==========================================================================
" Themes
" ==========================================================================

Plug 'joshdick/onedark.vim'

" ==========================================================================
" EXPERIMENTAL (nvim-head)
" ==========================================================================

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'neovim/nvim-lsp'

let g:completion_enable_snippet = 'UltiSnips'
