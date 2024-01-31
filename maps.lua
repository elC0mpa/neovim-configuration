-- Usual commands
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true })
vim.keymap.set('n', '<C-q>', ':q<CR>', { noremap = true })
vim.keymap.set('n', '<C-w>', ':Bdelete<CR>', { noremap = true })

-- Navigation commands
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', { noremap = true })
vim.keymap.set('n', '<C-h>', ':bprevious<CR>', { noremap = true })
vim.keymap.set('n', '<C-l>', ':bnext<CR>', { noremap = true })
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', { noremap = true })
vim.keymap.set('i', '<C-t>', '<Esc>:tabnew<CR>', { noremap = true })

-- Split commands
vim.keymap.set('n', '<A-l>', '<C-w>l', { noremap = true })
vim.keymap.set('n', '<A-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<A-v>', '<C-w>v', { noremap = true })

-- Telescope
vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.keymap.set('n', '<A-f>', '<cmd>Telescope live_grep<cr>', { noremap = true })
vim.keymap.set('n', '<C-f>', '<cmd>Telescope grep_string<cr>', { noremap = true })
vim.keymap.set('n', '<A-p>', '<cmd>:TodoTelescope<cr>', { noremap = true })

-- Terminal
vim.keymap.set('n', '<C-j>', ':ToggleTerm<CR>', { noremap = true })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- " Find
vim.keymap.set('n', 'Esc', ':noh<CR>', { noremap = true })
