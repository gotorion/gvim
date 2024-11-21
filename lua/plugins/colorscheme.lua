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

--- local conf = {
---     'sainnhe/sonokai',
---     lazy = false,
---     priority = 1000,
---     config =function()
---         vim.g.sonokai_enable_italic = true
---         vim.g.sonokai_cursor = red
---         vim.cmd([[colorscheme sonokai]])
---     end
--- }
--- local m = {
---     'ramojus/mellifluous.nvim',
---     config = function ()
---         require('mellifluous').setup({})
---         vim.cmd([[colorscheme mellifluous]])
---     end
--- }
--- 
local m = {
    'rebelot/kanagawa.nvim',
    config = function ()
        require('kanagawa').setup({

        })
        require('kanagawa').load('wave')
    end
}
return m
