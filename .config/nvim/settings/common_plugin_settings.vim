" Coc settings -------------------- {{{
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" highlight current cursor symbol
autocmd CursorHold * silent call CocActionAsync('highlight')
" }}}

" CamelCaseMotion settings -------------------- {{{
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
" }}}

" Vista settings ------------------- {{{
let g:vista_default_executive = 'coc'

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
" }}}
