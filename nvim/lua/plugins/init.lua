local Plug = vim.fn["plug#"]
vim.call("plug#begin")

Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim", { ["tag"] = "0.1.8" })
Plug("neovim/nvim-lspconfig")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/nvim-cmp")
Plug("nvim-tree/nvim-web-devicons")
Plug("romgrk/barbar.nvim")
Plug("nvim-lualine/lualine.nvim")
Plug("lukas-reineke/indent-blankline.nvim")
Plug("rktjmp/lush.nvim")
Plug("lewis6991/gitsigns.nvim")

-- Themes (i like to switch themes offten...)
Plug("AlexvZyl/nordic.nvim")
Plug("navarasu/onedark.nvim")
Plug("rebelot/kanagawa.nvim")

vim.call("plug#end")

