return {
	"nvim-mini/mini.nvim",
	version = false,
    config = function()
        require('mini.icons').setup()
        require('mini.files').setup()
        require('mini.ai').setup { n_lines = 500 }
    end,
}
