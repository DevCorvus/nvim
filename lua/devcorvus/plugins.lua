return {
    -- Core
    "nvim-lua/plenary.nvim",

    -- Package manager for neovim
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    -- Theme and icons
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                transparent = true,
            })
            vim.cmd("colorscheme tokyonight-night")
        end,
    },
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup()
        end,
    },

    -- Fuzzy finder
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
    },

    -- Parser
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
    },

    -- Git integration
    "tpope/vim-fugitive",
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },

    -- Snippets
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },

    -- LSP utils
    {
        "neovim/nvim-lspconfig", -- LSP config kickstarters
        dependencies = {
            {
                "folke/lazydev.nvim", -- Vim global
                ft = "lua",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
    },
    { "mason-org/mason-lspconfig.nvim" },
    {
        "Saghen/blink.cmp", -- Autocompletion
        dependencies = { "rafamadriz/friendly-snippets" },
        version = 'v0.*',
        opts = {
            keymap = { preset = "default" },
            signature = { enabled = true }
        }
    },
    {
        "antosha417/nvim-lsp-file-operations", -- Support for file operations
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-tree.lua",
        },
        config = function()
            require("lsp-file-operations").setup()
        end,
    },
    {
        'mrcjkb/rustaceanvim',
        lazy = false,
    },

    -- Formatting and linting
    "stevearc/conform.nvim",
    {
        "laytan/tailwind-sorter.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
        config = function()
            require("tailwind-sorter").setup({
                on_save_enabled = true,
            })
        end,
        build = "cd formatter && npm ci && npm run build",
    },

    -- Useful stuff
    "nvim-tree/nvim-tree.lua",
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icons = false,
            })
        end,
    },
    "nvim-treesitter/nvim-treesitter-context",
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    section_separators = "",
                    component_separators = "",
                },
            })
        end,
    },
    {
        "j-hui/fidget.nvim",
        tag = "legacy",
        config = function()
            require("fidget").setup()
        end,
    },
    "theprimeagen/harpoon",
    "theprimeagen/refactoring.nvim",
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    "tpope/vim-surround",
    "tpope/vim-commentary",
    "folke/todo-comments.nvim",
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    },
    {
        "RRethy/vim-illuminate",
        config = function()
            require("illuminate").configure()
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    "eandrju/cellular-automaton.nvim" -- The most useful
}
