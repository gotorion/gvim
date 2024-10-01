local conf_map = {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require('nvim-treesitter.configs').setup {
        ensure_installed = {"c", "cpp", "cuda", "cmake", "lua", "python", "html", "javascript", "css", "json", "bash", "regex", "markdown", "diff", "glsl", "vim", "vimdoc"},
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '+',
                node_incremental = '+',
                node_decremental = '-',
                -- scope_incremental = '+',
            }
        },
        indent = { enable = true, },
        rainbow = {
            enable = true,
            extended_mode = true,
        },
        matchup = { enable = true, },
        context_commentstring = { enable = true, },
        autotag = { enable = true, },
    }
    end
}
return conf_map
