_G.vim = vim

local data_path = vim.fn.stdpath('data')
local lazy_path = ('%s/lazy/lazy.nvim'):format(data_path)

if not vim.loop.fs_stat(lazy_path) then
  vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazy_path })
end

vim.opt.rtp:prepend(lazy_path)

local function load(module)
  local success, error = pcall(require, module)
  if not success then
    vim.notify(('Something went wrong while trying to load %s: %s'):format(module, error), vim.log.levels.ERROR)
  end
end

load('config.keymap')
load('config.options')

require('lazy').setup('plugins')
