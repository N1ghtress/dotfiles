
-- Bindings
local terminal = "kitty"
local screenshot_clip = "hyprshot -m region --clipboard-only"
local screenshot = "hyprshot -m region"
local fileManager = "thunar"
local menu = "rofi -show drun -matching fuzzy"
local lockscreen = "hyprlock"

hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + S", hl.dsp.exec_cmd(screenshot_clip))
hl.bind("Print", hl.dsp.exec_cmd(screenshot))
hl.bind("SUPER + Z", hl.dsp.window.kill())
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + V", hl.dsp.window.float())
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + L", hl.dsp.exec_cmd(lockscreen))
hl.bind("SUPER + f", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind("SUPER + h", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + l", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + k", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + j", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + SHIFT + h", hl.dsp.window.move({ direction = "l"}))
hl.bind("SUPER + SHIFT + l", hl.dsp.window.move({ direction = "r"}))
hl.bind("SUPER + SHIFT + k", hl.dsp.window.move({ direction = "u"}))
hl.bind("SUPER + SHIFT + j", hl.dsp.window.move({ direction = "d"}))
hl.bind("SUPER + ampersand", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + eacute", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + quotedbl", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + apostrophe", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + parenleft", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + minus", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + SHIFT + ampersand", hl.dsp.window.move({ workspace = 1, follow = true }))
hl.bind("SUPER + SHIFT + eacute", hl.dsp.window.move({ workspace = 2, follow = true }))
hl.bind("SUPER + SHIFT + quotedbl", hl.dsp.window.move({ workspace = 3, follow = true }))
hl.bind("SUPER + SHIFT + apostrophe", hl.dsp.window.move({ workspace = 4, follow = true }))
hl.bind("SUPER + SHIFT + parenleft", hl.dsp.window.move({ workspace = 5, follow = true }))
hl.bind("SUPER + SHIFT + minus", hl.dsp.window.move({ workspace = 6, follow = true }))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 10%+"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
