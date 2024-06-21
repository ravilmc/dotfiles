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
        "tsserver",
      }
    })

    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = {"vim","it","describe","before_each","after_each"}
          }
        }
      }
    })

    lspconfig.gopls.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.tsserver.setup({
      filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
      cmd = { "typescript-language-server", "--stdio" }

    })


    vim.keymap.set('n' , 'K' , vim.lsp.buf.hover , {})
    vim.keymap.set('n' , 'gd' , vim.lsp.buf.definition , {})
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
    vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action , {})




  end
}
