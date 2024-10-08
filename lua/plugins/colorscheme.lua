local conf = {
    "polirritmico/monokai-nightasty.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("monokai-nightasty").setup{}
        require("monokai-nightasty").load{}
    end
}
return conf
