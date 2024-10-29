local success, err = pcall(function()
  global.mapleader = ' '
  global.netrw_banner = 0

  execute('set cursorline')
  execute('set cursorcolumn')

  execute('set tabstop=2')
  execute('set softtabstop=2')
  execute('set shiftwidth=2')
  set.autoindent = true
  set.smartindent = true
  set.expandtab = true

  set.number = true
  set.relativenumber = true
  set.showcmd = true
  set.termguicolors = true
  set.wrap = false

  set.updatetime = 50
end)

if not success then
  print(('Something went wrong while trying to load options: %s'):format(err))
end
