local fancy = false
local Color = "#283c34"
local transparent = true
local bg_opacity = 0.7
if transparent == false then
    bg_opacity = 1
end

if fancy == true then
    local wallpaper = "/home/bduck/Pictures/Wallpapers/cat_crying.png"
    local img_height = "85%"
    local img_width = "85%"
    local cover_opacity = 0.3
    local hsb = {
        hue = 2.0,
        saturation = 1.0,
        brightness = 0.5,
    }
    Background = {
        {
            source = {
                Color = Color,
            },
            opacity = bg_opacity,
            width = "100%",
            height = "100%",
        },
        {
            source = {
                File = wallpaper,
            },
            width = img_width,
            height = img_height,
            attachment = "Fixed",
            horizontal_align = "Center",
            vertical_align = "Middle",
            repeat_x = "NoRepeat",
            repeat_y = "NoRepeat",
            hsb = hsb,
        },
        {
            source = {
                Color = Color,
            },
            opacity = cover_opacity,
            width = img_width,
            height = img_height,
            attachment = "Fixed",
            horizontal_align = "Center",
            vertical_align = "Middle",
            repeat_x = "NoRepeat",
            repeat_y = "NoRepeat",
        },
    }
    return Background
else
    --[[
	Background = {
		{
			source = {
				Color = "black",
			},
			opacity = bg_opacity,
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Color = Color,
			},
			opacity = 0.25,
			width = "100%",
			height = "100%",
		},
	}
    ]]
    Background = {
        {
            source = {
                Color = "black",
            },
            opacity = bg_opacity,
            width = "100%",
            height = "100%",
        },
    }
    return Background
end
