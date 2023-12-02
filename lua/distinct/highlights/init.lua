local M = {}

function M.get_highlights(theme)
    local highlights = {}

    for _, file in ipairs({"editor", "syntax", "plugins"}) do
        local group = require("distinct.highlights." .. file)
        for hl, opts in pairs(group.get_highlights(theme)) do
            highlights[hl] = opts
        end
    end

    return highlights
end

return M
