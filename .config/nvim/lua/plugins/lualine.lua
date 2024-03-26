return {
    "nvim-lualine/lualine.nvim",
    opts = {
        options = {
            icons_enabled = false,
            section_separators = "",
            component_separators = "",
        },
        sections = {
            lualine_a = {"mode"},
            lualine_b = {"branch"},
            lualine_c = {"filename"},
            lualine_x = {},
            lualine_y = {"progress"},
            lualine_z = {"location"}
        },
    }
}
