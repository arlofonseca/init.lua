local path = ('%s/lazy/lazy.nvim'):format(vim.fn.stdpath('data'))

if not vim.loop.fs_stat(path) then
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', path})
end

vim.opt.rtp:prepend(path)

require('config')
require('lazy').setup('plugins')