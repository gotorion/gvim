return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = function()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }
      map('n', '<leader>g', '<Cmd>Neogit<CR>', opts)
      require('neogit').setup {
        integrations = {
            telescope = true,
            diffview = true,
        },
      }
  end
}
