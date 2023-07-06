" Basic Vim features -------------------- {{{
nn <C-g> `
" }}}

" Edit -------------------- {{{
" toggle comment
let g:NERDCreateDefaultMappings = 0
no  <C-_> <Plug>NERDCommenterToggle
" }}}

" Buffer -------------------- {{{
" switch buffer
nn <silent> <C-A-h> <Cmd>bprev<CR>
nn <silent> <C-A-l> <Cmd>bnext<CR>
" delete buffer
nn <silent> <C-A-w> <Cmd>Bdelete<CR>
" }}}

" Window -------------------- {{{
" close window
nn <C-S-w> <C-w>c
" switch window
nn <silent> <C-S-h> <C-w>h
nn <silent> <C-S-j> <C-w>j
nn <silent> <C-S-k> <C-w>k
nn <silent> <C-S-l> <C-w>l
" modify window size
nn <A-=> 10<C-w>>
nn <A--> 10<C-w><
nn <A-_> 3<C-w>-
nn <A-+> 3<C-w>+
" alternate of default vim's Ctrl-W
nn <C-q> <C-w>
" }}}

" Tab -------------------- {{{
" switch tab
nn <C-h> <Cmd>tabp<CR>
nn <C-l> <Cmd>tabn<CR>
" move tab
nn <A-h> <Cmd>-tabm<CR>
nn <A-l> <Cmd>+tabm<CR>
" close
nn <C-w> <Cmd>tabc<CR>
" }}}

" Find / Search -------------------- {{{
" open file
nn <C-p> <Cmd>Telescope find_files<CR>
" find file by content
nn <silent><A-/> <Cmd>Telescope live_grep<CR>
" search commands
nn <C-S-p> <Cmd>Telescope commands<CR>
" command history
nn <A-p> <Cmd>Telescope command_history<CR>
" disable highlight
nn <C-S-n> <Cmd>nohlsearch<CR><Cmd>:lua require('notify').dismiss()<CR>
" }}}

" View -------------------- {{{
" file tree
nn <silent> <C-S-e> <Cmd>NvimTreeToggle<CR>
" outline
nn <silent> <C-S-o> <Cmd>Vista!!<CR>
" }}}

" Focus -------------------- {{{
" leave toggle-term
tno <C-S-d> <Cmd>ToggleTerm<CR>
" enter normal mode in terminal
tno <C-S-q> <C-\><C-N>
" }}}

" Code Action -------------------- {{{
nn <F2> <Plug>(coc-rename)
nn <A-o> <Cmd>Alternate<CR>
" }}}

" Trigger -------------------- {{{
" easy motion
map <leader> <Plug>easymotion-prefix
" }}}
