local wezterm = require("wezterm")
local colors = require("lua/rose-pine").colors()

local config = {
    font = wezterm.font("Hack Nerd Font Mono"),
    font_size = 16,
    max_fps = 120,
    enable_tab_bar = false,
    --colors = colors,
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
wezterm.on("user-var-changed", function(window, pane, name, value)
    local overrides = window:get_config_overrides() or {}
    if name == "ZEN_MODE" then
        local incremental = value:find("+")
        local number_value = tonumber(value)
        if incremental ~= nil then
            while number_value > 0 do
                window:perform_action(wezterm.action.IncreaseFontSize, pane)
                number_value = number_value - 1
            end
            overrides.enable_tab_bar = false
        elseif number_value < 0 then
            window:perform_action(wezterm.action.ResetFontSize, pane)
            overrides.font_size = nil
            overrides.enable_tab_bar = true
        else
            overrides.font_size = number_value
            overrides.enable_tab_bar = false
        end
    end
    window:set_config_overrides(overrides)
end)

--config.default_prog = { "/usr/bin/zsh", "-l", "-c ", "tmux a" }
return config
