local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', '<leader><space>', ':nohlsearch<CR>', opts)
map('n', 'gw', ':tabclose<CR>', opts)
vim.cmd('ca tn tabnew')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
