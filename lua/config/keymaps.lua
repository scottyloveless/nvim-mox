vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- clear search highlights

vim.keymap.set("n", "<leader>ul", ":set list!<CR>", { desc = "Toggle WhiteSpace" })

-- MiniFiles ====================
vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "open MiniFiles" })

-- Telescope ====================
local builtin = require("telescope.builtin")
-- searching
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "files" })
vim.keymap.set("n", "<leader>f/", builtin.live_grep, { desc = "grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[b]uffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[h]elp" })
vim.keymap.set("n", "<leader>fv", builtin.vim_options, { desc = "[v]im options" })
-- lsp
vim.keymap.set("n", "<leader>dd", builtin.diagnostics, { desc = "[d]iagnostics" })
-- ui
vim.keymap.set("n", "<leader>uC", builtin.colorscheme, { desc = "[C]olorscheme" })
