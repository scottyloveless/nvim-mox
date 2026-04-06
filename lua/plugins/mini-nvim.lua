return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		require("mini.icons").setup()
		require("mini.files").setup()
		require("mini.ai").setup({ n_lines = 500 })
		-- require("mini.starter").setup()
		require("mini.starter").setup({
			footer = function()
				local total_time = (vim.loop.hrtime() - _G.start_time) / 1e6
				return string.format("🚀 Startup time: %.2fms", total_time)
			end,
		})
		require("mini.pairs").setup()
	end,
}
