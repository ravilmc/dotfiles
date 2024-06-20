return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "gopls",
      }
    })

    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      diagnostics = {
        globals = {"vim","it","describe","before_each","after_each"}
      }
    })
  end
}
