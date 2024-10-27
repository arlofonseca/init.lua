local data_path = vim.fn.stdpath('data')
local lazy_path = ('%s/lazy/lazy.nvim'):format(data_path)

if not vim.loop.fs_stat(lazy_path) then
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazy_path })
end

vim.opt.rtp:prepend(lazy_path)

require('config')
require('lazy').setup('plugins')
