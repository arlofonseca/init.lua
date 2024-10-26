return {
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    keys = { { '<leader>cm', '<cmd>Mason<cr>' } },
    build = ':MasonUpdate',
    opts = {
      ensure_installed = {
        'typescript-language-server',
        'lua-language-server',
        'prettierd',
        'stylua',
      },
    },
    config = function(_, opts)
      require('mason').setup(opts)
      local registry = require('mason-registry')

      registry:on('success', function()
        vim.defer_fn(function()
          require('lazy.core.handler.event').trigger({
            event = 'FileType',
            buf = vim.api.nvim_get_current_buf(),
          })
        end, 100)
      end)

      local function installPackages()
        for _, tool in ipairs(opts.ensure_installed) do
          local package = registry.get_package(tool)
          if not package:is_installed() then
            package:install()
          end
        end
      end

      if registry.refresh then
        registry.refresh(installPackages)
      else
        installPackages()
      end
    end,
  }
}
