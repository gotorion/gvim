return {
    "nvim-telescope/telescope.nvim", tag = '0.1.8',
    dependencies = { "nvim-lua/plenary.nvim", },
    config = function()
        local builtin = require('telescope.builtin')
        local wk = require('which-key')
        wk.add({
            { "<leader>ff", function() builtin.find_files() end, desc = "find file" },
            { '<leader>fg', function() builtin.live_grep() end, desc = "find grep" },
            { '<leader>fb', function() builtin.buffers() end, desc = "find buffer" },
            { '<leader>fh', function() builtin.help_tags() end, desc = "find help" },
            { '<leader>fr', function() builtin.lsp_references() end, desc = "find reference" },
            { '<leader>fc', function() builtin.lsp_incoming_calls() end, desc = "find incomming calls" },
            { '<leader>fs', function() builtin.lsp_document_symbols() end },
            { '<leader>fe', function() builtin.diagnostics() end, desc = "find diagnostics" },
            { '<leader>fd', function() builtin.lsp_definitions() end, desc = "find definitions" },
            { '<leader>fi', function() builtin.lsp_implementations() end, desc = "find implementations" },
            { '<leader>fm', function() builtin.man_pages() end, desc = "find man pages" },
            { '<leader>f,', "<cmd>Telescope git_commits<CR>" },
            { '<leader>fb', "<cmd>Telescope git_branches<CR>" },
        })

        require('telescope').setup {
            pickers = {
                file_files = {
                    theme = 'cursor'
                },
            },
            mappings = {
                n = {  ["<esc>"] = require('telescope.actions').close, },
            },
        }
    end
}
