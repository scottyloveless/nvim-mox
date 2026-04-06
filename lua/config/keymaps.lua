vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- clear search highlights

vim.keymap.set("n", "<leader>ul", ":set list!<CR>", { desc = "Toggle WhiteSpace" })

vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<CR>", { desc = "open MiniFiles" })
