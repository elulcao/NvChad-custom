local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "github/copilot.vim",
    lazy = false,
    config = function ()
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "fatih/vim-go",
    ft = {"go", "gomod"},
    event = "CmdlineEnter",
    config = function ()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     {
  --       "zbirenbaum/copilot-cmp",
  --       config = function()
  --         require "plugins.configs.cmp"
  --         require "custom.configs.copilot-cmp"
  --       end,
  --     },
  --   },
  --   opts = {
  --     sources = {
  --       { name = "nvim_lsp" },
  --       { name = "luasnip" },
  --       { name = "buffer" },
  --       { name = "nvim_lua" },
  --       { name = "path" },
  --       { name = "copilot" },
  --     },
  --   },
  -- },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require "custom.configs.copilot"
  --   end,
  -- },
  -- {
    -- "zbirenbaum/copilot-cmp",
    -- dependencies = {
      -- {
        -- "zbirenbaum/copilot.lua",
        -- cmd = "Copilot",
        -- event = "InsertEnter",
        -- config = function()
          -- require "custom.configs.copilot"
        -- end,
      -- },
    -- },
    -- config = function()
      -- require "custom.configs.copilot-cmp"
    -- end,
  -- },
}

return plugins
