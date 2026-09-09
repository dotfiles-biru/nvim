return {
	{
		"mason-org/mason.nvim",
		opts = {},
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", -- lua
					"ts_ls", -- typescript
					"docker_compose_language_service", -- docker compose
					"docker_language_server", -- dockerfile
					"dockerls", -- docker
					"eslint", -- javascript & typescript
					"gopls", -- go
					"rust_analyzer", -- rust
					"shuck", -- bash & sh
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.enable("lua_ls")
		end,
	},
}
