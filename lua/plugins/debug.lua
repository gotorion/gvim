return {
    "rcarriga/nvim-dap-ui", 
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio"
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")
        local wk = require('which-key')
        wk.add({
            { '<leader>do', function() dapui.open() end },
        })
        -- dap.listeners.before.attach.dapui_config = function()
        --   dapui.open()
        -- end
        -- dap.listeners.before.launch.dapui_config = function()
        --   dapui.open()
        -- end
        -- dap.listeners.before.event_terminated.dapui_config = function()
        --   dapui.close()
        -- end
        -- dap.listeners.before.event_exited.dapui_config = function()
        --   dapui.close()
        -- end
    end
}
