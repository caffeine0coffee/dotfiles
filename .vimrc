" Settings {{{
" Basic ----------
set number
set title
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
set relativenumber
set list
set listchars=tab:│\ ,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set hidden
set mouse=a
set smartcase
set incsearch
set wrapscan
set hlsearch
set noswapfile
set breakindent
set nobackup
set nowritebackup
" ESC immidiately
set ttimeoutlen=10

" TAB ----------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

" Language Specific Settings ----------
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.sh setlocal expandtab!
augroup END

colorscheme elflord

" fold state auto save ----------
" Save fold settings
autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent! loadview | endif
" Don't save options.
set viewoptions-=options
" }}}

" Key Bindings {{{
" Basic ----------
nn <silent> j gj
xn <silent> j gj
nn <silent> k gk
xn <silent> k gk
nn L $
xn L $
nn H 0
xn H 0
nn <S-+> +
nn <silent> x "_x
xn <silent> x "_x
nn <silent> D "_D
nn <silent> s "_s
nn <silent> S "_S
nn <silent> <Esc><Esc> :nohlsearch<CR><Esc>
" line move
nn <A-Down> ddp
nn <A-Up> ddkP

" Leader Key ----------
nn <leader>q H
nn <leader>a M
nn <leader>z L

" Short Scroll ----------
nn <C-Y> 5<C-Y>
nn <C-E> 5<C-E>

" default to Very Magic ----------
nn / /\v\c
cno s/ s/\v\c

" Disable Mouse Click
nn  <LeftMouse> <nop>
ino <LeftMouse> <nop>
" }}}

" Custom Commands {{{
command! W :wall
command! Q :wqall
" }}}

" External Command {{{
" ESC to disable Japanese Input
if executable('fcitx5')
   autocmd InsertLeave * :call system('fcitx5-remote -c')
   autocmd CmdlineLeave * :call system('fcitx5-remote -c')
endif
" }}}
