vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp_attach", { clear = true }),
    callback = function(event)
        local opts = { buffer = event.buf, remap = false }

        vim.keymap.set("n", "gd", function()
            vim.lsp.buf.definition()
        end, opts)
        vim.keymap.set("n", "<leader>vd", function()
            vim.diagnostic.open_float()
        end, opts)
    end
})

-- Vue support
local lspconfig = require("lspconfig")
lspconfig.volar.setup({
    init_options = {
        vue = {
            hybridMode = false,
        },
    }
})
lspconfig.ts_ls.setup({
    init_options = {
        plugins = {
            {
                name = "@vue/typescript-plugin",
                location = vim.fn.stdpath("data") ..
                    "/mason/packages" .. "/vue-language-server/node_modules/@vue/language-server",
                languages = { 'vue' }
            },
        },
    },
})

require("mason-lspconfig").setup({
    automatic_enable = true, -- Automatic call to vim.lsp.enable()
    ensure_installed = {
        "lua_ls",
        "ts_ls",
        "volar",
        "pyright",
        "gopls",
        "rust_analyzer",
    },
})
