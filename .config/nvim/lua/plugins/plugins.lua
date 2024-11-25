return {

    -- Alpha (Dashboard)
    {
        "goolord/alpha-nvim",
        lazy = true,
    },


    -- Auto Pairs
    {
        "windwp/nvim-autopairs"
    },

    -- Bufferline
    {
        'akinsho/bufferline.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
    },

    -- Colorscheme
    {
        'folke/tokyonight.nvim',
    },

    -- Git Integration
    -- Added this plugin
    {
        "lewis6991/gitsigns.nvim",
    },

    -- Hop (Better Navigation)
    {
        "phaazon/hop.nvim",
        lazy = true,
    },

    -- Indentation Highlighting
    {
        "lukas-reineke/indent-blankline.nvim",
    },

    -- Rainbow Highlighting
    {
        "HiPhish/nvim-ts-rainbow2"
    },

    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
    },


    -- Language Support
    {
        'VonHeikemen/lsp-zero.nvim',
        lazy = true,
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },


    -- Nvim-tree (File Explorer)
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },


    -- Nvim-Surround (Manipulating Surroundings)
    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },


    -- Telescope (Fuzzy Finder)
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            {'nvim-lua/plenary.nvim'},
        }
    },


    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
    },


    -- Toggle Term
    {
        'akinsho/toggleterm.nvim',
        config = true
    },

    -- Undo-Tree
    {
        "jiaoshijie/undotree",
      dependencies  = {
            "nvim-lua/plenary.nvim",
        },
    },

    -- Which-key
    {
        'folke/which-key.nvim',
        lazy = true,
    },

}
