-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'tpope/vim-fugitive',
    vim.keymap.set('n', '<leader>gf', ':Git<cr>', { desc = '[G]it[F]ugitive' }),
  },
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = false,
    },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
  },
  {
    'mbbill/undotree',
    vim.keymap.set('n', '<leader>ut', ':UndotreeToggle<CR>', { desc = '[U]ndo[T]ree' }),
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      vim.keymap.set('n', '<m-h><m-m>', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<m-h><m-l>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      -- Set <space>1..<space>5 be my shortcuts to moving to the files
      for _, idx in ipairs { 1, 2, 3, 4, 5 } do
        vim.keymap.set('n', string.format('<space>%d', idx), function()
          harpoon:list():select(idx)
        end)
      end
    end,
  },
}
