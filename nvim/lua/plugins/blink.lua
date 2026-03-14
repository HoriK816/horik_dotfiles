return {
    'saghen/blink.cmp',
    dependencies = {},

    -- use a release tag to download pre-built binaries
    version = '1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {

        -- compilation keys 
        keymap = { 
            preset = 'super-tab',

            -- push Shift+Tab to cycle candidates
            ["<S-Tab>"] = {"select_next", "fallback"},
        },
        appearance = {
          nerd_font_variant = 'mono'
        },

        -- (Default) Only show the documentation popup when manually triggered
        completion = { 
            documentation = {
                auto_show = false
            },

            list = {
                selection = {
                    preselect   = false,
                    auto_insert = true,
                },
            },
        },

        -- sources of candidate data
        sources = {
            default = {'lsp', 'path', 'buffer'},
        },

        -- fuzzy mathcher
        fuzzy = { 
            implementation = "prefer_rust_with_warning"
        },

    },

    opts_extend = { 
        "sources.default",
    },
}

