local success, error = pcall(function()
  vim.keymap.set('n', 'u', '<Nop>')
  vim.keymap.set('n', 'p', '<Nop>')
  vim.keymap.set('n', '<Space>', '<Nop>')
  vim.keymap.set('n', '<C-f>', '/<C-r><C-w><CR>')
  vim.keymap.set('n', '<C-s>', ':w<CR>')
  vim.keymap.set('n', '<C-q>', ':qa!<CR>')
  vim.keymap.set('n', '<C-z>', 'u')
  vim.keymap.set({ 'n', 'v' }, '<C-c>', '\'+y')
  vim.keymap.set('n', '<leader>gb', ':bprev<CR>')
  vim.keymap.set('n', '<leader>gf', ':bnext<CR>')

  vim.api.nvim_create_user_command('Debug', function()
    local list = vim.fn.getcompletion("", "command")
    if #list == 0 then return end

    local stats = require("lazy").stats()
    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
    local message = (("Loaded %s/%s plugins in %sms."):format(stats.loaded, stats.count, ms))

    table.insert(list, 1, message)

    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, list)

    local window = vim.api.nvim_open_win(buf, true, {
      relative = 'editor',
      width = math.min(100, vim.o.columns - 10),
      height = math.min(50, vim.o.lines - 10),
      row = 5,
      col = 5,
      border = 'rounded',
      style = 'minimal',
    })

    vim.api.nvim_buf_set_keymap(buf, 'n', '<Esc>', ':close<CR>', { noremap = true, silent = true })
    vim.api.nvim_win_set_option(window, 'winhl', 'Normal:Normal')
  end, {})
end)

if not success then
  print(('Something went wrong while trying to load keymaps: %s'):format(error))
end
