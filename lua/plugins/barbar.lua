return {
  {
    'romgrk/barbar.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      vim.keymap.set('n', '<Tab>', ':BufferNext<CR>')
      vim.keymap.set('n', '<S-Tab>', ':BufferPrevious<CR>')
      vim.keymap.set('n', '<leader>bd', ':BufferClose<CR>')
    end
  }
}
