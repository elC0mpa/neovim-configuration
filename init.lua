require('maps')
require('plugins')

local opt = vim.o

opt.number = true               -- line numbers
opt.relativenumber = true 	-- relative numbers

opt.hlsearch = true             -- highlight matches
opt.incsearch = true            -- incremental searching
opt.ignorecase = true           -- searches are case insensitive...
opt.smartcase = true            -- ... unless they contain at least one capital letter

opt.clipboard = "unnamedplus"   -- to use the operating system clipboard
opt.hidden = true               -- to save the state of terminals

opt.termguicolors = true

