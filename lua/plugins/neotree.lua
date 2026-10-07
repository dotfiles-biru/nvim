return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	opts = {
		-- auto-session nyimpen buffer neo-tree palsu di session file;
		-- hapus pas restore biar gak E95 (github.com/nvim-neo-tree/neo-tree.nvim/issues/1365)
		auto_clean_after_session_restore = true,
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false, -- neo-tree will lazily load itself
}
