return {
    {
        'laytan/cloak.nvim',
        config = function()
            require('cloak').setup({
                enabled = true,
                cloak_character = '*',
                highlight_group = 'Comment',
                cloak_length = nil,
                try_all_patterns = true,
                patterns = {
                    {
                        file_pattern = { '.env*', "conf.cfg" },
                        cloak_pattern = { '=.+', "(sv_licenseKey).+" },
                        replace = nil,
                    },
                },
            })
        end
    }
}
