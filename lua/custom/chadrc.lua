---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  hl_override = highlights.override,
  hl_add = highlights.add,
  tabufline = {
    enable = true,
    lazyload = false,
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
