local conf_func = function()
        require('lualine').setup {
          options = {
            theme = bubbles_theme,
            component_separators = '',
            section_separators = { left = '', right = '' },
          },
          sections = {
            lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
            lualine_b = { 'filename', 'branch' },
            lualine_c = {
              '%=', --[[ add your center compoentnts here in place of this comment ]]
            },
            lualine_x = {},
            lualine_y = { 'filetype', 'progress' },
            lualine_z = {
              { 'location', separator = { right = '' }, left_padding = 2 },
            },
          },
          inactive_sections = {
            lualine_a = { 'filename' },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { 'location' },
          },
          tabline = {},
          extensions = {},
        }    -- Now don't forget to initialize lualine
    lualine.setup(config)
end

local conf = {
    "nvim-lualine/lualine.nvim",
    dependecied = { 'nvim-tree/nvim-web-devicons' },
    config = conf_func
}
return conf
