return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", 
    },
    config = function()
        vim.keymap.set('n', '<leader>tt', '<cmd>Neotree toggle<CR>', { noremap = true, silent = true, desc = 'Toggle Neo-tree' })
        vim.keymap.set('n', '<leader>tf', '<cmd>Neotree reveal<CR>', { noremap = true, silent = true, desc = 'Reveal file in Neo-tree' })
        vim.keymap.set('n', '<leader>ts', '<cmd>Neotree focus<CR>', { noremap = true, silent = true, desc = 'Focus Neo-tree' })

        require('neo-tree').setup {
            view = {
                side = 'right',
            }
        }
    end
}
