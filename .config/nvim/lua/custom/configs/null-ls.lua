local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local opts = {
  source = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostcs.mypy,
    null_ls.builtins.diagnostcs.ruff,
    null_ls.builtins.diagnostcs.rust_analyzer,
  },
  on_attach = function (client, bufnr)
   if client.supports_method("textDocument/formatting") then
    vim.api.vim_clear_autocmds({
      group = augroup,
      buffer = bufnr,
    })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ buffer = bufnr})
        end,
      })
   end
  end,
}
return opts
