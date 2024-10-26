return {
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
    comments.setup()

    require('mini.trailspace').setup()
  end
}
