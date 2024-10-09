return {
	"letieu/btw.nvim",
	enabled = true,
	config = function()
		require("btw").setup({
			text = "I use Neovim (BTW)",
		})
	end,
}
