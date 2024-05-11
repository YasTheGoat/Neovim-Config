return {
	{
		"NvChad/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				filetypes = { "*" },
				user_default_options = {
					RRGGBBAA = true, -- #RRGGBBAA hex codes
					AARRGGBB = true, -- 0xAARRGGBB hex codes
					css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
					css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
					mode = "virtualtext", -- Set the display mode.
					tailwind = true, -- Enable tailwind colors
					sass = { enable = false, parsers = { "css" } }, -- Enable sass colors
					virtualtext = "■",
					always_update = true,
				},
				buftypes = {},
			})
		end,
	},
}
