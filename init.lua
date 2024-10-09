require('plugins')
require('maps')

local opt = vim.o

opt.relativenumber = true
opt.number = true
opt.splitright = true
opt.hidden = true

vim.cmd('syntax on')


opt.hlsearch = true 		-- highlight matches
opt.incsearch = true            -- incremental searching
opt.ignorecase = true           -- searches are case insensitive...
opt.smartcase = true            -- ... unless they contain at least one capital letter

opt.clipboard = "unnamedplus"

opt.title = true
local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ':t')

opt.titlestring = ' ' .. cwd
