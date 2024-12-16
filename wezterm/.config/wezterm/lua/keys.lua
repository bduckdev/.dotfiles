local wezterm = require("wezterm")

local keys = {
    {
        mods = "LEADER",
        key = "c",
        action = wezterm.action.SpawnTab("CurrentPaneDomain"),
    },
    {
        mods = "LEADER",
        key = "x",
        action = wezterm.action.CloseCurrentPane({ confirm = true }),
    },
    {
        mods = "LEADER",
        key = "%",
        action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
    },
    {
        mods = "LEADER",
        key = ";",
        action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
    {
        mods = "LEADER",
        key = "h",
        action = wezterm.action.ActivatePaneDirection("Left"),
    },
    {
        mods = "LEADER",
        key = "j",
        action = wezterm.action.ActivatePaneDirection("Down"),
    },
    {
        mods = "LEADER",
        key = "k",
        action = wezterm.action.ActivatePaneDirection("Up"),
    },
    {
        mods = "LEADER",
        key = "l",
        action = wezterm.action.ActivatePaneDirection("Right"),
    },
    {
        mods = "LEADER",
        key = "LeftArrow",
        action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
    },
    {
        mods = "LEADER",
        key = "RightArrow",
        action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
    },
    {
        mods = "LEADER",
        key = "UpArrow",
        action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
    },
    {
        mods = "LEADER",
        key = "DownArrow",
        action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
    },
}

for i = 1, 9 do
    table.insert(keys, {
        mods = "LEADER",
        key = tostring(i),
        action = wezterm.action.ActivateTab(i),
    })
end

return keys
