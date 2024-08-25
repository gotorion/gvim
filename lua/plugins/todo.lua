return{
    {
	"folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            signs = true,
            keywords = {
                FIX = {
                    icon = "",
                    color = "error",
                },
                TODO = {
                    icon = "󰸞",
                    color = "hint",
                },
            },
        },
    },
}
