-- local conf = {
--     "polirritmico/monokai-nightasty.nvim",
--     -- "miikanissi/modus-themes.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         -- vim.cmd([[colorscheme modus_operandi]])
--         require("monokai-nightasty").setup{}
--         require("monokai-nightasty").load{}
--     end
-- }

local conf = {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config =function()
        vim.o.background = 'light'
        local c = require('vscode.colors').get_colors()
        require('vscode').setup {
            italic_comments = true,
        }
        vim.cmd([[colorscheme vscode]])
    end
}
return conf
