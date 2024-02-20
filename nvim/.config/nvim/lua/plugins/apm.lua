return {
	{
		"theprimeagen/vim-apm",
		config = function()
			local apm = require("vim-apm")

			apm:setup({})
			vim.keymap.set("n", "<leader>apm", function()
				apm:toggle_monitor()
			end)
		end,
	},
	{
		"theprimeagen/vim-be-good",
		config = function()
			vim.keymap.set("n", "<leader>vbg", ":VimBeGood<CR>")
		end,
	},
}