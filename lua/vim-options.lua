vim.cmd("hi CursorLineNr guifg=#fff")
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
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Buffer Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<CR>", { desc = "Symbols (Trouble)" })
vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<CR>", { desc = "LSP Definitions / references / ... (Trouble)" })
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist toggle<CR>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<CR>", { desc = "Quickfix List (Trouble)" })

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

-- LAZYGIT
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "LazyGit" })

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {})
