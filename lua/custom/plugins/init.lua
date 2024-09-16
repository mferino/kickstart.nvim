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

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<C-s>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      -- Set <space>1..<space>5 be my shortcuts to moving to the files
      for _, idx in ipairs { 1, 2, 3, 4, 5, 6, 7 } do
        vim.keymap.set('n', string.format('<space>%d', idx), function()
          harpoon:list():select(idx)
        end)
      end
    end,
  },
  {
    'rmagatti/auto-session',
    lazy = false,
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
    keys = {
      -- Will use Telescope if installed or a vim.ui.select picker otherwise
      { '<leader>wr', '<cmd>SessionSearch<CR>', desc = 'Session search' },
      { '<leader>ws', '<cmd>SessionSave<CR>', desc = 'Save session' },
      { '<leader>wa', '<cmd>SessionToggleAutoSave<CR>', desc = 'Toggle autosave' },
    },

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      -- ⚠️ This will only work if Telescope.nvim is installed
      -- The following are already the default values, no need to provide them if these are already the settings you want.
      session_lens = {
        -- If load_on_setup is false, make sure you use `:SessionSearch` to open the picker as it will initialize everything first
        load_on_setup = true,
        previewer = false,
        mappings = {
          -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
          delete_session = { 'i', '<C-D>' },
          alternate_session = { 'i', '<C-S>' },
        },
        -- Can also set some Telescope picker options
        theme_conf = {
          border = true,
          -- layout_config = {
          --   width = 0.8, -- Can set width and height as percent of window
          --   height = 0.5,
          -- },
        },
      },
    },
  },
}
