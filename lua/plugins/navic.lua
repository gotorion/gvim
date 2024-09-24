local conf_func = function()
    local navic = require('nvim-navic')
    navic.setup {}
end
--- TODO: setup navic plugin
local conf = {
    'SmiteshP/nvim-navic',
    config = conf_func
}
return conf
