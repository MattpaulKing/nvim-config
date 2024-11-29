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
-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		priority = 1000,
-- 		dependencies = {
-- 			{ "nvim-lualine/lualine.nvim" },
-- 			{ "nvim-tree/nvim-web-devicons" },
-- 		},
-- 		config = function()
-- 			require("catppuccin").setup({
-- 				flavour = "macchiato",
-- 				transparent_background = true,
-- 				default_integrations = true,
-- 				integrations = {
-- 					cmp = true,
-- 					gitsigns = true,
-- 					nvimtree = true,
-- 					treesitter = true,
-- 					notify = false,
-- 					harpoon = true,
-- 					mini = {
-- 						enabled = true,
-- 						indentscope_color = "",
-- 					},
-- 					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
-- 				},
-- 			})
-- 			require("lualine").setup({
-- 				options = {
-- 					theme = "catppuccin",
-- 				},
-- 			})
-- 		end,
-- 	},
-- }
