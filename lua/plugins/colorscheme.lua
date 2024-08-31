return {
    "miikanissi/modus-themes.nvim",
    priority = 1000,
    config = function()
	require('modus-themes').setup {
        styles = {
            comments = {italic = true },
            functions = { italic = true },
        },
	    vim.cmd([[colorscheme modus_operandi]])
	}
    end
}
