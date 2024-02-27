-- Usual commands
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('n', '<C-q>', ':q<CR>', opts)
vim.keymap.set('n', '<C-w>', ':Bdelete<CR>', opts)

-- Navigation commands
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-h>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<C-l>', ':bnext<CR>', opts)
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', opts)
vim.keymap.set('i', '<C-t>', '<Esc>:tabnew<CR>', opts)

-- Split commands
vim.keymap.set('n', '<A-l>', '<C-w>l', opts)
vim.keymap.set('n', '<A-h>', '<C-w>h', opts)
vim.keymap.set('n', '<A-v>', '<C-w>v', opts)

-- Telescope
vim.keymap.set('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)
vim.keymap.set('n', '<A-f>', '<cmd>Telescope live_grep<cr>', opts)
vim.keymap.set('n', '<C-f>', '<cmd>Telescope grep_string<cr>', opts)
vim.keymap.set('n', '<A-p>', '<cmd>:TodoTelescope<cr>', opts)

-- Terminal
vim.keymap.set('n', '<C-j>', ':ToggleTerm<CR>', opts)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

-- Find
vim.keymap.set('n', '<Esc>', ':noh<CR>', opts)

-- Folding
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- NeoGit
vim.keymap.set('n', 'gh', ':Neogit<CR>', opts)

-- Diffview
vim.keymap.set('n', 'gH', ':DiffviewFileHistory<CR>', opts)
vim.keymap.set('n', 'gv', function()
	if next(require('diffview.lib').views) == nil then
		vim.cmd('DiffviewOpen')
    	else
		vim.cmd('DiffviewClose')
    	end
  end, opts)
