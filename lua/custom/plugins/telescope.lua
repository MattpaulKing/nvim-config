return {
	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			{ "nvim-telescope/telescope-smart-history.nvim" },
		},
		config = function()
			require("telescope").setup({
				extensions = {
					fzf = {},
					wrap_results = true,
				},
			})

			pcall(require("telescope").load_extension, "fzf")

			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>pf", builtin.find_files)
			vim.keymap.set("n", "<leader>pg", builtin.live_grep)
			vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find)

			vim.keymap.set("n", "<leader>en", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end)
		end,
	},
}
