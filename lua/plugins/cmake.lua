return {
    "Civitasv/cmake-tools.nvim",
    config = function()
        --- keymaps
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        map('n', '<leader>cc',  '<Cmd>CMakeBuild<CR>', opts)
        map('n', '<leader>cr',   '<Cmd>CMakeQuickRun<CR>', opts)
        --- setup
        local osys = require("cmake-tools.osys")
        require('cmake-tools').setup {
            cmake_command = "cmake", -- this is used to specify cmake command path
            ctest_command = "ctest", -- this is used to specify ctest command path
            cmake_use_preset = true,
            cmake_regenerate_on_save = true, -- auto generate when save CMakeLists.txt
            cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" }, -- this will be passed when invoke `CMakeGenerate`
            cmake_build_options = {
                  --       ${kit}
                  --       ${kitGenerator}
                  --       ${variant:xx}
            }, -- this will be passed when invoke `CMakeBuild`
            cmake_build_directory = function()
            if osys.iswin32 then
                return "out\\${variant:buildType}"
            end
                return "out/${variant:buildType}"
            end, 
            cmake_soft_link_compile_commands = true, -- this will automatically make a soft link from compile commands file to project root dir
            cmake_compile_commands_from_lsp = false, -- this will automatically set compile commands file location using lsp, to use it, please set `cmake_soft_link_compile_commands` to false
            cmake_kits_path = nil, -- this is used to specify global cmake kits path, see CMakeKits for detailed usage
            cmake_variants_message = {
                short = { show = true }, -- whether to show short message
                long = { show = true, max_length = 40 }, -- whether to show long message
            },
            cmake_dap_configuration = { -- debug settings for cmake
                name = "cpp",
                type = "codelldb",
                request = "launch",
                stopOnEntry = false,
                runInTerminal = true,
                console = "integratedTerminal",
            },
            cmake_executor = { -- executor to use
                name = "toggleterm", -- name of the executor
                opts = {
                    toggleterm = {
                        direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
                        close_on_exit = false, -- whether close the terminal when exit
                        auto_scroll = true, -- whether auto scroll to the bottom
                        singleton = true, -- single instance, autocloses the opened one, if present
                    },
                }, 
            },
            cmake_runner = { -- runner to use
              name = "toggleterm", -- name of the runner
              opts = {
                toggleterm = {
                  direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
                  close_on_exit = false, -- whether close the terminal when exit
                  auto_scroll = true, -- whether auto scroll to the bottom
                  singleton = true, -- single instance, autocloses the opened one, if present
                },
              },
            },
            cmake_notifications = {
              runner = { enabled = false },
              executor = { enabled = false },
              spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }, -- icons used for progress display
              refresh_rate_ms = 100, -- how often to iterate icons
            },
            cmake_virtual_text_support = true, -- Show the target related to current file using virtual text (at right corner)
    } -- end of setup
    end
}
