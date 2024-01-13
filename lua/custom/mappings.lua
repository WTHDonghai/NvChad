---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- hop
    ["<Leader><Leader>"] = { ":HopPattern<CR>", opts = { noremap = true } },

    -- window split
    ["ss"] = { ":split<Return><C-w>W", opts = { silent = true } },
    ["sv"] = { ":vsplit<Return><C-w>W", opts = { silent = true } },

    -- window move
    ["sh"] = { "<C-w>h", "Window left" },
    ["sl"] = { "<C-w>l", "Window right" },
    ["sj"] = { "<C-w>j", "Window down" },
    ["sk"] = { "<C-w>k", "Window up" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.terminal = {
  n = {
    -- spawn new terms
    ["<leader>h"] = {
      function()
        require("nvchad.term").new { pos = "sp", id = "htoggleTermx", size = 0.3 }
      end,
      "New horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvchad.term").new { pos = "vsp", id = "vtoggleTermx", size = 0.3 }
      end,
      "New vertical term",
    },
  },
}

-- more keybinds!

return M
