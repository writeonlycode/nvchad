return {
  { "folke/which-key.nvim", enabled = false },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- file managing , picker etc
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function()
      return require "configs.nvimtree"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "prettier",
        "js-debug-adapter",
        "stylua",
        "codespell",
        "emmet-ls",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "nvchad.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
      }
      return opts
    end,
  },
}
