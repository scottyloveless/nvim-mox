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
nmap_leader("sf", builtin.find_files, "files")
nmap_leader("s/", builtin.live_grep, "grep")
nmap_leader("sh", builtin.help_tags, "[h]elp")
nmap_leader("sv", builtin.vim_options, "[v]im options")
nmap_leader("sk", builtin.keymaps, "[f]ind [k]eymaps")
nmap_leader("ss", builtin.builtin, "[s]earch [s]elect Telescope")
nmap_leader("dd", builtin.diagnostics, "[d]iagnostics")
nmap_leader("uC", builtin.colorscheme, "[C]olorscheme")
nmap_leader("ss", builtin.builtin, "[s]earch [s]elect Telescope")
nmap_leader("sg", builtin.live_grep, "[s]earch by [g]rep")
nmap_leader("sd", builtin.diagnostics, "[s]earch [d]iagnostics")
nmap_leader("sr", builtin.resume, "[s]earch [r]esume")
nmap_leader("s.", builtin.oldfiles, '[s]earch Recent Files ("." for repeat)')
nmap_leader("sc", builtin.commands, "[s]earch [c]ommands")
nmap_leader("<leader>", builtin.buffers, "[␣] Find existing buffers")
vim.keymap.set({ "n", "v" }, "<leader>sw", builtin.grep_string, { desc = "[s]earch current [w]ord" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
