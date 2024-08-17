return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup {
        filesystem = {
          hijack_netrw_behavior = 'open_default',
        },
      }

      vim.keymap.set('n', '<leader>e', ':Neotree reveal<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>b', ':Neotree toggle current reveal_force_cwd<CR>', { noremap = true, silent = true })
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        sections = {
          lualine_x = { 'encoding', 'filetype' }, -- Override the X section to hide OS icon
        },
        options = { section_separators = '', component_separators = '' },
        extensions = { 'neo-tree' },
      }
    end,
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('barbar').setup {
        sidebar_filetypes = {
          ['neo-tree'] = true,
        },
      }
    end,
  },
  {
    'LunarVim/darkplus.nvim',
    config = function()
      vim.cmd.colorscheme 'darkplus'
    end,
  },
  {
    'kawre/leetcode.nvim',
    lazy = 'leetcode.nvim' ~= vim.fn.argv()[1],
    opts = { arg = 'leetcode.nvim' },
    build = ':TSUpdate html',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('leetcode').setup()
    end,
  },
  {
    'lervag/vimtex',
  },
}
