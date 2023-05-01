local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "bashls",
  "gopls",
  "pyright",
  "vimls",
  -- "tsserver",
  -- "yamlls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
  }
end

lspconfig.gopls.setup({
 cmd = {"gopls"},
 root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
 filetypes = {"go", "gomod", "gowork", "gotmpl"},
})

lspconfig.golangci_lint_ls.setup({
  cmd = {"golangci-lint-langserver"},
  root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
  filetypes = {"go", "gomod"},
  init_options = {
    command = {"golangci-lint", "run", "--out-format", "json"},
    documentFormatting = true,
  },
})
