local conf_func = function()
    local hop = require('hop')
    local wk = require('which-key')
    local directions = require('hop.hint').HintDirection
    wk.add({
        { "tf", function() hop.hint_words({ direction = directions.AFTER_CURSOR }) end },
        { "tb", function() hop.hint_words({ direction = directions.BEFORE_CURSOR }) end },
        { "tl", function() hop.hint_lines({}) end },
    })
    
    hop.setup {
        jump_on_sole_occurrence = true,
        uppercase_labels = false,
    }
end

local conf = {
    'hadronized/hop.nvim',
    config = conf_func
}

return conf
