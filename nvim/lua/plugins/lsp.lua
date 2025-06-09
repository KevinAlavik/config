local lspconfig = require("lspconfig")
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
