---@diagnostic disable: undefined-global

-- Nvim-Tree  -------------------- {{{
--nvim-tree.tab.sync.close
require("nvim-tree").setup({
    view = {
        side = "right",
    },
    git = {
        ignore = false,
    },
    tab = {
        sync = { close = true, }
    },
    sync_root_with_cwd = false,
    respect_buf_cwd = false,
    update_focused_file = {
        enable = true,
        update_root = true
    },
})
-- }}}

-- Marks -------------------- {{{
require('marks').setup({})
-- }}}

-- Telescope Settings -------------------- {{{
local actions = require("telescope.actions")
require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close
            },
        },
    }
}
-- }}}

-- ToggleTerm Settings -------------------- {{{
require("toggleterm").setup {
    direction = 'vertical',
    size = 80
}
-- }}}

-- Overseer -------------------- {{{
require("overseer").setup({
    templates = {}
})
-- }}}

-- Dressing -------------------- {{{
require('dressing').setup({})
-- }}}

-- Notify -------------------- {{{
require('notify').setup({
    stages = "fade",
    timeout = 3000,
    top_down = false,
})
vim.notify = require("notify")
-- }}}

-- DAP -------------------- {{{
local dap = require('dap')
dap.defaults.fallback.terminal_win_cmd = 'tabnew'

local signdef = vim.fn.sign_define
signdef('DapBreakpoint', { text = '🔴', texthl = '', linehl = '', numhl = '' })
signdef('DapBreakpointCondition', { text = '🔧', texthl = '', linehl = '', numhl = '' })
signdef('DapLogPoint', { text = '📝', texthl = '', linehl = '', numhl = '' })
signdef('DapStopped', { text = '👉', texthl = '', linehl = '', numhl = '' })
signdef('DapBreakpointRejected', { text = '🔵', texthl = '', linehl = '', numhl = '' })

require('telescope').load_extension('dap')

-- DAP ui
local dapui = require('dapui')
dapui.setup({
    layouts = {
        {
            elements = {
                {
                    id = "watches",
                    size = 0.2
                },
                {
                    id = "scopes",
                    size = 0.8
                },
            },
            position = "right",
            size = 80
        },
        {
            elements = {
                {
                    id = "console",
                    size = 1.0
                },
            },
            position = "bottom",
            size = 10
        }
    },
})

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end
-- }}}
