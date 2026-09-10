return {
	"Aejkatappaja/sora",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme sora")
		require("sora").setup({
			transparent = true, -- transparent background (also strips float/statusline bg)
			italic = true, -- italics globally
			italic_comments = false, -- italics for comments (ignored if italic = false)
			on_highlights = function(hl, colors)
				hl.Comment = { fg = colors.fg_comment, italic = true }
				hl.LineNr = { fg = colors.fg_gutter }
				hl.CursorLineNr = { fg = colors.cyan, bold = true }
				hl.FloatBorder = { fg = colors.border, bg = colors.bg_float }
			end, -- override highlight groups after they build
			on_colors = function(colors)
				colors.bg = "#000000"
				colors.bg_float = "#000000"
				colors.bg_statusline = "#000000"
				colors.func = "#a0d8f0" -- brighter functions
				colors.string = colors.sage
			end,
		})
	end,
}
