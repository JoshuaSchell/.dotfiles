return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  vim.keymap.set("n", "-", "<cmd>Oil<CR>")
}
