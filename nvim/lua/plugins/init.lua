return {
  {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup {--[[ your config ]]
      }
      vim.keymap.set('n', '<leader>cm', require('treesj').toggle, { desc = 'Split' })
    end,
  },
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  -- Useful plugin to show you pending keybinds.
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   opts = { integrations = { mini = true, hop = true } },
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme 'catppuccin'
  --   end,
  -- },
  {
    'lambdalisue/suda.vim',
  },
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup {}
    end,
  },
  -- {
  --   'kylechui/nvim-surround',
  --   version = '*', -- Use for stability; omit to use `main` branch for the latest features
  --   event = 'VeryLazy',
  --   config = function()
  --     require('nvim-surround').setup {}
  --   end,
  -- },
  -- {
  -- 	-- Add indentation guides even on blank lines
  -- 	'lukas-reineke/indent-blankline.nvim',
  -- 	-- Enable `lukas-reineke/indent-blankline.nvim`
  -- 	-- See `:help indent_blankline.txt`
  -- 	main = "ibl",
  -- 	opts = {},
  -- },
  {
    'nguyenvukhang/nvim-toggler',
    event = { 'User AstroFile', 'InsertEnter' },
    keys = {
      {
        '<leader>i',
        desc = 'Toggle CursorWord',
      },
    },
    opts = {},
  },
  {
    'gennaro-tedesco/nvim-jqx',
    ft = { 'json', 'yaml' },
  },
}
