local conf = {
    "EdenEast/nightfox.nvim",
    -- "miikanissi/modus-themes.nvim",
    priority = 1000,
    config = function()
        require('nightfox').setup {

        }
        vim.cmd("colorscheme dayfox")
        -- vim.cmd("colorscheme modus_operandi")
    end
}
return conf
