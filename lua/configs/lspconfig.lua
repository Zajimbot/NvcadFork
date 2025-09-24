require("nvchad.configs.lspconfig").defaults()

local config = require("nvchad.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

-- Настройка tsserver (заменяет jsserver)
lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 
    "javascript", 
    "javascriptreact", 
    "javascript.jsx",
    "typescript", 
    "typescriptreact", 
    "typescript.tsx" 
  },
  settings = {
    typescript = {
      suggest = {
        completeFunctionCalls = true,
        includeCompletionsForModuleExports = true,
      },
    },
    javascript = {
      suggest = {
        completeFunctionCalls = true,
        includeCompletionsForModuleExports = true,
      },
    },
  },
})

-- Остальные LSP серверы
local servers = { "html", "cssls", "gopls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end
