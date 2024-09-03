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

        vim.keymap.set('', 'ha', function()
            hop.hint_lines({})
        end, {remap=true})

        hop.setup {
            jump_on_sole_occurrence = true,
            uppercase_labels = false,
        }
    end
}
