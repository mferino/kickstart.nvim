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
set("n", "<M-j>", "<C-W>+")
set("n", "<M-k>", "<C-W>-")

-- tab controls
set("n", "<M-t>", ":tabnew<CR>")
set("n", "<M-q>", ":tabclose<CR>")
set("n", "<M-1>", "1gt")
set("n", "<M-2>", "2gt")
set("n", "<M-3>", "3gt")
set("n", "<M-4>", "4gt")
set("n", "<M-5>", "5gt")

-- move tab order
set("n", "tl", ":tabmove -1<CR>")
set("n", "tr", ":tabmove +1<CR>")

-- goto definition in new tab
set("n", "<leader>nt", "<cmd>tab split | lua vim.lsp.buf.definition()<CR>", {})
