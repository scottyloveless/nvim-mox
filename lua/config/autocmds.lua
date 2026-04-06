-- Autocommands ===============================================================
-- Don't auto-wrap comments and don't insert comment leader after hitting 'o'.
-- Do on `FileType` to always override these changes from filetype plugins.
local f = function()
	vim.cmd("setlocal formatoptions-=c formatoptions-=o")
end
Config.new_autocmd("FileType", nil, f, "Proper 'formatoptions'")

-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
