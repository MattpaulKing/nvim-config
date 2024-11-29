return {
	"samharju/yeet.nvim",
	dependencies = {
		"stevearc/dressing.nvim", -- optional, provides sane UX
	},
	version = "*", -- update only on releases
	cmd = "Yeet",
	opts = {},
	keys = {
		{
			"<leader>ye",
			function()
				require("yeet").list_cmd()
			end,
		},
		{
			"<leader>yt",
			function()
				require("yeet").select_target()
			end,
			desc = "select target",
		},
	},
}
