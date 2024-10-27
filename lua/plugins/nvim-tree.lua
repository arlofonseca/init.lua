return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.opt.termguicolors = true

      local tree = require('nvim-tree')
      tree.setup({})

      local keymap = vim.keymap
      keymap.set('n', '<leader>tt', '<cmd>NvimTreeToggle<CR>')
      keymap.set('n', '<leader>tf', '<cmd>NvimTreeFindFileToggle<CR>')
      keymap.set('n', '<leader>tc', '<cmd>NvimTreeCollapse<CR>')
      keymap.set('n', '<leader>tr', '<cmd>NvimTreeRefresh<CR>')
    end,
  }
}
