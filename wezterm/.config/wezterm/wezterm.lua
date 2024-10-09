local wezterm = require("wezterm")
--local colors = require("lua/rose-pine").colors()
local background = require("lua/background")
local colors = require("lua/cyberdream")

local config = {
    font = wezterm.font("Hack Nerd Font Mono"),
    font_size = 16,
    max_fps = 120,
    enable_tab_bar = false,
    enable_scroll_bar = false,
    line_height = 1.15,
    colors = colors,
    --background = background,
    --color_scheme = "Campbell (Gogh)",
    --color_scheme = "Kanagawa (Gogh)",
    --color_scheme = "Gruvbox (Gogh)",
    --color_scheme = "Galaxy",
    dpi = 96.0,
    hide_mouse_cursor_when_typing = true,
    window_background_opacity = 0.8,
    window_padding = {
        left = 12,
        right = 12,
        top = 12,
        bottom = 12,
    },
    default_prog = { "/usr/bin/zsh" },
}

function IncreaseZoom(zoom)
    zoom = 5
    for i = 1, 5 do
        wezterm.action.IncreaseFontSize()
    end
end

return config
