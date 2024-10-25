return {
    'nvim-tree/nvim-web-devicons',
    {
        'mbbill/undotree',
        event = "BufReadPre",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    },
    {
        'nvim-pack/nvim-spectre',
        config = function()
            vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").toggle()<CR>')
        end
    }
}
