local floats = {
	"Float",
	"NormalFloat",
	"TelescopePromptNormal",
	"TelescopeResultsNormal",
	"TelescopePreviewNormal",
	"HarpoonWindow",
}

local float_borders = {
	"NormalFloatBorder",
	"FloatBorder",
	"TelescopeBorder",
	"HarpoonBorder",
}

local custom_bg = "#282c34"
local custom_border = "#51AFEF"
--local custom_bg = "#1f1d2e"
--local custom_border = "#9ccfd8"

function ColorMyPencils(color)
	color = color
	local transparent_bg = true
	local custom_float_colors = false

	vim.cmd.colorscheme(color)
	if transparent_bg == true and custom_float_colors == false then
		for key, value in pairs(floats) do
			vim.api.nvim_set_hl(0, value, { bg = "none" })
		end
		for key, value in pairs(float_borders) do
			vim.api.nvim_set_hl(0, value, { fg = custom_border, bg = "none" })
		end
	end
	if transparent_bg == false and custom_float_colors == true then
		for key, value in pairs(float_borders) do
			vim.api.nvim_set_hl(0, value, { fg = custom_border })
		end
	end
	if transparent_bg == true then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		--vim.api.nvim_set_hl(0, "LineNrAbove", { bg = custom_bg, fg = "gray" })
		--vim.api.nvim_set_hl(0, "CursorLineNr", { bg = custom_bg, fg = custom_border })
		--vim.api.nvim_set_hl(0, "LineNrBelow", { bg = custom_bg, fg = "gray" })
		vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "none", fg = "gray" })
		vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = custom_border })
		vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "none", fg = "gray" })
	end
	if custom_float_colors == true then
		for key, value in pairs(floats) do
			vim.api.nvim_set_hl(0, value, { bg = custom_bg })
		end
		for key, value in pairs(float_borders) do
			vim.api.nvim_set_hl(0, value, { fg = custom_border, bg = custom_bg })
		end
	end
end

--ColorMyPencils("doom-one")
--ColorMyPencils("cyberdream")
