local addCommand = vim.api.nvim_create_user_command

addCommand('Debug', function()
  local list = vim.fn.getcompletion('', 'command')
  if #list == 0 then return end

  local stats = require('lazy').stats()
  local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
  local message = (('Loaded %s/%s plugins in %sms.'):format(stats.loaded, stats.count, ms))

  table.insert(list, 1, message)

  local buf = vim.api.nvim_create_buf(false, true)
  local lines = vim.api.nvim_buf_set_lines

  lines(buf, 0, -1, false, list)

  local window = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = math.min(100, vim.o.columns - 10),
    height = math.min(50, vim.o.lines - 10),
    row = 5,
    col = 5,
    border = 'rounded',
    style = 'minimal',
  })

  -- we can't use vim.keymap.set here or
  -- it breaks
  vim.api.nvim_buf_set_keymap(buf, 'n', '<Esc>', ':close<CR>', { noremap = true, silent = true })
  vim.api.nvim_win_set_option(window, 'winhl', 'Normal:Normal')
end, {})

addCommand('DebugConfig', function()
  vim.cmd('edit $MYVIMRC')
end, {})

addCommand('DebugRelativeNumbers', function()
  vim.wo.relativenumber = not vim.wo.relativenumber
  print(('Relative line numbers have been %s.'):format(vim.wo.relativenumber and 'enabled' or 'disabled'))
end, {})

-- no point to use a external terminal system
-- like toggleterm or nvim-terminal
addCommand('DebugTerminal', function()
  vim.cmd('tabnew | terminal')
end, {})
