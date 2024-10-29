local success, err = pcall(function()
  vim.keymap.set('n', '<C-s>', ':w<CR>')
  vim.keymap.set('n', '<C-q>', ':qa!<CR>')
  vim.keymap.set('n', '<C-z>', 'u')
  vim.keymap.set('n', 'q', ':b#<CR>')
  vim.keymap.set('n', '<Esc>', ':close<CR>', { noremap = true })
end)

if not success then
  print(('Something went wrong while trying to load keymaps: %s'):format(err))
end
