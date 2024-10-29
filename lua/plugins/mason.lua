return {
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    opts = {
      install = {
        'typescript-language-server',
        'lua-language-server',
        'prettierd',
      },
    },
    config = function(_, opts)
      require('mason').setup(opts)
      local registry = require('mason-registry')

      local function installPackages()
        for _, tool in ipairs(opts.install) do
          local package = registry.get_package(tool)
          if not package:is_installed() then
            package:install()
          end
        end
      end

      registry:on('success', function()
        vim.defer_fn(function()
          require('lazy.core.handler.event').trigger({
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
