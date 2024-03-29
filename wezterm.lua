local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()
--local ssh_domains = require('ssh')
local tab = require 'tab'

config.color_scheme = 'Gotham (terminal.sexy)'
config.font_dirs = { 'fonts' }
config.font = wezterm.font("CaskaydiaCove Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 15.5
--config.ssh_domains = ssh_domains

tab.apply_to_config(config)
return config
