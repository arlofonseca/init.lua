vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.lazyredraw = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 5
vim.opt.shiftwidth = 2
vim.opt.showcmd = true
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.termguicolors = true
vim.opt.wildmenu = true
vim.opt.wildmode = 'list:longest'

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
vim.keymap.set('n', '<leader>term', function() require('toggleterm').toggle() end)

vim.cmd('set cursorline')
vim.cmd('set cursorcolumn')

vim.cmd('set clipboard=unnamedplus')
vim.cmd('set mouse=a')

vim.cmd('set tabstop=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')
