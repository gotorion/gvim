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
        --- set diagnostic sign
        vim.fn.sign_define("DiagnosticSignError", {text = " ", texthl = "DiagnosticSignError"})
        vim.fn.sign_define("DiagnosticSignWarn", {text = " ", texthl = "DiagnosticSignWarn"})
        vim.fn.sign_define("DiagnosticSignInfo", {text = " ", texthl = "DiagnosticSignInfo"})
        vim.fn.sign_define("DiagnosticSignHint", {text = "󰌵", texthl = "DiagnosticSignHint"})
        --- set keymap
        vim.keymap.set('n', '<leader>tt', '<cmd>Neotree toggle<CR>', { noremap = true, silent = true, desc = 'Toggle Neo-tree' })
        vim.keymap.set('n', '<leader>tf', '<cmd>Neotree reveal<CR>', { noremap = true, silent = true, desc = 'Reveal file in Neo-tree' })
        vim.keymap.set('n', '<leader>ts', '<cmd>Neotree focus<CR>', { noremap = true, silent = true, desc = 'Focus Neo-tree' })

        require('neo-tree').setup {
            popup_border_stype = 'rounded',
            view = {
                side = 'left',
            }
        }
        -- auto open nvim-tree when open neovim
        local function open_nvim_tree(data)
            -- buffer is a real file on the disk
            local real_file = vim.fn.filereadable(data.file) == 1

            -- buffer is a [No Name]
            local no_name = data.file == '' and vim.bo[data.buf].buftype == ''

            -- only files please
            if not real_file and not no_name then
                return
            end

            -- open the tree but dont focus it
            require('nvim-tree.api').tree.toggle({ focus = false })
            vim.api.nvim_exec_autocmds('BufWinEnter', {buffer = require('nvim-tree.view').get_bufnr()})
        end

        vim.api.nvim_create_autocmd({'VimEnter'}, { callback = open_nvim_tree })
    end
}
