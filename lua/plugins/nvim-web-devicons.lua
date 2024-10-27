return {
  {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup {
        override = {
          js = { icon = "✞", color = "#ebd729", name = "JavaScript" },
          ts = { icon = "🟈", color = "#5c7cfa", name = "TypeScript" },
          lua = { icon = "✽", color = "#51a0cf", name = "Lua" },
          prisma = { icon = '卑', color = '#5D4D7A', name = 'Prisma' },
        },
      }
    end
  }
}
