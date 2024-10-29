return {
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      local gruvbox = require('gruvbox')

      gruvbox.setup({
        contrast = 'hard',
      })

      addCommand('ChangeBackground', function()
        get.background = get.background == 'light' and 'dark' or 'light'
        execute('hi NonText guifg=bg')
      end, {})

      addKeybind('n', '<leader>cb', '<cmd>ChangeBackground<CR>')

      get.background = 'dark'
      execute.colorscheme('gruvbox')
      execute('hi NonText guifg=bg')
    end
  }
}
