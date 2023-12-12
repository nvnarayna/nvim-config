local base = require("plugins.configs.lspconfig")

local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  filetype = {"C++"},
  capabilities = capabilities,
}

lspconfig.pyright.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  filetype={"python"},
})

