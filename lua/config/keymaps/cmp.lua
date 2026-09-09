local cmp = require("cmp")

return {
	["<C-b>"] = cmp.mapping.scroll_docs(-4),
	["<C-f>"] = cmp.mapping.scroll_docs(4),

	["<C-n>"] = cmp.mapping.select_next_item(),
	["<C-p>"] = cmp.mapping.select_prev_item(),

	["<CR>"] = cmp.mapping.confirm({
		select = true,
	}),

	["<C-Space>"] = cmp.mapping.complete(),
	["<C-e>"] = cmp.mapping.abort(),
}
