return require("packer").startup(function(use)
    -- Package manager itself
    use("wbthomason/packer.nvim")

    -- Core
    use("nvim-lua/plenary.nvim")

    -- Fuzzy finder
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
    })

    -- Theme
    use({
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd("colorscheme tokyonight-night")
        end,
    })

    -- Parser
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
    })

    -- Git integration
    use("tpope/vim-fugitive")
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    })

    -- La señora penelope (LSP)
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })
    use({
        "ray-x/lsp_signature.nvim",
        config = function()
            require("lsp_signature").setup({
                hint_prefix = "SIG ",
            })
        end,
    })
    use({
        "simrat39/rust-tools.nvim",
        config = function()
            require("rust-tools").setup()
        end,
    })

    -- Formatting and linting
    use("jose-elias-alvarez/null-ls.nvim")

    -- Useful stuff
    use("nvim-tree/nvim-tree.lua")
    use({
        "akinsho/toggleterm.nvim",
        tag = "*",
    })
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icons = false,
            })
        end,
    })
    use("nvim-treesitter/nvim-treesitter-context")
    use({
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    section_separators = "",
                    component_separators = "",
                },
            })
        end,
    })
    use({
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup()
        end,
    })
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })
    use({
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    })
    use("tpope/vim-surround")
    use("tpope/vim-commentary")
    use("folke/todo-comments.nvim")
    use({
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    })
    use({
        "RRethy/vim-illuminate",
        config = function()
            require("illuminate").configure()
        end,
    })
    use({
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
    })
    use("eandrju/cellular-automaton.nvim") -- The most useful
end)
