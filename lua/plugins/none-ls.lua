return {
  {
    "williamboman/mason-null-ls.nvim",
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "prettier",
          "black",
          "gofumpt",
          "clang-format",
          "stylua"
        },
      })
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.gofumpt,
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.clang_format,
          null_ls.builtins.formatting.stylua,
        },
      })

      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
}
