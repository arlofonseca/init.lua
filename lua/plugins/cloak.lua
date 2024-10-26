return {
  {
    'laytan/cloak.nvim',
    config = function()
      require('cloak').setup({
        enabled = true,
        cloak_character = '*',
        cloak_length = nil,
        try_all_patterns = true,
        patterns = {
          {
            file_pattern = { '.env*', 'conf.cfg' },
            cloak_pattern = { '=.+', '(sv_licenseKey).+' },
            replace = nil,
          },
          {
            file_pattern = { '*.json', '*.yaml' },
            cloak_pattern = { '"api_key": "%w+"' },
            replace = '"api_key": "****"',
          },
        },
      })
    end
  }
}
