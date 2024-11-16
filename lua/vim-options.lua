vim.cmd("hi CursorLineNr guifg=#af00af")
vim.cmd("set cursorline")
vim.cmd("set cursorlineopt=number")

vim.cmd("set foldlevel=20")
vim.cmd("set foldmethod=expr")
vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")

vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.opt.swapfile = false


local default_opts = { noremap = true, silent = true }
vim.keymap.set("v", "<leader>y", '"+y', default_opts)
vim.keymap.set("n", "<leader>y", '"+y', default_opts)
vim.keymap.set("n", "<leader>Y", '"+yg_', default_opts)
vim.keymap.set("n", "<leader>yy", '"+yy', default_opts)

vim.keymap.set("v", "<leader>p", '"+p', default_opts)
vim.keymap.set("v", "<leader>P", '"+P', default_opts)
vim.keymap.set("n", "<leader>p", '"+p', default_opts)
vim.keymap.set("n", "<leader>P", '"+P', default_opts)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    }
)
