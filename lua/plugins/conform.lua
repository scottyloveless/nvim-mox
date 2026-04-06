return {
    'stevearc/conform.nvim',
    opts = {
        lua = { "stylua", stop_after_first = true },
        go = { "goimports", "gofumpt", stop_after_first = true },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
