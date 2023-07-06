call plug#begin('~/.config/nvim/plugged')

" Frameworks ----------
Plug 'prabirshrestha/async.vim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-lua/plenary.nvim'
Plug 'rcarriga/nvim-notify'
Plug 'stevearc/dressing.nvim'

" Appeerence ----------
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'guns/xterm-color-table.vim'

" Syntax highlighting ----------
Plug 'fladson/vim-kitty'
Plug 'imsnif/kdl.vim'
Plug 'sheerun/vim-polyglot'

" IDE-Like ----------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-scripts/sessionman.vim'
Plug 'liuchengxu/vista.vim'
Plug 'stevearc/overseer.nvim'
"   dap
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-telescope/telescope-dap.nvim'
"   git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" NVim-Tree ----------
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

" Search ----------
Plug 'mileszs/ack.vim'
Plug 'brooth/far.vim'

" Primitive Vim Plugins ----------
Plug 'hecal3/vim-leader-guide'
Plug 'easymotion/vim-easymotion'
Plug 'psliwka/vim-smoothie'
Plug 'preservim/nerdcommenter'

" Toggle ----------
Plug 'akinsho/toggleterm.nvim'

" Improve Vim feature ----------
Plug 'famiu/bufdelete.nvim'
Plug 'kazhala/close-buffers.nvim'
Plug 'markonm/traces.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'chentoast/marks.nvim'
Plug 'tpope/vim-surround'

" Buffer / Window / Tab ----------
Plug 'gcmt/taboo.vim'

" Small Util ----------
Plug 'itchyny/vim-gitbranch'
Plug 'ton/vim-alternate'

call plug#end()
