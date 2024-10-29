return {
  {
    'sindrets/diffview.nvim',
    config = function()
      local diffview = require('diffview')
      local addCommand = vim.api.nvim_create_user_command

      diffview.setup({
        use_icons = false,
      })

      addCommand('Diffview', function()
        diffview.open()
      end, {})

      addCommand('DiffviewClose', function()
        diffview.close()
      end, {})

      addCommand('FileHistory', function()
        diffview.file_history(nil, '%')
      end, {})
    end
  }
}
