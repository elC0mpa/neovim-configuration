vim.opt.termguicolors = true

return {
	'akinsho/bufferline.nvim',
	dependencies = {
		'famiu/bufdelete.nvim'
	},
	opts = {
  		options = {
    		numbers = "ordinal",
    		indicator = {
        		style = 'underline'
    		},
    		buffer_close_icon = '',
    		modified_icon = '●',
    		close_icon = '',
    		left_trunc_marker = '',
    		right_trunc_marker = '',
    		diagnostics = "coc",
    		diagnostics_indicator = function(count, level, diagnostics_dict, context)
      			return "("..count..")"
    		end,
    		show_buffer_icons = true,
    		show_buffer_close_icons = true,
    		show_close_icon = true,
    		show_tab_indicators = true,
    		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    		enforce_regular_tabs = false,
    		always_show_bufferline = true,
    		separator_style = "padded_slant" 
  		}
	}
}
