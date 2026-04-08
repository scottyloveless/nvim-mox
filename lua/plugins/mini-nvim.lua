return {
	{
		"nvim-mini/mini.nvim",
		version = false,
	},
	{
		"nvim-mini/mini.icons",
		version = false,
		opts = {},
	},
	{
		"nvim-mini/mini.files",
		version = false,
		lazy = false,
		opts = {
			windows = {
				preview = true,
			},
		},
	},
	{
		"nvim-mini/mini.starter",
		version = false,
		lazy = false,
		opts = {
			footer = function()
				local total_time = (vim.loop.hrtime() - _G.start_time) / 1e6
				return string.format("⚡Startup time: %.2fms", total_time)
			end,
		},
	},
	{
		"nvim-mini/mini.pairs",
		version = false,
		lazy = true,
		opts = {
			modes = {
				insert = true,
				command = true,
				terminal = false,
			},
			skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
			skip_ts = { "string" },
			skip_unbalanced = true,
			markdown = true,
		},
	},
	{
		"nvim-mini/mini.tabline",
		version = false,
		lazy = false,
		opts = {},
	},
	{
		"nvim-mini/mini.misc",
		version = false,
		opts = {},
		-- config = function()
		-- MiniMisc.setup_auto_root()
		-- MiniMisc.setup_restore_cursor()
		-- MiniMisc.setup_termbg_sync()
		-- end,
	},
	{
		"nvim-mini/mini.extra",
		version = false,
		lazy = true,
		opts = {},
	},
	{
		"nvim-mini/mini.ai",
		version = false,
		lazy = true,
		dependencies = {
			"nvim-mini/mini.extra",
		},
		opts = {
			-- 'mini.ai' can be extended with custom textobjects
			-- custom_textobjects = {
			-- 	-- Make `aB` / `iB` act on around/inside whole *b*uffer
			-- 	B = MiniExtra.gen_ai_spec.buffer(),
			-- 	-- For more complicated textobjects that require structural awareness,
			-- 	-- use tree-sitter. This example makes `aF`/`iF` mean around/inside function
			-- 	-- definition (not call). See `:h MiniAi.gen_spec.treesitter()` for details.
			-- 	F = require("mini.ai").gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
			-- },

			-- 'mini.ai' by default mostly mimics built-in search behavior: first try
			-- to find textobject covering cursor, then try to find to the right.
			-- Although this works in most cases, some are confusing. It is more robust to
			-- always try to search only covering textobject and explicitly ask to search
			-- for next (`an`/`in`) or last (`al`/`il`).
			-- Try this. If you don't like it - delete next line and this comment.
			search_method = "cover",
			n_lines = 500,
		},
	},
}
-- 	config = function()
-- 		require("mini.icons").setup()
-- 		require("mini.files").setup()
-- 		require("mini.ai").setup({ n_lines = 500 })
-- 		-- require("mini.starter").setup()
-- 		require("mini.starter").setup({
-- 			footer = function()
-- 				local total_time = (vim.loop.hrtime() - _G.start_time) / 1e6
-- 				return string.format("🚀 Startup time: %.2fms", total_time)
-- 			end,
-- 		})
-- 		require("mini.pairs").setup({
-- 			modes = {
-- 				insert = true,
-- 				command = true,
-- 				terminal = false,
-- 			},
-- 			skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
-- 			skip_ts = { "string" },
-- 			skip_unbalanced = true,
-- 			markdown = true,
-- 		})
-- 		require("mini.tabline").setup()
--
-- 		require("mini.misc").setup()
-- 		MiniMisc.setup_auto_root()
-- 		MiniMisc.setup_restore_cursor()
-- 		-- MiniMisc.setup_termbg_sync()
-- 		require("mini.extra").setup()
-- 		require("mini.ai").setup({
-- 			-- 'mini.ai' can be extended with custom textobjects
-- 			custom_textobjects = {
-- 				-- Make `aB` / `iB` act on around/inside whole *b*uffer
-- 				B = MiniExtra.gen_ai_spec.buffer(),
-- 				-- For more complicated textobjects that require structural awareness,
-- 				-- use tree-sitter. This example makes `aF`/`iF` mean around/inside function
-- 				-- definition (not call). See `:h MiniAi.gen_spec.treesitter()` for details.
-- 				F = require("mini.ai").gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
-- 			},
--
-- 			-- 'mini.ai' by default mostly mimics built-in search behavior: first try
-- 			-- to find textobject covering cursor, then try to find to the right.
-- 			-- Although this works in most cases, some are confusing. It is more robust to
-- 			-- always try to search only covering textobject and explicitly ask to search
-- 			-- for next (`an`/`in`) or last (`al`/`il`).
-- 			-- Try this. If you don't like it - delete next line and this comment.
-- 			search_method = "cover",
-- 		})
-- 	end,
-- }
