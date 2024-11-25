return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    after = 'mason.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          "ruff",
          "pylsp",
          "rust_analyzer",
        },
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('mason-lspconfig').setup_handlers {
        function(server_name) -- Default handler (optional)
          require('lspconfig')[server_name].setup{}
        end,
      }
    end,
  },
}

