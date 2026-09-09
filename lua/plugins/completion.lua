return {
	{
		"hrsh7th/nvim-cmp",

		dependencies = {
			{
				"L3MON4D3/LuaSnip",
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
				end,
			},
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-nvim-lsp",
		},

		config = function()
			local cmp = require("cmp")
      local cmp_keymaps = require("config.keymaps.cmp")



			cmp.setup({
        mapping = cmp.mapping.preset.insert(cmp_keymaps),
				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				},
			})
		end,
	},
}
