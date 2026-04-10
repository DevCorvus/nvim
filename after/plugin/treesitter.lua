require("nvim-treesitter").setup({
    ensure_installed = { "javascript", "typescript", "lua" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
