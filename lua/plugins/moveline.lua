return {
    'willothy/moveline.nvim',
    build = 'make',
    config = function()
        local moveline = require('moveline')
        local setkey = vim.keymap.set
        setkey('n', '<M-k>', moveline.up)
        setkey('n', '<M-j>', moveline.down)
        setkey('v', '<M-k>', moveline.block_up)
        setkey('v', '<M-j>', moveline.block_down)

    end
}
