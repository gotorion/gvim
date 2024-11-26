return {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen"},
    keys = {
        {"<leader>sb", "<cmd>Outline<CR>", desc = "Toggle Outline" },
    },
    opts = {
        outline_window = {
            position = 'right',
        },
        keymaps = {
            peek_location = 'o',
        }
    }
}
