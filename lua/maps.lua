local opts = { noremap= true}
-- Usual commands
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('n', '<C-q>', ':q<CR>', opts)
vim.keymap.set('n', '<C-w>', ':Bdelete<CR>', opts)

-- Find
vim.keymap.set('n', '//', ':noh<CR>', opts)

-- NvimTree 
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', opts)

-- Split Navigation Commands
vim.keymap.set('n', '<A-l>', '<C-w>l', opts)
vim.keymap.set('n', '<A-h>', '<C-w>h', opts)
vim.keymap.set('n', '<A-v>', ':vsplit<CR>', opts)

-- Navigation commands
vim.keymap.set('n', '<C-h>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<C-l>', ':bnext<CR>', opts)
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', opts)
vim.keymap.set('i', '<C-t>', '<Esc>:tabnew<CR>', opts)

-- Terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

-- Telescope
vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)
vim.keymap.set('n', '<C-f>', '<cmd>Telescope live_grep<cr>', opts)
vim.keymap.set('n', '<A-t>', '<cmd>Telescope grep_string<cr>', opts)
vim.keymap.set('i', '<A-b>', '<cmd>Telescope buffers<cr>', opts)
