vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- clear search highlights

vim.keymap.set("n", "<leader>ul", ":set list!<CR>", { desc = "Toggle WhiteSpace" })

-- MiniFiles ====================
vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "open MiniFiles" })

-- Telescope ====================
local builtin = require("telescope.builtin")
-- searching
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "files" })
vim.keymap.set("n", "<leader>s/", builtin.live_grep, { desc = "grep" })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[h]elp" })
vim.keymap.set("n", "<leader>sv", builtin.vim_options, { desc = "[v]im options" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[f]ind [k]eymaps" })
vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[s]earch [s]elect Telescope" })
-- lsp
vim.keymap.set("n", "<leader>dd", builtin.diagnostics, { desc = "[d]iagnostics" })
-- ui
vim.keymap.set("n", "<leader>uC", builtin.colorscheme, { desc = "[C]olorscheme" })

vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[s]earch [s]elect Telescope" })
vim.keymap.set({ "n", "v" }, "<leader>sw", builtin.grep_string, { desc = "[s]earch current [w]ord" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[s]earch by [g]rep" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[s]earch [d]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[s]earch [r]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[s]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader>sc", builtin.commands, { desc = "[s]earch [c]ommands" })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
