---@diagnostic disable: undefined-global

vim.api.nvim_create_user_command(
    'MySaveSession',
    function()
        vim.cmd("NvimTreeClose")

        if vim.fn.isdirectory('.nvim') ~= 0 then
            vim.cmd("mksession! .nvim/session.vim")
        end
    end,
    {}
)
