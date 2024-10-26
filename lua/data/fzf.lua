return {
    fzf_opts = { ['--no-separator'] = false },
    winopts  = {
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
}
