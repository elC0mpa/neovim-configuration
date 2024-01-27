require('gitsigns').setup {
	signs = {
		add          = {text = '+'},
		change       = {text = '│'},
    		delete       = {text = '_'},
    		topdelete    = {text = '‾'},
    		changedelete = {text = '~'},
  	},
	current_line_blame = true,
  	current_line_blame_opts = {
		virt_text = true,
    		virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    		delay = 1000,
    		virt_text_priority = 100,
  	},
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns

    		local function map(mode, l, r, opts)
      			opts = opts or {}
      			opts.buffer = bufnr
      			vim.keymap.set(mode, l, r, opts)
    		end

    		-- Navigation
    		map('n', 'gj', function()
      			if vim.wo.diff then return 'gj' end
      				vim.schedule(function() gs.next_hunk() end)
      				return '<Ignore>'
    		end, {expr=true})

    		map('n', 'gk', function()
      			if vim.wo.diff then return 'gk' end
      				vim.schedule(function() gs.prev_hunk() end)
      				return '<Ignore>'
    		end, {expr=true})

    		-- Actions
    		map('n', 'gr', gs.reset_hunk)
    		map('n', 'gp', gs.preview_hunk)

    		-- Text object
    		map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  	end
}

