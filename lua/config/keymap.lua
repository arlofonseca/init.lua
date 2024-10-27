local success, err = pcall(function()
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
end)

if not success then
  print(('Something went wrong while trying to load keymaps: %s'):format(err))
end
