vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- man pages
vim.keymap.set("n", "<leader>mp", function()
  local word = vim.fn.expand("<cword>")
  vim.cmd("Man " .. word)
end, { noremap = true, silent = true, desc = "[M]an[P]ages" })
