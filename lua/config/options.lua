local success, err = pcall(function()
  vim.g.mapleader = ' '
  vim.g.netrw_banner = 0

  vim.cmd('set cursorline')
  vim.cmd('set cursorcolumn')

  vim.cmd('set tabstop=2')
  vim.cmd('set softtabstop=2')
  vim.cmd('set shiftwidth=2')
  vim.opt.autoindent = true
  vim.opt.smartindent = true
  vim.opt.expandtab = true

  vim.opt.lazyredraw = true
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.scrolloff = 5
  vim.opt.showcmd = true
  vim.opt.termguicolors = true
  vim.opt.wildmenu = true
  vim.opt.wildmode = 'list:longest'
  vim.opt.wrap = false

  vim.opt.updatetime = 50
end)

if not success then
  print(('Something went wrong while trying to load options: %s'):format(err))
end
