return {
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    keys = { { '<leader>pl', '<cmd>Mason<cr>' } },
    opts = {},
    config = function(_, opts)
      require('mason').setup(opts)
    end
  }
}
