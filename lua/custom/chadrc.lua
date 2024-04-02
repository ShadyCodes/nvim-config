---@type ChadrcConfig
local M = {}

M.ui = { theme = 'monekai' }
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

vim.cmd [[ nmap <leader>cg :Generate implementations<CR> ]]
return M
