return {
  {
    'ibhagwan/fzf-lua',
    config = function()
      local fzf = require('fzf-lua')
      local addCommand = vim.api.nvim_create_user_command

      addCommand('Search', function()
        fzf.files()
      end, {})

      addCommand('Grep', function()
        fzf.live_grep()
      end, {})

      addCommand('DocumentDiagnostics', function()
        fzf.diagnostics_document()
      end, {})

      addCommand('WorkspaceDiagnostics', function()
        fzf.diagnostics_workspace()
      end, {})

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

      fzf.register_ui_select()
    end
  }
}
