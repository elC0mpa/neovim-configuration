return {
	'lewis6991/gitsigns.nvim',
	opts = {
  		signs = {
    			add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    			change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    			delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    			topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    			changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  		},
  		signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  		numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  		linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  		word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  		watch_gitdir = {
    			interval = 1000,
    			follow_files = true
  		},
  		attach_to_untracked = true,
  		current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  		current_line_blame_opts = {
    			virt_text = true,
    			virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    			delay = 500,
    			ignore_whitespace = false,
  		},
  		current_line_blame_formatter_opts = {
    			relative_time = false
  		},
  		sign_priority = 6,
  		update_debounce = 100,
  		status_formatter = nil, -- Use default
  		max_file_length = 40000,
  		preview_config = {
    		-- Options passed to nvim_open_win
    			border = 'single',
    			style = 'minimal',
    			relative = 'cursor',
    			row = 0,
    			col = 1
  		},
  		yadm = {
    			enable = false
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
}

