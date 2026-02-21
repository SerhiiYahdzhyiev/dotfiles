local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local function get_shell(cmd)
  local handle = io.popen("command -v " .. cmd)
  local result = handle:read("*a")
  handle:close()
  result = result:gsub("%s+", "")
  if result ~= "" then
    return result
  end
  return nil
end

local shell_path = get_shell("zsh") or os.getenv("SHELL") or "/bin/sh"
local shell = { shell_path, "-l" }

config.font_size = 16
config.window_background_opacity = 0.6
config.enable_wayland = false
config.default_prog = shell

return config
