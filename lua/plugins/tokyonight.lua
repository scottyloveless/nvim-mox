return {
	"folke/tokyonight.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("tokyonight").setup({
			-- transparent = true,
			styles = {
				-- sidebars = "transparent",
				-- floats = "transparent",
				comments = { italic = false }, -- Disable italics in comments
			},
			-- cache = true,
		})

		-- Load the colorscheme here.
		vim.cmd("colorscheme tokyonight-night")
		-- Like many other themes, this one has different styles, and you could load
		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
	end,
}
