return {
	{
		"folke/tokyonight.nvim",
		dependencies = {
			{ "nvim-lualine/lualine.nvim" },
			{ "nvim-tree/nvim-web-devicons" },
		},
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			require("tokyonight").setup({
				transparent = true,
				style = "night",
				on_highlights = function(hl, c)
					hl.TelescopeNormal = {
						bg = "none",
						fg = c.fg_dark,
					}
					hl.TelescopeBorder = {
						bg = "none",
						fg = c.fg_dark,
					}
					hl.TelescopePromptNormal = {
						bg = "none",
						fg = c.fg_dark,
					}
					hl.TelescopePromptBorder = {
						bg = "none",
						fg = c.fg_dark,
					}
					hl.TelescopePromptTitle = {
						bg = "none",
						fg = c.fg_dark,
					}
					hl.TelescopePreviewTitle = {
						bg = c.bg_dark,
						fg = c.fg_dark,
					}
					hl.TelescopeResultsTitle = {
						bg = c.bg_dark,
						fg = c.fg_dark,
					}
				end,
			})
			require("lualine").setup({
				options = {
					{ theme = "tokyonight" },
				},
				sections = {
					lualine_c = {
						{
							"filename",
							path = 4,
							shorting_target = 100,
						},
					},
				},
			})
			vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
		end,
	},
}