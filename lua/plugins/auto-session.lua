return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			auto_session_last_session_dir = vim.fn.stdpath("data") .. "/sessions/",
			auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
			auto_session_enabled = true,
			log_level = vim.log.levels.ERROR,
			auto_session_suppress_dirs = { "~/", "~/projects", "~/Downloads", "/" },
			auto_save_enabled = true,
			auto_session_create_enabled = true,
			session_lens = {
				buftypes_to_ignore = {},
				load_on_setup = true,
				theme_conf = { border = true },
				previewer = false,
			},
		})

	end,

	---enables autocomplete for opts
	---@module "auto-session"
	---@type AutoSession.Config
	opts = {
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
		-- log_level = 'debug',
	},
}
