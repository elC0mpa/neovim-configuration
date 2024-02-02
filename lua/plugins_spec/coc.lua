return {
	'neoclide/coc.nvim',
	branch = 'release',
	config = function()
		vim.g.coc_global_extensions = {'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-vetur', 'coc-flutter', 'coc-yank', 'coc-tslint-plugin', 'coc-snippets', 'coc-svelte'}

		local keyset = vim.keymap.set

-- Autocomplete
		function _G.check_back_space()
    			local col = vim.fn.col('.') - 1
    			return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
		end

		local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
		keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
		keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
		keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
		keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})
		keyset("n", "d[", "<Plug>(coc-diagnostic-prev)", {silent = true})
		keyset("n", "d]", "<Plug>(coc-diagnostic-next)", {silent = true})

		-- GoTo code navigation
		keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
		keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
		keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
		keyset("n", "gR", "<Plug>(coc-references)", {silent = true})

		-- Use K to show documentation in preview window
		function _G.show_docs()
    			local cw = vim.fn.expand('<cword>')
    			if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        			vim.api.nvim_command('h ' .. cw)
    			elseif vim.api.nvim_eval('coc#rpc#ready()') then
        			vim.fn.CocActionAsync('doHover')
    			else
        			vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    			end
		end
		keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

		-- Apply codeAction to the selected region
		-- Example: `<leader>aap` for current paragraph
		local opts = {silent = true, nowait = true}
		keyset("n", "ga", "<Plug>(coc-codeaction-cursor)", opts)

		end
}
