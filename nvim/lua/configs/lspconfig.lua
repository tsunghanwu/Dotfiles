require("nvchad.configs.lspconfig").defaults()

vim.diagnostic.config({ virtual_text = false })

local servers = { "html", "cssls", "basedpyright", "ruff" }
vim.lsp.enable(servers)

vim.lsp.config("basedpyright", {
  settings = {
    python = {
      pythonPath = "$HOME/Projects/Github/ProcessLab/.venv/bin/python",
      analysis = { autoSearchPaths = true, useLibraryCodeForTypes = true },
    },
  },
})

-- read :h vim.lsp.config for changing options of lsp servers
