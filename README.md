# NeoConf

This is my personal Neovim configuration. It’s designed to be fast, functional, and easy to use. If you’re into coding, navigating files, or just want a clean and efficient setup, this might be useful for you.

---

## Showcase

![Screenshot 2024-11-19 193826](https://github.com/user-attachments/assets/f3dc232b-4e7a-4e80-b04f-987c0d219946) ![Screenshot 2024-11-19 193642](https://github.com/user-attachments/assets/971099e3-2003-4ba3-bae0-031811590ac5)

---

## Features

- **Smooth and fast**: Plugins are lazy-loaded to keep things responsive.
- **Great looks**: Includes the [Catppuccin](https://github.com/catppuccin/nvim) theme for a polished UI.
- **Dev tools**: LSP, auto-completion, snippets, and more for coding.
- **Git-friendly**: Manage repos with `gitsigns.nvim` and `lazygit.nvim`.
- **Database tools**: Query databases directly with `vim-dadbod`.

---

## Plugins

Here’s the full list of plugins included in this setup:

| **Plugin**                                                                       | **Description**                     |
| -------------------------------------------------------------------------------- | ----------------------------------- |
| [alpha-nvim](https://github.com/goolord/alpha-nvim)                              | Start screen for Neovim.            |
| [catppuccin](https://github.com/catppuccin/nvim)                                 | A beautiful color scheme.           |
| [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)                            | Autocompletion for command-line.    |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)                          | LSP source for nvim-cmp.            |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)                       | Snippet completion for nvim-cmp.    |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim)                         | Easy code commenting.               |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)             | Ready-to-use snippets.              |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                      | Git integration for buffers.        |
| [harpoon](https://github.com/ThePrimeagen/harpoon)                               | Quick file navigation.              |
| [lazy.nvim](https://github.com/folke/lazy.nvim)                                  | Plugin manager.                     |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                     | Status line plugin.                 |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip)                                   | Snippet engine for Neovim.          |
| [mason.nvim](https://github.com/williamboman/mason.nvim)                         | LSP, DAP, and formatters installer. |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                  | File explorer with icons.           |
| [noice.nvim](https://github.com/folke/noice.nvim)                                | Better notifications and UI.        |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)                       | Auto-close brackets and quotes.     |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                  | Autocompletion engine.              |
| [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)             | Color code preview in files.        |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                       | LSP configurations.                 |
| [nvim-notify](https://github.com/rcarriga/nvim-notify)                           | Notification manager.               |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)            | Syntax highlighting and more.       |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)              | File type icons.                    |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)                         | Utility functions for plugins.      |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)               | Fuzzy file finder.                  |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)                | Highlight and manage TODOs.         |
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)                         | Lazygit integration.                |
| [trouble.nvim](https://github.com/folke/trouble.nvim)                            | Diagnostics and quickfix list.      |
| [vim-dadbod](https://github.com/tpope/vim-dadbod)                                | Database interaction plugin.        |
| [vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion) | Autocompletion for databases.       |
| [vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui)                 | UI for database management.         |

---

## Installation

1. Clone this repository into your neovim configuration folder:
   ```bash
   git clone https://github.com/yasthegoat/neoconf
   ```
2. Install [Neovim](https://neovim.io/)
3. Lazy will take care of the plugins installation


## License

This project is licensed under the MIT License.
