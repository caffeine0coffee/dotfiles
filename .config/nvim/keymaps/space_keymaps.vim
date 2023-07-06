" Shortcuts start from <space> and LeaderGuide settings
let g:lgdict = {}

" Find {{{
let g:lgdict.f = {'name': 'Find...'}
  let g:lgdict.f.f = ['Telescope current_buffer_fuzzy_find', 'Fuzzy Find in Current Buf']
  let g:lgdict.f.m = ['Telescope marks', 'Marks']
  let g:lgdict.f.s = ['CocList symbols', 'Symbols']
  let g:lgdict.f.h = ['Telescope help_tags', 'Help']
" }}}

" Goto... {{{
let g:lgdict.g = {'name': 'Goto...'}
  let g:lgdict.g.d = {'name': 'Definition in...'}
    let g:lgdict.g.d.c = ['call CocAction("jumpDefinition", "edit")', 'Current Window']
    let g:lgdict.g.d.v = ['call CocAction("jumpDefinition", "botright vs")', 'VSplit Window']
    let g:lgdict.g.d.t = ['call CocAction("jumpDefinition", "tabnew")', 'New Tab']
  let g:lgdict.g.i = {'name': 'Implementation in...'}
    let g:lgdict.g.i.c = ['call CocAction("jumpImplementation", "edit")', 'Current Window']
    let g:lgdict.g.i.v = ['call CocAction("jumpImplementation", "botright vs")', 'VSplit Window']
    let g:lgdict.g.i.t = ['call CocAction("jumpImplementation", "tabnew")', 'New Tab']
  let g:lgdict.g.r = {'name': 'Reference in...'}
    let g:lgdict.g.r.c = ['call CocAction("jumpReference", "edit")', 'Current Window']
    let g:lgdict.g.r.v = ['call CocAction("jumpReference", "botright vs")', 'VSplit Window']
    let g:lgdict.g.r.t = ['call CocAction("jumpReference", "tabnew")', 'New Tab']
  let g:lgdict.g.u = {'name': 'Used in...'}
    let g:lgdict.g.u.c = ['call CocAction("jumpUsed", "edit")', 'Current Window']
    let g:lgdict.g.u.v = ['call CocAction("jumpUsed", "botright vs")', 'VSplit Window']
    let g:lgdict.g.u.t = ['call CocAction("jumpUsed", "tabnew")', 'New Tab']
" }}}

" Tasks {{{
let g:lgdict.j = {'name': 'Tasks...'}
  let g:lgdict.j.r = ['OverseerRun', 'Run']
" }}}

" Open {{{
let g:lgdict.o = {'name': 'Open...'}
  let g:lgdict.o.r = ['Telescope oldfiles', 'Recent File']
  let g:lgdict.o.t = ['NvimTreeClose | ToggleTerm', 'ToggleTerm']
  let g:lgdict.o.l = ['Telescope builtin', 'Telescope Builtins']
" }}}

" Plugin {{{
let g:lgdict.p = {'name': 'Plugin...'}
  let g:lgdict.p.i = ['PlugInstall', 'Install']
  let g:lgdict.p.c = ['PlugClean', 'Clean']
" }}}

" Tab {{{
let g:lgdict.t = {'name': 'Tab...'}
  let g:lgdict.t.n = ['tabnew', 'New Tab']
  let g:lgdict.t.o = ['call feedkeys("\<ESC>:TabooOpen ")', 'New Named']
  let g:lgdict.t.r = ['call feedkeys("\<ESC>:TabooRename ")', 'Rename']
  let g:lgdict.t.m = ['if expand("%") == "" | tabnew | else | tabedit % | endif', 'Move % to New Tab']
  let g:lgdict.t.s = ['TabooReset', 'Reset']
" }}}

" Window {{{
let g:lgdict.w = {'name': 'Window...'}
  let lgdict.w.h = ['call feedkeys("\<C-w>H", "n")', 'Move Left']
  let lgdict.w.j = ['call feedkeys("\<C-w>J", "n")', 'Move Down']
  let lgdict.w.k = ['call feedkeys("\<C-w>K", "n")', 'Move Up']
  let lgdict.w.l = ['call feedkeys("\<C-w>L", "n")', 'Move Right']
  let lgdict.w.t = ['call feedkeys("\<C-w>T", "n")', 'Move New Tab']
  let lgdict.w.v = ['call feedkeys("\<C-w>v", "n")', 'Split Vert']
  let lgdict.w.s = ['call feedkeys("\<C-w>s", "n")', 'Split Horiz']
  let lgdict.w.c = ['call feedkeys("\<C-w>c", "n")', 'Close']
" }}}

" Settings {{{
let g:lgdict[','] = {'name': 'Settings...'}
  let g:lgdict[','].n = ['e ~/.config/nvim/init.lua', 'Config Nvim (init.lua)']
  let g:lgdict[','].v = ['e ~/.vimrc', 'Config Vim (.vimrc)']
  let g:lgdict[','].cc = ['CocConfig', 'Config Coc (coc-config.json)']
  let g:lgdict[','].cr = ['CocRestart', 'Restart Coc']
  let g:lgdict[','].s = ['so ~/.config/nvim/init.lua', 'Source Settings']
" }}}

" Single keymaps {{{
"   select buffer
let g:lgdict['<Tab>'] = ['Telescope buffers', 'Select Buffer']
let g:lgdict.q        = ['wqall', 'Quit']
let g:lgdict.c        = ['lua require("close_buffers").delete({ type = "nameless" })', 'Close Nameless Buffers']
let g:lgdict.s        = ['MySaveSession', 'Save Session']
" }}}

call leaderGuide#register_prefix_descriptions("<Space>", "g:lgdict")
nnoremap <space> <Cmd>LeaderGuide '<Space>'<CR>
vnoremap <space> <Cmd>LeaderGuideVisual '<Space>'<CR>
