local lsps = {
  "lua_ls",
  "clangd",
  "gopls",
  "tsserver",
  "pyright",
  "templ",
  "html",
  "htmx",
  "tailwindcss",
  "cssls"
}

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"gopls",
					"tsserver",
					"pyright",
					"templ",
					"html",
					"htmx",
					"tailwindcss",
					"cmake",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.gopls.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.templ.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities, filetypes = { "html", "templ" } })
      lspconfig.htmx.setup({ capabilities = capabilities, filetypes = { "html", "templ" } })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
        filetypes = { "templ", "html", "javascript", "javascriptreact", "javascript.jsx" ,"typescript", "typescriptreact", "typescript.tsx" },
        init_options = { userLanguages = { templ = "html" } },
      })
    end,
  },
}
