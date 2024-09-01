return {
    'navarasu/onedark.nvim',
    config = function()
        require('onedark').setup {
            style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
            transparent = false,  
            term_colors = true,
            ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
            cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
            -- toggle theme style ---
            toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
            toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
            code_style = {
                comments = 'italic',
                keywords = 'bold',
                functions = 'none',
                strings = 'italic',
                variables = 'none'
            },
            lualine = {
                transparent = true, -- lualine center bar transparency
            },
            -- Custom Highlights --
            colors = {}, -- Override default colors
            highlights = {}, -- Override highlight groups
            -- Plugins Config --
            diagnostics = {
                darker = true, -- darker colors for diagnostic
                undercurl = true,   -- use undercurl instead of underline for diagnostics
                background = true,    -- use background color for virtual text
            },
        }
        require('onedark').load()
    end
}
-- return {
--     "miikanissi/modus-themes.nvim",
--     priority = 1000,
--     config = function()
--         require('modus-themes').setup {
--         style = "auto",            -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
--         variant = "tritanopia", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
--         transparent = true, -- Transparent background (as supported by the terminal)
--         dim_inactive = false, -- "non-current" windows are dimmed
--         hide_inactive_statusline = true, -- Hide statuslines on inactive windows. Works with the standard **StatusLine**, **LuaLine** and **mini.statusline**
--         styles = {
--             -- Style to be applied to different syntax groups
--             -- Value is any valid attr-list value for `:help nvim_set_hl`
--             comments = { italic = true },
--             keywords = { italic = true },
--             functions = {},
--             variables = {},
--         },
--         --- You can override specific color groups to use other groups or a hex color
--         --- Function will be called with a ColorScheme table
--         --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the ColorScheme table
--         ---@param colors ColorScheme
--         on_colors = function(colors) end,
--
--         --- You can override specific highlights to use other groups or a hex color
--         --- Function will be called with a Highlights and ColorScheme table
--         --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the Highlights and ColorScheme table
--         ---@param highlights Highlights
--         ---@param colors ColorScheme
--         on_highlights = function(highlights, colors) end,
-- 	    vim.cmd([[colorscheme modus_operandi]])
-- 	}
--     end
-- }
