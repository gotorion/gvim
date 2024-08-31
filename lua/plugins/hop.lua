return {
    'hadronized/hop.nvim',
    config = function()
        local hop = require('hop')
        local directions = require('hop.hint').HintDirection
        vim.keymap.set('', 'hf', function()
            hop.hint_words({ direction = directions.AFTER_CURSOR })
        end, {remap=true})

        vim.keymap.set('', 'hb', function()
            hop.hint_words({ direction = directions.BEFORE_CURSOR })
        end, {remap=true})

        hop.setup {
            -- vim.keymap.set('', 't', function()
              -- hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
            -- end, {remap=true})
            --
            -- vim.keymap.set('', 'T', function()
            --   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
            -- end, {remap=true})
        }
    end
}
