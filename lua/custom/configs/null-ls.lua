local present, null_ls = pcall(require, "null-ls")
if not present then
  print("null-ls not found")
  return
end

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.stylua,
  formatting.goimports,  -- go
  formatting.shfmt, -- shell

  lint.shellcheck,
}

null_ls.setup {
   debug = false,
   sources = sources,
}
