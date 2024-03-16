return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = false,
				integrations = {
					neotree = true,
					lsp_trouble = true,
          mason = true
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
