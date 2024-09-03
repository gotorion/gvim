return {
    "nvim-telescope/telescope.nvim", tag = '0.1.8',
    dependencies = { "nvim-lua/plenary.nvim", },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
        vim.keymap.set('n', '<leader>fc', builtin.lsp_incoming_calls, {})
        vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
        vim.keymap.set('n', '<leader>fe', builtin.diagnostics, {})
        vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, {})
        vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})
        require('telescope').setup {
            pickers = {
                file_files = {
                    theme = 'cursor'
                },
            }
        }
    end
}
