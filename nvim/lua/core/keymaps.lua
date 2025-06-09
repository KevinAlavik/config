local keymap = vim.keymap.set

-- Barbar
keymap("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
keymap("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>q", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })

-- LSP
keymap("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap("n", "<leader>lD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
keymap("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format code" })

-- Diagnostics
keymap("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostics" })
keymap("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
keymap("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })

-- Signature help
keymap("i", "<C-s>", vim.lsp.buf.signature_help, { desc = "Signature help" })

