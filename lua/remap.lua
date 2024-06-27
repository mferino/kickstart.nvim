local set = vim.keymap.set

set("n", "<C-k>", "<cmd>cnext<CR>zz")
set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- man pages
set("n", "<leader>mp", function()
  local word = vim.fn.expand("<cword>")
  vim.cmd("Man " .. word)
end, { noremap = true, silent = true, desc = "[M]an[P]ages" })

-- window controls
set("n", "<M-h>", "<c-w>5<")
set("n", "<M-l>", "<c-w>5>")
set("n", "<M-k>", "<C-W>+")
set("n", "<M-j>", "<C-W>-")

-- tab controls
set("n", "<M-t>", ":tabnew<CR>")
set("n", "<M-q>", ":tabclose<CR>")
set("n", "<M-1>", "1gt")
set("n", "<M-2>", "2gt")
set("n", "<M-3>", "3gt")
set("n", "<M-4>", "4gt")
set("n", "<M-5>", "5gt")
