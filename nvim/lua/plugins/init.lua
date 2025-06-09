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
Plug("navarasu/onedark.nvim")
Plug("lukas-reineke/indent-blankline.nvim")

vim.call("plug#end")

