local nmap = function(lhs, rhs, desc)
	-- See `:h vim.keymap.set()`
	vim.keymap.set("n", lhs, rhs, { desc = desc })
end

local nmap_leader = function(suffix, rhs, desc)
	vim.keymap.set("n", "<Leader>" .. suffix, rhs, { desc = desc })
end

nmap("<Esc>", "<cmd>nohlsearch<CR>") -- clear search highlights

-- MiniFiles ====================
nmap_leader("e", "<cmd>lua MiniFiles.open()<CR>", "[e]xplorer")

-- Telescope ====================
local builtin = require("telescope.builtin")
-- finding
nmap_leader("ff", builtin.find_files, "files")
nmap_leader("f/", builtin.live_grep, "grep")
nmap_leader("fh", builtin.help_tags, "help")
nmap_leader("fv", builtin.vim_options, "vim options")
nmap_leader("fk", builtin.keymaps, "keymaps")
nmap_leader("fs", builtin.builtin, "select Telescope")
nmap_leader("fd", builtin.diagnostics, "diagnostics")
nmap_leader("fd", builtin.diagnostics, "diagnostics")
nmap_leader("fr", builtin.resume, "resume")
nmap_leader("f.", builtin.oldfiles, 'recent Files ("." for repeat)')
nmap_leader("fc", builtin.commands, "commands")
nmap_leader("<leader>", builtin.buffers, "current buffers")
vim.keymap.set({ "n", "v" }, "<leader>fw", builtin.grep_string, { desc = "current [w]ord" })

-- windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- ui
nmap_leader("uC", builtin.colorscheme, "Colorscheme")
nmap_leader("ul", ":set list!<CR>", "Toggle WhiteSpace")
