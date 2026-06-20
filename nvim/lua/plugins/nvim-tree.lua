return {
        "nvim-tree/nvim-tree.lua",
        version      = "*",
        lazy         = false,
        dependencies = {
           "nvim-tree/nvim-web-devicons",
        },
        config = function()
            local tree = require("nvim-tree")

            tree.setup({

                -- display position
                view = {
                    side  = "left",
                    width = 30,
                },
                filters = {
                    dotfiles = false,
                    custom = {
                        "\\.meta$",
                    },
                },
            })
            
            vim.api.nvim_create_autocmd("VimEnter", {
                callback = function()
                    require("nvim-tree.api").tree.open()
                end,
            })
        end,
}
