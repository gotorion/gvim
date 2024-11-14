local conf = {
    "polirritmico/monokai-nightasty.nvim",
    -- "miikanissi/modus-themes.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- vim.cmd([[colorscheme modus_operandi]])
        require("monokai-nightasty").setup{}
        require("monokai-nightasty").load{}
    end
}
return conf
