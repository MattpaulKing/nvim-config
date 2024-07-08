return {
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
			local my_fugitive = vim.api.nvim_create_augroup("my_fugitive", {})
			local autocmd = vim.api.nvim_create_autocmd
			autocmd("BufWinEnter", {
				group = my_fugitive,
				pattern = "*",
				callback = function()
					if vim.bo.ft ~= "fugitive" then
						return
					end
				end,
			})
		end,
	},
}
