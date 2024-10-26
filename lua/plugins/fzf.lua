return {
    'ibhagwan/fzf-lua',
    event = 'VeryLazy',
    config = function()
        local config = require('data/fzf')
        require('fzf-lua').setup(config)
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
