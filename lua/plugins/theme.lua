return {
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      local gruvbox = require('gruvbox')
      local addCommand = vim.api.nvim_create_user_command
      local addKeybind = vim.keymap.set

      gruvbox.setup({
        contrast = 'hard',
      })

      addCommand('ChangeBackground', function()
        vim.o.background = vim.o.background == 'light' and 'dark' or 'light'
        vim.cmd('hi NonText guifg=bg')
      end, {})

      addKeybind('n', '<leader>cb', '<cmd>ChangeBackground<CR>')

      vim.o.background = 'dark'
      vim.cmd.colorscheme('gruvbox')
      vim.cmd('hi NonText guifg=bg')
    end
  }
}
