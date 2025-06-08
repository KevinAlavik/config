require("nvim-treesitter.configs").setup {
    ensure_installed = { "c", "asm" },
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
}
