local config = require("nvchad.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "eslint", "pyright", "ts_ls", "gopls", "clangd" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
		lags = {
			debounce_text_changes = 150,
		},
	})
end

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
	cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
	settings = {
		-- your personal jdtls preferences
	},
})

lspconfig.ts_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	init_options = {
		plugins = { -- I think this was my breakthrough that made it work
			{
				name = "@vue/typescript-plugin",
				location = "/usr/local/lib/node_modules/@vue/language-server",
				languages = { "vue" },
			},
		},
	},
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

lspconfig.clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.volar.setup({})
