local M = {}
local setup_done = false

local default_settings = {
    doc_comments_different_color = true,
}

local function set_highlights(theme)
    local highlights = require("distinct.highlights").get_highlights(theme)
    for hl, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, hl, opts)
    end
end

M.settings = {}

function M.setup(settings)
    M.settings = vim.tbl_deep_extend("force", default_settings, settings or {})

    setup_done = true
end

function M.load()
    -- Reset colour scheme
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    -- Settings
    vim.o.termguicolors = true
    vim.g.colors_name = "distinct"

    if not setup_done then
        M.setup()
    end

    -- Enable highlights
    local colors = require("distinct.colors")
    local theme = require("distinct.theme")
    theme = theme.get_theme(colors, M.settings)

    set_highlights(theme)
end

return M
