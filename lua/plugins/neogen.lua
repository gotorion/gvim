return {
    'danymat/neogen',
    config = function ()
        local opts = { noremap = true, silent = true}
        vim.api.nvim_set_keymap('n', '<leader>nf', ":lua require('neogen').generate()<CR>", opts)
        require('neogen').setup({
            enabled = true,
            snippet_engine = 'luasnip',
        })
    end
}
