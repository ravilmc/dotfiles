return {
  "nvimtools/none-ls.nvim",

  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
        sources = {
        null_ls.builtins.formatting.stylelua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.code_actions.refactoring,
      }

    })
  end

}
