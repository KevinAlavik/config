local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Global default config (optional)
vim.lsp.config('*', {
  capabilities = capabilities,
  root_markers = { '.git' }, -- fallback root dir
})

-- Clangd
vim.lsp.config('clangd', {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp' },
  root_markers = { '.clangd', 'compile_commands.json', '.git' },
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
})
vim.lsp.enable('clangd')

-- ASM LSP
vim.lsp.config('asm_lsp', {
  cmd = { 'asm-lsp' },
  filetypes = { 'asm' },
})
vim.lsp.enable('asm_lsp')

-- Lua LS
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.git' },
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
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
        preloadFileSize = 1000,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})
vim.lsp.enable('lua_ls')
