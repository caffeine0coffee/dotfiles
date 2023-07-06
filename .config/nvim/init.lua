---@diagnostic disable: undefined-global

vim.cmd("source ~/.vimrc")

-- VimScript Imports {{{
-- Settings
vim.cmd("source ~/.config/nvim/settings/basic_settings.vim")
vim.cmd("source ~/.config/nvim/settings/vimplug_plugin_list.vim")
vim.cmd("source ~/.config/nvim/settings/common_plugin_settings.vim")
vim.cmd("source ~/.config/nvim/settings/appearance_settings.vim")
-- Keymaps
vim.cmd("source ~/.config/nvim/keymaps/common_keymaps.vim")
vim.cmd("source ~/.config/nvim/keymaps/coc_keymaps.vim")
vim.cmd("source ~/.config/nvim/keymaps/space_keymaps.vim")
-- Utils
--vim.cmd("source ~/.config/nvim/util/coc_nvim_notify_integration.vim")
vim.cmd("source ~/.config/nvim/util/jsonc_auto_detection.vim")
-- }}}

-- Lua Imports {{{
-- Settings
vim.cmd("luafile ~/.config/nvim/settings/common_lua_plugin_settings.lua")
vim.cmd("luafile ~/.config/nvim/settings/my_commands.lua")
-- Keymaps
vim.cmd("luafile ~/.config/nvim/keymaps/dap_keymaps.lua")
-- }}}

-- Local Directory Actions {{{
-- Detect if cwd is secure_dir
-- list secure_dirs here
local secure_dirs = {
    "/home/caffeine/.config/nvim",
    "/home/caffeine/DevelopEnv/git_repos/research/ikulab-motion-viewer"
}
local is_secure_dir = false
for _, d in ipairs(secure_dirs) do
    if d == vim.fn.getcwd() then
        is_secure_dir = true
    end
end

-- Load local setting if cwd is secure_dir
if is_secure_dir and vim.fn.filereadable(".nvim/local_init.lua") == 1 then
    vim.cmd("luafile .nvim/local_init.lua")
end
--

-- Load Session.vim if exists and cwd is secure_dir
--if is_secure_dir and vim.fn.filereadable(".nvim/session.vim") == 1 then
    --vim.cmd("source .nvim/session.vim")
--end
-- }}}
