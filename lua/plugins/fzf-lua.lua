return {
  {
    'ibhagwan/fzf-lua',
    config = function()
      local fzf = require('fzf-lua')
      local addCommand = vim.api.nvim_create_user_command
      local addKeybind = vim.keymap.set

      fzf.setup({
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

      addCommand('Search', function()
        fzf.files()
      end, {})

      addKeybind('n', '<leader>sf', '<cmd>Search<CR>')

      addCommand('Grep', function()
        fzf.live_grep()
      end, {})

      addKeybind('n', '<leader>lg', '<cmd>Grep<CR>')

      addCommand('DocumentDiagnostics', function()
        fzf.diagnostics_document()
      end, {})

      addCommand('WorkspaceDiagnostics', function()
        fzf.diagnostics_workspace()
      end, {})

      fzf.register_ui_select()
    end
  }
}
