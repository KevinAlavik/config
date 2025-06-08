local lspconfig = require("lspconfig")
local cmp = require("cmp")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- LSP
lspconfig.clangd.setup {
    capabilities = cmp_nvim_lsp.default_capabilities(),
    filetypes = { "c", "cpp" },
}

lspconfig.asm_lsp.setup {
    capabilities = cmp_nvim_lsp.default_capabilities(),
    filetypes = { "asm" },
}

-- Completion
cmp.setup {
    mapping = {
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
    },
    sources = {
        { name = "nvim_lsp", priority = 1000 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
    },
    formatting = {
        format = function(entry, item)
            item.menu = ({
                nvim_lsp = "[LSP]",
                buffer = "[Buffer]",
                path = "[Path]",
            })[entry.source.name]
            return item
        end,
    },
    experimental = { ghost_text = true },
}

