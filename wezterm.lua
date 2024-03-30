local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()
local tab = require 'tab'

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

config.color_scheme = 'Gotham (terminal.sexy)'
config.font_dirs = { 'fonts' }
config.font = wezterm.font("CaskaydiaCove Nerd Font" )
config.font_size = 15.5
config.ssh_domains = require 'ssh'
config.text_background_opacity = 0.3

--config.term = 'wezterm'

tab.apply_to_config(config)
return config
