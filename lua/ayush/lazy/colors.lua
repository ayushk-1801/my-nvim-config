function ColorMyPencils(color)
    color = color or "rose-pine-moon"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

    {
        "erikbackman/brightburn.vim",
    },

    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "", -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
        end,
    },

    {
        "folke/tokyonight.nvim",
        config = function()
            local tn = require("tokyonight")
            -- local prompt = "#2d3149"
            tn.setup({
                style = "night",
                transparent = true,
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = {},
                    variables = {},
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
                on_highlights = function(hl, c)
                    -- hl.TelescopeNormal = {
                    --   bg = c.bg_dark,
                    --   fg = c.fg_dark,
                    -- }
                    -- hl.TelescopeBorder = {
                    --   bg = c.bg_dark,
                    --   fg = c.bg_dark,
                    -- }
                    -- hl.TelescopePromptNormal = {
                    --   bg = prompt,
                    -- }
                    -- hl.TelescopePromptBorder = {
                    --   bg = prompt,
                    --   fg = prompt,
                    -- }
                    -- hl.TelescopePromptTitle = {
                    --   bg = prompt,
                    --   fg = prompt,
                    -- }
                    -- hl.TelescopePreviewTitle = {
                    --   bg = c.bg_dark,
                    --   fg = c.bg_dark,
                    -- }
                    -- hl.TelescopeResultsTitle = {
                    --   bg = c.bg_dark,
                    --   fg = c.bg_dark,
                    -- }
                    hl.TelescopeNormal = { bg = "NONE" }
                    hl.TelescopeBorder = { bg = "NONE", fg = "#2d2e43" }
                    hl.TelescopePromptBorder = { bg = "NONE", fg = "#2d2e43" }
                    hl.TelescopeResultsBorder = { bg = "NONE", fg = "#2d2e43" }
                    hl.TelescopePreviewBorder = { bg = "NONE", fg = "#2d2e43" }
                end,
            })

            -- vim.cmd [[highlight NormalFloat guibg=NONE]]
            vim.cmd("colorscheme tokyonight")
        end,
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end
    },


}