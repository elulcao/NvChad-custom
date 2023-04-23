local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
    "bash",
    "go",
    "yaml",
    "lua",
    "vim",
    "vimdoc",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    -- go stuff
    "gopls",
    "golangci-lint-langserver",
    "goimports",
    "gofumpt",
    -- bash stuff
    "shellcheck",
    "bash-language-server",
    -- python stuff
    "pyright",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  filters = {
    dotfiles = false,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- cmp 
M.cmp = {
  sources = {
    { name = "copilot" },
  },
}

return M
