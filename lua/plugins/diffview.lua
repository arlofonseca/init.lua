return {
  {
    'sindrets/diffview.nvim',
    config = function()
      local diffview = require('diffview')

      diffview.setup({
        use_icons = false,
      })

      addCommand('Diffview', function()
        diffview.open()
      end, {})

      addKeybind('n', '<leader>dv', '<cmd>Diffview<CR>')

      addCommand('DiffviewClose', function()
        diffview.close()
      end, {})

      addKeybind('n', '<leader>dc', '<cmd>DiffviewClose<CR>')

      addCommand('FileHistory', function()
        diffview.file_history(nil, '%')
      end, {})

      addKeybind('n', '<leader>fh', '<cmd>FileHistory<CR>')
    end
  }
}
