return {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("ayu").setup({
            mirage = false,
            terminal = true,
            overrides = {},
        })
        vim.cmd([[colorscheme ayu]])
    end,
}
