local map = vim.keymap.set

map("n", "gd",  vim.lsp.buf.definition)
map("n", "<leader>f", vim.lsp.buf.format)
-- buffer diagnostics only
map("n", "<leader>d", vim.diagnostic.setloclist)
map("n", "dp", function()
  vim.diagnostic.goto_prev({ wrap = false })
end)
map("n", "dn", function()
  vim.diagnostic.goto_next({ wrap = false })
end)
