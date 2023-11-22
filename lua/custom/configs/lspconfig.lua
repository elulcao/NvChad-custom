local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

lspconfig.gopls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = { "gopls" },
	filetypes = {
		"go",
		"gomod",
		"gowork",
		"gotmpl",
	},
	root_dir = util.root_pattern("go.work", "go.mod"),
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
		},
	},
})

lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = {
		"typescript-language-server",
		"--stdio",
	},
	init_options = {
		preferences = {
			disableSuggestions = false,
		},
	},
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	root_dir = function()
		return vim.loop.cwd()
	end,
})

lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = {
		"python",
	},
})

lspconfig.jdtls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		-- your personal jdtls preferences
	},
})
