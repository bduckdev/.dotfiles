return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = false,

				styles = {
					bold = true,
					italic = true,
					transparency = true,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "none",

					error = "love",
					hint = "iris",
					info = "foam",
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

					headings = {
						h1 = "iris",
						h2 = "foam",
						h3 = "rose",
						h4 = "gold",
						h5 = "pine",
						h6 = "foam",
					},
					-- Alternatively, set all headings at once.
					-- headings = "subtle",
				},

				highlight_groups = {
					--					Comment = { fg = "foam" },
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

			vim.cmd("colorscheme rose-pine")
			-- vim.cmd('colorscheme rose-pine-main')
			-- vim.cmd('colorscheme rose-pine-moon')
			-- vim.cmd('colorscheme rose-pine-dawn')
			--            vim.o.termguicolors = true
			vim.cmd("highlight! HarpoonInactive guibg=NONE guifg=#63698c")
			vim.cmd("highlight! HarpoonActive guibg=NONE guifg=white")
			vim.cmd("highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7")
			vim.cmd("highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7")
			vim.cmd("highlight! TabLineFill guibg=NONE guifg=white")
		end,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		config = function()
			vim.g.tokyonight_style = "night"
			vim.g.tokyonight_italic_functions = true
			vim.g.tokyonight_italic_variables = true
			--vim.cmd("colorscheme tokyonight")
		end,
	},
	{
		"shaunsingh/nord.nvim",
		name = "nord",
		config = function()
			--vim.cmd("colorscheme nord")
		end,
	},
	{
		"Mofiqul/dracula.nvim",
		name = "dracula",
		config = function()
			local dracula = require("dracula")
			dracula.setup({
				italics = {
					comments = true,
					keywords = true,
					functions = true,
					strings = true,
					variables = true,
				},
				transparent_bg = true,
				enable_treesitter = true,
				enable_terminal = true,
			})
			--vim.cmd("colorscheme dracula")
		end,
	},
}
