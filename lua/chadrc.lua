---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("highlights")

M.ui = {
	theme = "chadracula-evondev",
	theme_toggle = {
		"chadracula-evondev",
		"catppuccin",
	},
	hl_override = highlights.override,
	hl_add = highlights.add,
	tabufline = {
		enable = true,
		lazyload = false,
	},
}

-- M.plugins = "plugins"
-- M.mappings = require("mappings")

return M
