vim.cmd("set guicursor=n-v-c-i:block")
vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamed")

vim.g.mapleader = " "

local default_opts = { noremap = true, silent = true }
vim.keymap.set("v", "<leader>y", '"+y', default_opts)
vim.keymap.set("n", "<leader>y", '"+y', default_opts)
vim.keymap.set("n", "<leader>Y", '"+yg_', default_opts)
vim.keymap.set("n", "<leader>yy", '"+yy', default_opts)

vim.keymap.set("v", "<leader>p", '"+p', default_opts)
vim.keymap.set("v", "<leader>P", '"+P', default_opts)
vim.keymap.set("n", "<leader>p", '"+p', default_opts)
vim.keymap.set("n", "<leader>P", '"+P', default_opts)

vim.filetype.add({ extension = { templ = "templ" } })

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    local opts = { buffer = ev.buf }

    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
  end,
})
