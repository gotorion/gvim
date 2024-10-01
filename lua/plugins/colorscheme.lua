local conf = {
    "miikanissi/modus-themes.nvim",
    priority = 1000,
    config = function()
        vim.cmd("colorscheme modus_operandi")
    end
}
return conf
