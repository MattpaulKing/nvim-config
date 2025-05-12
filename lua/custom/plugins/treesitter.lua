return {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"html",
					"php_only",
					"php",
					"bash",
					"css",
					"javascript",
					"lua",
					"c",
					"c_sharp",
					"cmake",
					"cpp",
					"dockerfile",
					"git_config",
					"git_rebase",
					"go",
					"vue",
					"xml",
					"yaml",
					"toml",
					"sql",
					"scss",
					"sxhkdrc",
					"rust",
					"svelte",
					"ssh_config",
					"vim",
					"xml",
					"yuck",
					"typescript",
					"markdown_inline",
				}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
				modules = {},
				sync_install = true,
				auto_install = true,
				ignore_install = {},
				highlight = {
					enable = true, -- false will disable the whole extension
					disable = {
						-- 'vue',
					},
				},
				indent = {
					enable = true,
					disable = {
						-- "python",
						-- "html",
						-- "javascript",
						-- "php",
					},
				},
				playground = {
					enable = true,
					disable = {},
					updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
					persist_queries = false, -- Whether the query persists across vim sessions
				},
				-- autotag = {
				-- 	enable = true,
				-- 	enable_rename = true,
				-- 	enable_close = true,
				-- 	enable_close_on_slash = true,
				-- },
				context_commentstring = {
					enable = true,
					config = {
						javascriptreact = {
							style_element = "{/*%s*/}",
						},
					},
				},
				refactor = {
					highlight_definitions = { enable = true },
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<Leader>,s",
						node_incremental = "<Leader>,s",
						scope_incremental = "<Leader>,c",
						node_decremental = "<Leader>,d",
					},
				},
			})

			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

			parser_config.blade = {
				install_info = {
					url = "https://github.com/EmranMR/tree-sitter-blade",
					files = { "src/parser.c" },
					branch = "main",
				},
				filetype = "blade",
			}

			vim.filetype.add({
				pattern = {
					[".*%.blade%.php"] = "blade",
				},
			})

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
				pattern = { "*.norg" },
				command = "set conceallevel=3",
			})

			-- require("nvim-treesitter.configs").setup({
			--
			-- 	ensure_installed = {
			-- 		"javascript",
			-- 		"typescript",
			-- 		"svelte",
			-- 		"c",
			-- 		"lua",
			-- 		"sql",
			-- 		"vim",
			-- 		"vimdoc",
			-- 		"query",
			-- 		"php",
			-- 	},
			-- 	sync_install = false,
			--
			-- 	-- Automatically install missing parsers when entering buffer
			-- 	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			-- 	auto_install = false,
			--
			-- 	autotag = {
			-- 		enable = true,
			-- 		enable_rename = true,
			-- 		enable_close = true,
			-- 		filetypes = { "html", "svelte", "typescript", "javascript", "php" },
			-- 	},
			--
			-- 	highlight = {
			-- 		enable = true,
			--
			-- 		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
			-- 		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
			-- 		-- Using this option may slow down your editor, and you may see some duplicate highlights.
			-- 		-- Instead of true it can also be a list of languages
			-- 		additional_vim_regex_highlighting = false,
			-- 	},
			-- })
			--
			-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			--
			-- parser_config.blade = {
			-- 	install_info = {
			-- 		url = "https://github.com/EmranMR/tree-sitter-blade",
			-- 		files = { "src/parser.c" },
			-- 		branch = "main",
			-- 	},
			-- 	filetype = "blade",
			-- }
			--
			-- vim.filetype.add({
			-- 	pattern = {
			-- 		[".*%.blade%.php"] = "blade",
			-- 	},
			-- })
		end,
	},
}
