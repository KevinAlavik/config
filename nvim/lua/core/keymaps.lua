local keymap = vim.keymap.set

-- Buffers
keymap("n", "<Tab>", "<Cmd>BufferNext<CR>", { desc = "Next buffer" })
keymap("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>q", "<Cmd>BufferClose<CR>", { desc = "Close buffer" })
keymap("n", "<leader>bp", "<Cmd>BufferPin<CR>", { desc = "Pin buffer" })
keymap("n", "<leader>bc", "<Cmd>BufferCloseAllButCurrent<CR>", { desc = "Close all but current buffer" })
keymap("n", "<leader>bo", "<Cmd>BufferOrderByDirectory<CR>", { desc = "Order buffers by directory" })
keymap("n", "<leader>bn", "<Cmd>enew<CR>", { desc = "New empty buffer" })

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
