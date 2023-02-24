local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', '<leader><space>', ':nohlsearch<CR>', opts)
map('n', 'gw', ':tabclose<CR>', opts)
