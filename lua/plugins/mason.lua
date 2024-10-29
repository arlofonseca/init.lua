return {
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    keys = { { '<leader>pl', '<cmd>Mason<CR>' } },
    config = function()
      local mason = require('mason')
      local registry = require('mason-registry')
      local handler = require('lazy.core.handler.event')

      local extras = {
        'typescript-language-server',
        'lua-language-server',
        'prettierd',
      }

      mason.setup({
        install = extras,
      })

      local function installPackages()
        for _, tool in pairs(extras) do
          local package = registry.get_package(tool)
          if not package:is_installed() then
            package:install()
          end
        end
      end

      registry:on('success', function()
        vim.defer_fn(function()
          handler.trigger({
            event = 'FileType',
            buf = vim.api.nvim_get_current_buf(),
          })
        end, 100)
      end)

      if registry.refresh then
        registry.refresh(installPackages)
      else
        installPackages()
      end
    end
  }
}
