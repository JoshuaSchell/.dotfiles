local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
    automatically_reload_config = true,
    enable_tab_bar = false,
    window_close_confirmation = "NeverPrompt",
    window_decorations = "RESIZE",
    default_cursor_style = "SteadyBar",
    color_scheme = 'OneHalfDark',
    font_size = 16,
}

return config
