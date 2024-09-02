local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "zenbones_dark"
config.enable_tab_bar = false
config.window_decorations = "TITLE | RESIZE"
config.enable_wayland = false
config.font = wezterm.font({
	family = "JetBrainsMono Nerd Font",
	weight = "Bold",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})
config.font_size = 11.0
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.colors = {
	background = "#101010",
	foreground = "#D8DEE9",
	-- ansi = {
	-- 	"#101010",
	-- 	"#eee8d5",
	-- 	"#2e2e2e",
	-- 	"#859ba2",
	-- 	"#424242",
	-- 	"#DFDFDA",
	-- 	"#c7cdd8",
	-- 	"#DAD4C3",
	-- },
	-- brights = {
	-- 	"#1f1f1f",
	-- 	"#B8B7B1",
	-- 	"#383838",
	-- 	"#7b9198",
	-- 	"#bfc5d0",
	-- 	"#ced4df",
	-- 	"#ced4df",
	-- 	"#ced4df",
	-- },
}

return config
