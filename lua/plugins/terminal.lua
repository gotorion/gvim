return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require('toggleterm').setup {
            size = function(term)
                if term.direction == 'vertical' then
                    return vim.o.columns * 0.4
                else
                    return 10
                end
            end,
            open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
            hide_numbers = true, -- hide the number column in toggleterm buffers
            autochdir = true, -- when neovim changes it current directory the terminal will change it's own when next it's opened
            highlights = {
              Normal = {
                guibg = "none",
              },
              NormalFloat = {
                link = 'Normal'
              },
              FloatBorder = {
                guibg = "none",
              },
            },
            shade_terminals = false,
            start_in_insert = true,
            insert_mappings = true, -- whether or not the open mapping applies in insert mode
            terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
            persist_size = true,
            persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
            direction = 'vertical',
            close_on_exit = true, -- close the terminal window when the process exits
            clear_env = false, -- use only environmental variables from `env`, passed to jobstart()
            shell = 'fish',
            auto_scroll = true, -- automatically scroll to the bottom on terminal output
            float_opts = {
              border = 'curved' ,
              width = 90,
              height = 30,
              winblend = 3,
              title_pos = 'center',
            },
            winbar = {
              enabled = false,
              name_formatter = function(term) --  term: Terminal
                return term.name
              end
            },
        }
    end
}
