-- -- vim.diagnostic.Config
-- vim.diagnostic.config({
--     signs = {
--         text = {
--             [vim.diagnostic.severity.ERROR] = ' ',
--             [vim.diagnostic.severity.WARN] = ' ',
--             [vim.diagnostic.severity.HINT] = ' ',
--             [vim.diagnostic.severity.INFO] = ' ',
--         },
--         numhl = {
--             [vim.diagnostic.severity.ERROR] = 'DiagnosticError',
--             [vim.diagnostic.severity.WARN] = 'DiagnosticWarn',
--             [vim.diagnostic.severity.HINT] = 'DiagnosticHint',
--             [vim.diagnostic.severity.INFO] = 'DiagnosticInfo',
--         },
--     },
--     virtual_text = {
--         virt_text_pos = 'eol_right_align',
--     },
--     update_in_insert = false,
--     underline = true,
--     severity_sort = true,
--     float = {
--         header = '',
--     },
-- })

-- local diagnostic_opts = {
-- 	-- Show signs on top of any other sign, but only for warnings and errors
-- 	signs = { priority = 9999, severity = { min = "WARN", max = "ERROR" } },
--
-- 	-- Show all diagnostics as underline (for their messages type `<Leader>ld`)
-- 	underline = { severity = { min = "HINT", max = "ERROR" } },
--
-- 	-- Show more details immediately for errors on the current line
-- 	virtual_lines = false,
-- 	virtual_text = {
-- 		current_line = true,
-- 		severity = { min = "ERROR", max = "ERROR" },
-- 	},
--
-- 	-- Don't update diagnostics when typing
-- 	update_in_insert = false,
-- }

-- Use `later()` to avoid sourcing `vim.diagnostic` on startup
-- Config.later(function()
vim.diagnostic.config({
	-- Show signs on top of any other sign, but only for warnings and errors
	signs = { priority = 9999, severity = { min = "WARN", max = "ERROR" } },

	-- Show all diagnostics as underline (for their messages type `<Leader>ld`)
	underline = { severity = { min = "HINT", max = "ERROR" } },

	-- Show more details immediately for errors on the current line
	virtual_lines = false,
	virtual_text = {
		current_line = true,
		severity = { min = "ERROR", max = "ERROR" },
	},

	-- Don't update diagnostics when typing
	update_in_insert = false,
})
-- end)
-- stylua: ignore end
