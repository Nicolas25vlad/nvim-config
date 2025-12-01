-- lua/configs/lsp.lua
-- Mason (LSP manager)
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls', 'pyright', 'ts_ls', 'html', 'cssls', 'jsonls' -- Note: 'tsserver' is now 'ts_ls'
  }
})

-- Initialize lspconfig to make its configurations available
require("lspconfig")

-- List of servers to enable
local servers = {
  'lua_ls',
  'pyright',
  'ts_ls',    -- Use 'ts_ls' instead of the deprecated 'tsserver'
  'html',
  'cssls',
  'jsonls'
}

-- Enable each server
for _, server in ipairs(servers) do
  vim.lsp.enable(server)
end

-- Optional: Global LSP settings
vim.lsp.config('*', {
  on_attach = function(client, bufnr)
    -- Your custom on_attach function here
    -- Set keymaps, etc.
  end
})

print("LSP configured successfully with new API!")