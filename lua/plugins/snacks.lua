return {
	"folke/snacks.nvim",
	---@type snacks.Config
	keys = {

		{
			"<leader>bs",
			function()
				Snacks.scratch()
			end,
			desc = "Toggle Scratch Buffer",
		},
		{
			"<leader>sS",
			function()
				Snacks.scratch.select()
			end,
			desc = "Select Scratch Buffer",
		},
		{
			-- snacks
			---@param opts? snacks.lazygit.Config
			"<leader>gl",
			function()
				Snacks.lazygit.open(opts)
			end,
			desc = "[l]azy[g]it",
		},
		opts = {
			lazygit = {},
			scratch = {},
		},
	},
}
