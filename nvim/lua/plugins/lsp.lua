local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Capabilities
local capabilities = cmp_nvim_lsp.default_capabilities()

-- LSPs
vim.lsp.config.clangd.setup {
    capabilities = capabilities,
    filetypes = { "c", "cpp" },
    on_attach = function(client, bufnr)
        -- Format on save
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({ async = false })
            end,
        })
    end,
}

vim.lsp.config.asm_lsp.setup {
    capabilities = capabilities,
    filetypes = { "asm" },
}

vim.lsp.config.lua_ls.setup {
    capabilities = capabilities,
    on_init = function(client)
        client.server_capabilities.didChangeWatchedFiles = false
    end,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = vim.split(package.path, ";"),
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    vim.api.nvim_get_runtime_file("", true)
                },
                checkThirdParty = false,
                preloadFileSize = 1000,
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
