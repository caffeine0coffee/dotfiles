---@diagnostic disable: undefined-global
local dap = require('dap')
local dapui = require('dapui')

local function setkey(key, action, modes)
    modes = modes or 'n'
    vim.keymap.set(modes, key, action)
end

setkey('<F5>', function() dap.continue() end)
setkey(
    '<S-F5>',
    function()
        dap.close()
        dapui.close()
    end
)
setkey('<F9>', function() dap.toggle_breakpoint() end)
setkey('<F10>', function() dap.step_over() end)
setkey('<S-F10>', function() dap.run_to_cursor() end)
setkey('<F11>', function() dap.step_into() end)
setkey('<S-F11>', function() dap.step_out() end)

setkey(
    '<C-S-F>',
    function()
        require('dapui').eval(nil, { enter = true })
    end,
    { 'n', 'v' }
)
setkey(
    '<C-S-G>',
    function()
        local wid = require('dap.ui.widgets')
        wid.centered_float(wid.frames)
    end
)
