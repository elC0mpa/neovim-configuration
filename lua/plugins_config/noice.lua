return {
	"folke/noice.nvim",
  	event = "VeryLazy",
	opts = {
		presets = {
    			command_palette = true, -- position the cmdline and popupmenu together
  		},
	},
  	dependencies = {
    		"MunifTanjim/nui.nvim",
    		"rcarriga/nvim-notify",
    	}
}
