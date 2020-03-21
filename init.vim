" ============================================================================
" Settings vars
" ============================================================================

let mapleader="\<Space>"
let g:vdotdir= expand($VDOTDIR)

if filereadable(expand("$VDOTDIR/plugins.vim"))
"   source "$VDOTDIR/plugins.vim"
    execute 'source ' . g:vdotdir . '/plugins.vim'
endif

" ----------------------------------------------------------------------------
" Display
" ----------------------------------------------------------------------------

set novisualbell
set noerrorbells

set number
set numberwidth=5

" show context around current cursor position
set scrolloff=8
set sidescrolloff=16

set textwidth=80
set colorcolumn=+3
set colorcolumn=+120
set cursorline

set synmaxcol=512
set showtabline=2
set laststatus=2

set noshowcmd
set noshowmode

" ----------------------------------------------------------------------------
" Input
" ----------------------------------------------------------------------------

" Enable mouse
set mouse=a

" Typing key combos
set notimeout
set ttimeout

" ----------------------------------------------------------------------------
" Wild and file globbing stuff in command mode
" ----------------------------------------------------------------------------

" Binary
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.jar,*.pyc,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.webm
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
" Cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*.gem
set wildignore+=.sass-cache
set wildignore+=npm-debug.log
" Compiled
set wildignore+=*.marko.js
set wildignore+=*.min.*,*-min.*
" Temp/System
set wildignore+=*.*~,*~
set wildignore+=*.swp,.lock,.DS_Store,._*,tags.lock

" ----------------------------------------------------------------------------
" File saving
" ----------------------------------------------------------------------------

set fileformats=mac,unix,dos

" ----------------------------------------------------------------------------
" Window splitting and buffers
" ----------------------------------------------------------------------------

set splitbelow
set splitright

" ----------------------------------------------------------------------------
" Whitespace
" ----------------------------------------------------------------------------

set nowrap
" set nojoinspaces                      " J command doesn't add extra space

" ----------------------------------------------------------------------------
" Indenting - overridden by indent plugins
" ----------------------------------------------------------------------------

" For autoindent, use same spaces/tabs mix as previous line, even if
" tabs/spaces are mixed. Helps for docblock, where the block comments have a
" space after the indent to align asterisks
"
" The test case what happens when using o/O and >> and << on these:
"
"     /**
"      *
"
" Refer also to formatoptions+=o (copy comment indent to newline)
set nocopyindent

" Try not to change the indent structure on "<<" and ">>" commands. I.e. keep
" block comments aligned with space if there is a space there.
set nopreserveindent

" Smart detect when in braces and parens. Has annoying side effect that it
" won't indent lines beginning with '#'. Relying on syntax indentexpr instead.
" 'smartindent' in general is a piece of garbage, never turn it on.
set nosmartindent

" Global setting. I don't edit C-style code all the time so don't default to
" C-style indenting.
set nocindent

set clipboard+=unnamedplus
set history=1000

filetype plugin indent on

set shortmess+=I

" ============================================================================
" Neovim-only mappings
" ============================================================================

nnoremap <special> <A-k>      <C-w>k
nnoremap <special> <A-j>      <C-w>j
nnoremap <special> <A-h>      <C-w>h
nnoremap <special> <A-l>      <C-w>l

" ============================================================================
" Security
" ============================================================================

" Disallow unsafe local vimrc commands
" Leave down here since it trims local settings
set secure
