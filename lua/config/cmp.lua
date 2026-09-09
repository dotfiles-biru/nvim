local cmp = require("cmp")
local luasnip = require("luasnip")

return {
	["<C-n>"] = cmp.mapping.select_next_item(),
	["<C-p>"] = cmp.mapping.select_prev_item(),

	["<CR>"] = cmp.mapping.confirm({
		select = true,
	}),

	["<C-Space>"] = cmp.mapping.complete(),

	["<Tab>"] = cmp.mapping(function(fallback)
		if cmp.visible() then
			cmp.select_next_item()
		elseif luasnip.expand_or_jumpable() then
			luasnip.expand_or_jump()
		else
			fallback()
		end
	end, { "i", "s" }),

	["<S-Tab>"] = cmp.mapping(function(fallback)
		if cmp.visible() then
			cmp.select_prev_item()
		elseif luasnip.jumpable(-1) then
			luasnip.jump(-1)
		else
			fallback()
		end
	end, { "i", "s" }),
}
