local map = vim.keymap.set

vim.g.maploader = " "

-- nvim-lspconfig
map('n', 'K', vim.lsp.buf.hover, {})
map('n', 'gd', vim.lsp.buf.definition, {})
map({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

-- neo-tree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


