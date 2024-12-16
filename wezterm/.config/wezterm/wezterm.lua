local wezterm = require("wezterm")
--local colors = require("lua/rose-pine").colors()
local background = require("lua/background")
local colors = require("lua/cyberdream")
--local colors = require("lua/doom-one")
local keys = require("lua/keys")
local sessionizer = wezterm.plugin.require("https://github.com/mikkasendke/sessionizer.wezterm")

local config = {
	font = wezterm.font("JetBrains Mono"),
	font_size = 16,
	max_fps = 120,
	enable_tab_bar = false,
	enable_scroll_bar = false,
	line_height = 1.15,
	colors = colors,
	background = background,
	--   leader = { key = "b", mods = "CTRL", timeout_milliseconds = 2000 },
	--    keys = keys,
	--	color_scheme = "Galaxy",
	--color_scheme = "Campbell (Gogh)",
	--color_scheme = "Kanagawa (Gogh)",
	--color_scheme = "Gruvbox (Gogh)",
	--color_scheme = "Catppuccin Macchiato",
	dpi = 96.0,
	hide_mouse_cursor_when_typing = true,
	hide_tab_bar_if_only_one_tab = false,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	tab_and_split_indices_are_zero_based = false,
	window_background_opacity = 1.8,
	window_padding = {
		left = 12,
		right = 12,
		top = 12,
		bottom = 12,
	},
    --[[
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
    ]]
	default_prog = { "/usr/bin/zsh" },
}

function IncreaseZoom(zoom)
	zoom = 5
	for i = 1, 5 do
		wezterm.action.IncreaseFontSize()
	end
end

wezterm.on("update-right-status", function(window, _)
	local SOLID_LEFT_ARROW = ""
	local ARROW_FOREGROUND = { Foreground = { Color = "#c6a0f6" } }
	local prefix = ""

	if window:leader_is_active() then
		prefix = " " .. utf8.char(0x1f30a) -- ocean wave
		SOLID_LEFT_ARROW = utf8.char(0xe0b2)
	end

	if window:active_tab():tab_id() ~= 0 then
		--ARROW_FOREGROUND = { Foreground = { Color = "#1e2030" } }
		ARROW_FOREGROUND = { Foreground = { Color = "#b6bdf8" } }
	end -- arrow color based on if tab is first pane

	window:set_left_status(wezterm.format({
		{ Background = { Color = "#b7bdf8" } },
		{ Text = prefix },
		ARROW_FOREGROUND,
		{ Text = SOLID_LEFT_ARROW },
	}))
end)

sessionizer.apply_to_config(config)
return config
