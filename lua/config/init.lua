_G.global = vim.g
_G.execute = vim.cmd
_G.set = vim.opt
_G.get = vim.o
_G.addKeybind = vim.keymap.set
_G.addCommand = vim.api.nvim_create_user_command

local function load(module)
  local success, err = pcall(require, module)
  if not success then
    print(('Something went wrong while trying to load %s: %s'):format(module, err))
  end
end

load('config.keymap')
load('config.options')

addCommand('Debug', function()
  local lazy = require('lazy')
  local list = vim.fn.getcompletion('', 'command')
  if #list == 0 then return end

  local stats = lazy.stats()
  local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
  local message = (('Loaded %s/%s plugins in %sms.'):format(stats.loaded, stats.count, ms))

  table.insert(list, 1, message)

  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, list)

  local window = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = math.min(100, get.columns - 10),
    height = math.min(50, get.lines - 10),
    row = 5,
    col = 5,
    border = 'rounded',
    style = 'minimal',
  })

  vim.api.nvim_win_set_option(window, 'winhl', 'Normal:Normal')
end, {})

addKeybind('n', '<leader>d', '<cmd>Debug<CR>')
