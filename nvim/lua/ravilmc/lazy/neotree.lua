return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem toggle left<CR>")

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
                    hide_dotfiles = false,
					hide_by_name = {
						"bin",
						"tmp",
                        "node_modules",
                        ".git",
					},
				},
			},
		})
	end,
}
