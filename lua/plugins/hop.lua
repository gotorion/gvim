return {
    'hadronized/hop.nvim',
    config = function()
        local hop = require('hop')
        local directions = require('hop.hint').HintDirection
        vim.keymap.set('', 'tf', function()
            hop.hint_words({ direction = directions.AFTER_CURSOR })
        end, {remap=true})

        vim.keymap.set('', 'tb', function()
            hop.hint_words({ direction = directions.BEFORE_CURSOR })
        end, {remap=true})

        vim.keymap.set('', 'tl', function()
            hop.hint_lines({})
        end, {remap=true})

        hop.setup {
            jump_on_sole_occurrence = true,
            uppercase_labels = false,
        }
    end
}
