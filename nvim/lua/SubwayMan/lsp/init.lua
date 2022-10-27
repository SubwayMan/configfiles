local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "SubwayMan.lsp.configs"
require("SubwayMan.lsp.handlers").setup()
require "SubwayMan.lsp.null-ls"
