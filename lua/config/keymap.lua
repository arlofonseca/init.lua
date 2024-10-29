local success, err = pcall(function()
  addKeybind('n', '<C-s>', ':w<CR>')
  addKeybind('n', '<C-q>', ':qa!<CR>')
  addKeybind('n', '<C-z>', 'u')
  addKeybind('v', '<C-c>', '"+y')
  addKeybind('n', 'q', ':b#<CR>')
  addKeybind('n', '<Esc>', ':close<CR>', { noremap = true })
end)

if not success then
  print(('Something went wrong while trying to load keymaps: %s'):format(err))
end
