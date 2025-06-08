vim.api.nvim_create_autocmd("FileType", {
    pattern = "asm",
    callback = function()
        vim.bo.expandtab = false
    end,
})

