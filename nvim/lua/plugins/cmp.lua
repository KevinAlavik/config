local cmp = require("cmp")

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
  mapping = {
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),
  },

  sources = {
    { name = "nvim_lsp", priority = 1000 },
    { name = "buffer", priority = 500 },
    { name = "path", priority = 250 },
  },

  formatting = {
    format = function(entry, item)
      local source_names = {
        nvim_lsp = "[LSP]",
        buffer = "[Buffer]",
        path = "[Path]",
      }
      item.menu = source_names[entry.source.name] or ""
      return item
    end,
  },

  experimental = {
    ghost_text = true,
  },

  window =  {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  }
})
