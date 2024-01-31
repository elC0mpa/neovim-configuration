vim.cmd('so ~/.config/nvim/vim-plug/plugins.vim')
require('maps')
require('coc')
require('lua-tree')
require('bufferline')
require('gitsigns')
require('comment')
require('toggleterm')
require('treesitter')
require('blankline')
require('colorizer')
require('autopairs')
require('lualine')
require('todo')
require('leap')

local opt = vim.o
local global = vim.g

opt.relativenumber = true
opt.number = true
opt.splitright = true
opt.hidden = true

vim.cmd('syntax on')
vim.cmd('colorscheme gruvbox')

global.gruvbox_contrast_dark = "hard"

opt.hlsearch = true 		-- highlight matches
opt.incsearch = true            -- incremental searching
opt.ignorecase = true           -- searches are case insensitive...
opt.smartcase = true            -- ... unless they contain at least one capital letter

opt.clipboard = "unnamedplus"


