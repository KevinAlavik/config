local lspconfig = require("lspconfig")
local cmp = require("cmp")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Capabilities
local capabilities = cmp_nvim_lsp.default_capabilities()

-- LSPs
lspconfig.clangd.setup {
    capabilities = capabilities,
    filetypes = { "c", "cpp" },
}

lspconfig.asm_lsp.setup {
    capabilities = capabilities,
    filetypes = { "asm" },
}

lspconfig.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = { enable = false },
        },
    },
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

