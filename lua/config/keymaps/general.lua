local map = vim.keymap.set

vim.g.maploader = " "

-- nvim-lspconfig
map("n", "K", vim.lsp.buf.hover, {})
map("n", "gd", vim.lsp.buf.definition, {})
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- neo-tree
map("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
map("n", "<C-b>", ":Neotree close<CR>", {})

-- telescope
local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- none-ls
map("n", "<leader>gf", vim.lsp.buf.format, {})
