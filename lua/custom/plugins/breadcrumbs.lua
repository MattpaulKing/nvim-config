return {
	{
		"Bekaboo/dropbar.nvim",
		-- optional, but required for fuzzy finder support
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
		},
		config = function()
			local dropbar = require("dropbar.api")
			vim.keymap.set("n", "<leader>b", function()
				dropbar.pick()
			end)
		end,
		opts = {},
	},
}
