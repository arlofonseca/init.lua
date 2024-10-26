vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.lazyredraw = true
vim.o.scrolloff = 8

vim.keymap.set("n", "<leader>ls", vim.cmd.Ex)
vim.keymap.set("n", "<C-f>", "/<C-r><C-w><CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<C-q>", ":qa!<CR>")
vim.keymap.set("n", "<C-z>", 'u')
vim.keymap.set("n", "<C-y>", '<C-r>')
vim.keymap.set({ "n", "v" }, "<C-c>", "\"+y")
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>")
vim.keymap.set("n", "u", "<Nop>")
vim.keymap.set("n", "p", "<Nop>")
vim.keymap.set("n", "<Space>", "<Nop>")
vim.cmd("autocmd BufEnter * normal! m`")
vim.keymap.set("n", "<Esc>", ":b#<CR>")

vim.keymap.set('n', '<leader>term', function()
  require('toggleterm').toggle()
end)

vim.cmd("set cursorline")
vim.cmd("set cursorcolumn")

vim.cmd("set clipboard=unnamedplus")
vim.cmd("set mouse=a")
vim.cmd("set showmode")

vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
