require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        python = { "isort", "black" },
        go = { "goimports", "gofmt" },
        rust = { "rustfmt", lsp_format = "fallback" },
    },
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})
