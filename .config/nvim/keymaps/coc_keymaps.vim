" Basic keyboard shortcuts ----------
" rename
nmap <F12> <Plug>(coc-rename)

" Formatting selected code
nnoremap <C-S-i> <Plug>(coc-format)
inoremap <silent> <C-S-i> <Esc>:call CocAction("format")<CR>

" Quickfix / CodeAction
nmap <leader>fa <Plug>(coc-codeaction)
nmap <leader>fq <Plug>(coc-fix-current)


" completion ----------
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" select
inoremap <silent><expr> <C-s>
      \ coc#pum#visible() ? "\<C-s>" :
      \ CheckBackspace() ? "\<C-s>" :
      \ coc#refresh()

" accept
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"

" Jump / Analyze ----------
" diagnosis
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <C-S-m> <Esc>:CocDiagnostics<CR>

" definition jump
"   no-mod -> open in current window
"   Shift  -> open in new vsplit window
"   Ctrl   -> open in new tab
nn <F12> <Cmd>call CocAction("jumpDefinition", "edit")<CR>
nn <S-F12> <Cmd>call CocAction("jumpDefinition", "botright vs")<CR>
nn <C-F12> <Cmd>call CocAction("jumpDefinition", "tabnew")<CR>

" documentation
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

nnoremap <silent> <C-S-d> :call ShowDocumentation()<CR>

" Map function and class text objects ----------
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups. ----------
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
