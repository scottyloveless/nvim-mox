local nmap = function(lhs, rhs, desc)
	-- See `:h vim.keymap.set()`
	vim.keymap.set("n", lhs, rhs, { desc = desc })
end

local nmap_leader = function(suffix, rhs, desc)
	vim.keymap.set("n", "<Leader>" .. suffix, rhs, { desc = desc })
end

nmap("<Esc>", "<cmd>nohlsearch<CR>") -- clear search highlights

nmap_leader("ul", ":set list!<CR>", "Toggle WhiteSpace")

-- MiniFiles ====================
nmap_leader("e", "<cmd>lua MiniFiles.open()<CR>", "[e]xplorer")

-- Telescope ====================
local builtin = require("telescope.builtin")
-- searching
nmap_leader("ff", builtin.find_files, "files")
nmap_leader("f/", builtin.live_grep, "grep")
nmap_leader("fh", builtin.help_tags, "[h]elp")
nmap_leader("fv", builtin.vim_options, "[v]im options")
nmap_leader("fk", builtin.keymaps, "[f]ind [k]eymaps")
nmap_leader("fs", builtin.builtin, "[f]ind [s]elect Telescope")
nmap_leader("fd", builtin.diagnostics, "[d]iagnostics")
nmap_leader("fC", builtin.colorscheme, "[C]olorscheme")
nmap_leader("fs", builtin.builtin, "[f]ind [s]elect Telescope")
nmap_leader("fg", builtin.live_grep, "[f]ind by [g]rep")
nmap_leader("fd", builtin.diagnostics, "[f]ind [d]iagnostics")
nmap_leader("fr", builtin.resume, "[f]ind [r]esume")
nmap_leader("f.", builtin.oldfiles, '[f]ind Recent Files ("." for repeat)')
nmap_leader("fc", builtin.commands, "[f]ind [c]ommands")
nmap_leader("<leader>", builtin.buffers, "[␣] Find existing buffers")
vim.keymap.set({ "n", "v" }, "<leader>sw", builtin.grep_string, { desc = "[s]earch current [w]ord" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
