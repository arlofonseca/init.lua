return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup({})
      vim.keymap.set('n', '<leader>tt', '<cmd>NvimTreeToggle<CR>')
      vim.keymap.set('n', '<leader>tf', '<cmd>NvimTreeFindFileToggle<CR>')
      vim.keymap.set('n', '<leader>tc', '<cmd>NvimTreeCollapse<CR>')
      vim.keymap.set('n', '<leader>tr', '<cmd>NvimTreeRefresh<CR>')
    end
  }
}
