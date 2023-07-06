" color scheme setting -------------------- {{{
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" bold and italic support
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" Theme
syntax enable
colorscheme OceanicNext
hi NonText ctermfg=238 guifg=#444444

" transparent BG
if $VIMRC_OPTION_TRANSPARENT_BG == 1
    highlight Normal ctermbg=none guibg=none
    highlight NonText ctermbg=none guibg=none
    highlight LineNr ctermbg=none guibg=none
    highlight Folded ctermbg=none guibg=none
    highlight EndOfBuffer ctermbg=none guibg=none
endif
" }}}

" airline setting -------------------- {{{

set laststatus=2
let g:airline_theme = 'oceanicnext'

let g:airline#extensions#tabline#enabled = 1

" Sections -------------------- {{{
" Default vaules:
" let g:airline_section_a       (mode, crypt, paste, spell, iminsert)
" let g:airline_section_b       (hunks, branch)[*]
" let g:airline_section_c       (bufferline or filename, readonly)
" let g:airline_section_gutter  (csv)
" let g:airline_section_x       (tagbar, filetype, virtualenv)
" let g:airline_section_y       (fileencoding, fileformat, 'bom', 'eol')
" let g:airline_section_z       (percentage, line number, column number)
" let g:airline_section_error   (ycm_error_count, syntastic-err, eclim,
"                                languageclient_error_count)
" let g:airline_section_warning (ycm_warning_count, syntastic-warn,
"                                languageclient_warning_count, whitespace)

let g:airline_section_b = ' %{gitbranch#name()}'
let g:airline_section_z = 'Ξ %l/%L'
" }}}

" Symbols -------------------- {{{
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1

" separator ----------
"                                   
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Misc ----------
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
" }}}

" }}}
