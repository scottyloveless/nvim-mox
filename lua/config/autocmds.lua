-- Autocommands ===============================================================
local gr = vim.api.nvim_create_augroup("custom-config", {})
Config.new_autocmd = function(event, pattern, callback, desc)
	local opts = { group = gr, pattern = pattern, callback = callback, desc = desc }
	vim.api.nvim_create_autocmd(event, opts)
end
-- Don't auto-wrap comments and don't insert comment leader after hitting 'o'.
-- Do on `FileType` to always override these changes from filetype plugins.
local f = function()
	vim.cmd("setlocal formatoptions-=c formatoptions-=o")
end
Config.new_autocmd("FileType", nil, f, "Proper 'formatoptions'")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text, cycle numbered registers",
	group = vim.api.nvim_create_augroup("highlight_yanked_text", { clear = true }),
	callback = function()
		vim.hl.on_yank({ higroup = "IncSearch", timeout = 100 })
		-- yank ring
		-- credit: https://github.com/justinmk/config/blob/be345533e05db933baa587f901e08061de5579fa/.config/nvim/init.lua#L676
		if vim.v.event.operator == "y" then
			for i = 9, 1, -1 do -- Shift all numbered registers.
				vim.fn.setreg(tostring(i), vim.fn.getreg(tostring(i - 1)))
			end
		end
	end,
})
