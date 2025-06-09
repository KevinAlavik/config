-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Misc
local opt = vim.opt
opt.termguicolors = true
opt.background = "dark"
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.autoindent = true
opt.cursorline = true
opt.showtabline = 0
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300
opt.clipboard = "unnamedplus"
opt.spell = true
opt.spelllang = { "en_us", "sv" }

local api = vim.api
api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
