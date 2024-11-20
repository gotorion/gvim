
return {
    'Civitasv/cmake-tools.nvim',
    config = function ()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        map('n', '<leader>cr', '<Cmd>CMakeRun<CR>', opts)
        map('n', '<leader>cb', '<Cmd>CMakeBuild<CR>', opts)
        require("cmake-tools").setup {
           cmake_command = "cmake",
           cmake_regenerate_on_save = true,
           cmake_generate_options = { "-GNinja", "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON" }, -- this will be passed when invoke `CMakeGenerate`
           cmake_build_options = {}, -- this will be passed when invoke `CMakeBuild`
           cmake_build_directory = "build", -- this is used to specify generate directory for cmake, allows macro expansion
           cmake_soft_link_compile_commands = false, -- this will automatically make a soft link from compile commands file to project root dir
           cmake_compile_commands_from_lsp = true,
           cmake_kits_path = nil, -- this is used to specify global cmake kits path, see CMakeKits for detailed usage
           cmake_variants_message = {
               short = { show = true }, -- whether to show short message
               long = { show = true, max_length = 80 }, -- whether to show long message
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
               name = "toggleterm",
               opts = {}, -- the options the executor will get, possible values depend on the executor type. See `default_opts` for possible values.
               default_opts = { -- a list of default and possible values for executors
                   quickfix = {
                       show = "always", -- "always", "only_on_error"
                       position = "botright", -- "bottom", "top", "belowright"
                       size = 10,
                       encoding = "utf-8",
                       auto_close_when_success = true,
                   },
                   toggleterm = {
                       direction = "vertical", -- 'vertical' | 'horizontal' | 'tab' | 'float'
                       close_on_exit = true, -- whether close the terminal when exit
                       auto_scroll = true, -- whether auto scroll to the bottom
                   },
                   overseer = {},
               },
           },
           cmake_runner = {
               name = "toggleterm",
               opts = {},
               default_opts = { -- a list of default and possible values for runners
                   quickfix = {
                       show = "always", -- "always", "only_on_error"
                       position = "belowright", -- "bottom", "top"
                       size = 6,
                       encoding = "utf-8",
                       auto_close_when_success = true, 
                   },
                   toggleterm = {
                       direction = "vertical",
                       close_on_exit = false,
                       singleton = false, -- single instance, autocloses the opened one, if present
                       auto_scroll = false, -- whether auto scroll to the bottom
                   },
                   overseer = {},
              },
           },
           cmake_notifications = {
               runner = { enabled = false },
               executor = { enabled = false },
               spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }, -- icons used for progress display
               refresh_rate_ms = 100, -- how often to iterate icons
           },
           cmake_virtual_text_support = false,
        }
    end
}
