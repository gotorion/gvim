return {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        animation = true,
        clickable = true,
        icons = {
            buffer_index = false,
            buffer_number = true,
        },
        gitsigns = {
          added = {enabled = true, icon = '+'},
          changed = {enabled = true, icon = '~'},
          deleted = {enabled = true, icon = '-'},
        },
        highlight_visiable = true,
    },
}
