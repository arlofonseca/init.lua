return {
  {
    'echasnovski/mini.nvim',
    config = function()
      local patterns = require('mini.hipatterns')
      require('mini.hipatterns').setup({
        highlighters = {
          fix = { pattern = '@fix', group = 'MiniHipatternsFixme' },
          todo = { pattern = '@todo', group = 'MiniHipatternsTodo' },
          color = patterns.gen_highlighter.hex_color(),
        }
      })

      local comments = require('mini.comment')
      comments.setup({
        mappings = {
          comment = 'gcc',
        }
      })

      require('mini.trailspace').setup({
        auto = true
      })

      local indentscope = require('mini.indentscope')
      indentscope.setup()

      local pairs = require('mini.pairs')
      pairs.setup()

      local surround = require('mini.surround')
      surround.setup()
    end
  }
}
