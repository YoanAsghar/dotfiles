return {
    -- 1. vim-tpipeline for multiplexer integration
    {
        "vimpostor/vim-tpipeline",
        lazy = false, -- Needs to load early to capture the statusline
    enabled = false,
        config = function()
            -- Automatically adjust lualine background inside tmux
        end,
    },

    -- 2. lualine.nvim
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        opts = {
            options = {
                theme = {
                    normal = { a = { fg = "#1e1e2e", bg = "#babbf1", gui = "bold" } },
                    insert = { a = { fg = "#1e1e2e", bg = "#babbf1", gui = "bold" } },
                    visual = { a = { fg = "#1e1e2e", bg = "#babbf1", gui = "bold" } },
                    replace = { a = { fg = "#1e1e2e", bg = "#babbf1", gui = "bold" } },
                    command = { a = { fg = "#1e1e2e", bg = "#babbf1", gui = "bold" } },
                    inactive = { a = { fg = "#babbf1", bg = "none" } },
                },
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        },
    },
}
