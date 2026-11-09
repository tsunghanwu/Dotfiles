require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>vt", function()
  local current = vim.diagnostic.config().virtual_text
  local enabled = current == false
  vim.diagnostic.config({ virtual_text = enabled })
  vim.notify("Diagnostic virtual text " .. (enabled and "enabled" or "disabled"))
end, { desc = "Toggle diagnostic virtual text" })

map("i", "<C-g>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
  desc = "Accept Copilot suggestion",
})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
