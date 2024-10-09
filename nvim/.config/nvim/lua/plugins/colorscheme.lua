return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = true,
				extend_background_behind_borders = false,

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				highlight_groups = {
					-- Comment = { fg = "foam" },
					-- VertSplit = { fg = "muted", bg = "muted" },
				},

				before_highlight = function(group, highlight, palette)
					-- Disable all undercurls
					-- if highlight.undercurl then
					--     highlight.undercurl = false
					-- end
					--
					-- Change palette colour
					-- if highlight.fg == palette.pine then
					--     highlight.fg = palette.foam
					-- end
				end,
			})
		end,
	},
	{
		"NTBBloodbath/doom-one.nvim",
		name = "doom-one",
		enabled = "false",
		config = function()
			vim.g.doom_one_cursor_coloring = true
			vim.g.doom_one_terminal_colors = true
			vim.g.doom_one_italic_comments = true
			vim.g.doom_one_enable_treesitter = true
			vim.g.doom_one_diagnostics_text_color = false
		end,
	},
	{
		"letieu/btw.nvim",
		config = function()
			--require("btw").setup()
		end,
	},
	{
		{
			"scottmckendry/cyberdream.nvim",
			lazy = false,
			priority = 1000,
			config = function()
				require("cyberdream").setup({
					-- Recommended - see "Configuring" below for more config options
					transparent = true,
					italic_comments = true,
					hide_fillchars = true,
					borderless_telescope = false,
					terminal_colors = true,
					theme = {
						hightlights = {},
					},
				})
				vim.cmd("colorscheme cyberdream") -- set the colorscheme
			end,
		},
	},
}
