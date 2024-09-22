return {
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
        textobjects = {
            select = {
                enable = true,
                -- Automatically jump forward to textobj, similar to targets.vim
                lookahead = true,
                keymaps = {
                    -- You can use the capture groups defined in textobjects.scm
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@class.outer",
                    ["ic"] = "@class.inner",
                    ["as"] = { query = "@scope", query_group = "locals" },
                    ["az"] = { query = "@fold", query_group = "folds" },
                    ["ai"] = "@call.outer",
                    ["ii"] = "@call.inner",
                    ["ad"] = "@conditional.outer",
                    ["id"] = "@conditional.inner",
                    ["ae"] = "@loop.outer",
                    ["ie"] = "@loop.inner",
                    ["ap"] = "@parameter.outer",
                    ["ip"] = "@parameter.inner",
                    ["ab"] = "@block.outer",
                    ["ib"] = "@block.inner",
                    ["at"] = "@comment.outer",
                    ["it"] = "@comment.inner",
                    ["ar"] = "@return.outer",
                    ["ir"] = "@return.inner",
                    ["al"] = "@statement.outer",
                    ["il"] = "@statement.inner",
                    ["an"] = "@number.outer",
                    ["in"] = "@number.inner",
                    ["ah"] = "@assignment.outer",
                    ["ih"] = "@assignment.inner",
                },
                -- You can choose the select mode (default is charwise 'v')
                --
                -- Can also be a function which gets passed a table with the keys
                -- * query_string: eg '@function.inner'
                -- * method: eg 'v' or 'o'
                -- and should return the mode ('v', 'V', or '<c-v>') or a table
                -- mapping query_strings to modes.
                selection_modes = {
                    ['@parameter.outer'] = 'v', -- charwise
                    ['@function.outer'] = 'V', -- linewise
                    ['@statement.outer'] = 'V', -- linewise
                    ['@assignment.outer'] = 'V', -- linewise
                    ['@block.outer'] = 'V', -- linewise
                    ['@loop.outer'] = 'V', -- linewise
                    ['@conditional.outer'] = 'V', -- linewise
                    ['@class.outer'] = 'V', -- linewise
                },
                -- If you set this to `true` (default is `false`) then any textobject is
                -- extended to include preceding or succeeding whitespace. Succeeding
                -- whitespace has priority in order to act similarly to eg the built-in
                -- `ap`.
                --
                -- Can also be a function which gets passed a table with the keys
                -- * query_string: eg '@function.inner'
                -- * selection_mode: eg 'v'
                -- and should return true of false
                include_surrounding_whitespace = false,
            },
        },
    }
    end
}
