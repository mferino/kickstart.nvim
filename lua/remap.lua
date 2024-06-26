local set = vim.keymap.set

set("n", "<C-k>", "<cmd>cnext<CR>zz")
set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- man pages
set("n", "<leader>mp", function()
  local word = vim.fn.expand("<cword>")
  vim.cmd("Man " .. word)
end, { noremap = true, silent = true, desc = "[M]an[P]ages" })

-- window controls
set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")
