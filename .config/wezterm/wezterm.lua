---@type Wezterm
local wezterm = require("wezterm")
local config = wezterm.config_builder()

wezterm.log_info("reloading")

require("tabs").setup(config)
--require("mouse").setup(config)
--require("links").setup(config)
require("keys").setup(config)

allow_win32_input_mode = true
config.front_end = "WebGpu"

config.window_background_opacity = 0.85
config.macos_window_background_blur = 0

config.webgpu_power_preference = "HighPerformance"
-- config.animation_fps = 1
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

-- Colorscheme
config.color_scheme = "rose-pine"

config.underline_thickness = 3
config.cursor_thickness = 4
config.underline_position = -6

if wezterm.target_triple:find("windows") then
  config.default_prog = { "pwsh" }
  config.window_decorations = "RESIZE|TITLE"
  wezterm.on("gui-startup", function(cmd)
    local screen = wezterm.gui.screens().active
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
    local gui = window:gui_window()
    local width = 0.7 * screen.width
    local height = 0.7 * screen.height
    gui:set_inner_size(width, height)
    gui:set_position((screen.width - width) / 2, (screen.height - height) / 2)
  end)
else
  config.term = "wezterm"
  config.window_decorations = "RESIZE"
end

-- Fonts
config.font_size = 12
config.font = wezterm.font({ family = "Fira Code" })
config.bold_brightens_ansi_colors = true
config.font_rules = {
  {
    intensity = "Bold",
    italic = true,
    font = wezterm.font({ family = "Maple Mono", weight = "Bold", style = "Italic" }),
  },
  {
    italic = true,
    intensity = "Half",
    font = wezterm.font({ family = "Maple Mono", weight = "DemiBold", style = "Italic" }),
  },
  {
    italic = true,
    intensity = "Normal",
    font = wezterm.font({ family = "Maple Mono", style = "Italic" }),
  },
}

-- Cursor
config.default_cursor_style = "BlinkingBlock"
config.force_reverse_video_cursor = true
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
-- window_background_opacity = 0.9,
-- cell_width = 0.9,
config.scrollback_lines = 10000

return config --[[@as Wezterm]]
