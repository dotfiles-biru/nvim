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

-- debugging
map("n", "<F5>", function()
	require("dap").continue()
end)
map("n", "<F10>", function()
	require("dap").step_over()
end)
map("n", "<F11>", function()
	require("dap").step_into()
end)
map("n", "<F12>", function()
	require("dap").step_out()
end)
map("n", "<Leader>b", function()
	require("dap").toggle_breakpoint()
end)
map("n", "<Leader>B", function()
	require("dap").set_breakpoint()
end)
map("n", "<Leader>lp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
map("n", "<Leader>dr", function()
	require("dap").repl.open()
end)
map("n", "<Leader>dl", function()
	require("dap").run_last()
end)
map({ "n", "v" }, "<Leader>dh", function()
	require("dap.ui.widgets").hover()
end)
map({ "n", "v" }, "<Leader>dp", function()
	require("dap.ui.widgets").preview()
end)
map("n", "<Leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end)
map("n", "<Leader>ds", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)
