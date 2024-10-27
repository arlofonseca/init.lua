return {
  {
    'ibhagwan/fzf-lua',
    event = 'VeryLazy',
    config = function()
      require('fzf-lua').setup({
        fzf_opts = { ['--no-separator'] = false },
        winopts = {
          preview = {
            hidden = 'hidden',
          },
        },
        lsp = {
          code_actions = {
            previewer = false,
            winopts = { win_height = 0.5, win_width = 0.5 },
          },
        },
      })
      require('fzf-lua').register_ui_select()
    end,
    keys = {
      {
        '<leader>ff',
        function()
          require('fzf-lua').files()
        end,
      },
      {
        '<leader>fw',
        function()
          require('fzf-lua').live_grep()
        end,
      },
      {
        '<leader>fd',
        function()
          require('fzf-lua').diagnostics_document()
        end,
      },
      {
        '<leader>fwd',
        function()
          require('fzf-lua').diagnostics_workspace()
        end,
      },
    },
  }
}
