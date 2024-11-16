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

vim.o.fillchars = "eob: "
vim.g.mapleader = " "
vim.opt.swapfile = false

local default_opts = { noremap = true, silent = true }

-- HELPER
vim.keymap.set("v", "<leader>y", '"+y', default_opts)
vim.keymap.set("n", "<leader>y", '"+y', default_opts)
vim.keymap.set("n", "<leader>Y", '"+yg_', default_opts)
vim.keymap.set("n", "<leader>yy", '"+yy', default_opts)

vim.keymap.set("v", "<leader>p", '"+p', default_opts)
vim.keymap.set("v", "<leader>P", '"+P', default_opts)
vim.keymap.set("n", "<leader>p", '"+p', default_opts)
vim.keymap.set("n", "<leader>P", '"+P', default_opts)

-- TROUBLE
vim.keymap.set("n", "<leader>xx", "<cmd>Troube diagnostics toggle<CR>", { desc = "Diagnostics (Trouble)" })

-- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {
	desc = "Telescope find files",
})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
	desc = "Telescipe live grep",
})

-- NONE LS
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- NOICE
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- NEO TREE
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

-- HARPOON
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-t>", function()
	harpoon:list():prev()
end)
vim.keymap.set("n", "<C-h>", function()
	harpoon:list():next()
end)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {})
