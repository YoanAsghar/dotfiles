return {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
        require("transparent").setup({
            extra_groups = {
                "NormalFloat",
                "FloatBorder",
                "SignColumn",
                "EndOfBuffer",
                "StatusLine",
                "StatusLineNC",
                "WinBar",
                "WinBarNC",
                -- Clearing all lualine backgrounds except section A (the mode)
                "lualine_b_normal", "lualine_c_normal", "lualine_x_normal", "lualine_y_normal", "lualine_z_normal",
                "lualine_b_insert", "lualine_c_insert", "lualine_x_insert", "lualine_y_insert", "lualine_z_insert",
                "lualine_b_visual", "lualine_c_visual", "lualine_x_visual", "lualine_y_visual", "lualine_z_visual",
                "lualine_b_inactive", "lualine_c_inactive", "lualine_x_inactive", "lualine_y_inactive", "lualine_z_inactive",
            },
        })
        vim.cmd("TransparentEnable")
    end,
}
