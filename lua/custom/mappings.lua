---@type MappingsTable
local M = {}

M.general = {
    n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- window split
    ["ss"] = {":split<Return><C-w>W", opts = {silent= true}},
    ["sv"] = {":vsplit<Return><C-w>W", opts={silent=true}},

    -- window move
    ["sh"] = { "<C-w>h", "Window left" },
    ["sl"] = { "<C-w>l", "Window right" },
    ["sj"] = { "<C-w>j", "Window down" },
    ["sk"] = { "<C-w>k", "Window up" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
