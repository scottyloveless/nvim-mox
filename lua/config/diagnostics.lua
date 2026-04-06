-- vim.diagnostic.Config
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = ' ',
            [vim.diagnostic.severity.WARN] = ' ',
            [vim.diagnostic.severity.HINT] = ' ',
            [vim.diagnostic.severity.INFO] = ' ',
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = 'DiagnosticError',
            [vim.diagnostic.severity.WARN] = 'DiagnosticWarn',
            [vim.diagnostic.severity.HINT] = 'DiagnosticHint',
            [vim.diagnostic.severity.INFO] = 'DiagnosticInfo',
        },
    },
    virtual_text = {
        virt_text_pos = 'eol_right_align',
    },
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
        header = '',
    },
})
