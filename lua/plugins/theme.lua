return {
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      vim.keymap.set('n', '<leader>cb', function()
        vim.o.background = vim.o.background == 'light' and 'dark' or 'light'
        vim.cmd('hi NonText guifg=bg')
      end)

      require('gruvbox').setup({
        contrast = 'hard',
      })

      vim.o.background = 'dark'
      vim.cmd.colorscheme('gruvbox')
      vim.cmd('hi NonText guifg=bg')
    end
  },
  --[[
  {
    'polirritmico/monokai-nightasty.nvim',
    config = function()
      vim.keymap.set('n', '<leader>cb', function()
        vim.o.background = vim.o.background == 'light' and 'dark' or 'light'
        vim.cmd('hi NonText guifg=bg')
      end)

      vim.o.background = 'dark'
      vim.cmd.colorscheme('monokai-nightasty')
      vim.cmd('hi NonText guifg=bg')
    end
  }
  --]]
}
