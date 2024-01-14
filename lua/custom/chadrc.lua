---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "bearded-arc",
  theme_toggle = { "bearded-arc", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,
    -- header = {
    --   "┌───────────────────────────────────────────────────┐",
    --   "│ ██████████                      ███          ████ │",
    --   "│░░███░░░░███                    ░░░          ░░███ │",
    --   "│ ░███   ░░███ ██████  ████████  ████   ██████ ░███ │",
    --   "│ ░███    ░███░░░░░███░░███░░███░░███  ███░░███░███ │",
    --   "│ ░███    ░███ ███████ ░███ ░███ ░███ ░███████ ░███ │",
    --   "│ ░███    ███ ███░░███ ░███ ░███ ░███ ░███░░░  ░███ │",
    --   "│ ██████████ ░░████████████ ██████████░░██████ █████│",
    --   "│░░░░░░░░░░   ░░░░░░░░░░░░ ░░░░░░░░░░  ░░░░░░ ░░░░░ │",
    --   "└───────────────────────────────────────────────────┘",
    -- },
    header = {
       "┌──────────────────────────────────────────────────────────────────────────────┐",
       "│~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~│",
       "│~~█████~~~█████~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~██████~~~~~~~~~~~~~~~~~~~~~│",
       "│~░░███~~~░░███~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~███░░███~~~~~~~~~~~~~~~~~~~~│",
       "│~~░███~~~~░███~~~██████~~█████~█████~██████~~~~~~░███~░░░█████~████████████~~~│",
       "│~~░███████████~~░░░░░███░░███~░░███~███░░███~~~~███████~░░███~░███░░███░░███~~│",
       "│~~░███░░░░░███~~~███████~░███~~░███░███████~~~~░░░███░~~~░███~░███~░███~░███~~│",
       "│~~░███~~~~░███~~███░░███~░░███~███~░███░░░~~~~~~~░███~~~~░███~░███~░███~░███~~│",
       "│~~█████~~~█████░░████████~░░█████~~░░██████~~~~~~█████~~~░░████████████~█████~│",
       "│~░░░░░~~~░░░░░~~░░░░░░░░~~~░░░░░~~~~░░░░░░~~~~~~░░░░░~~~~~░░░░░░░░░░░░~░░░░░~~│",
       "│~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~│",
       "└──────────────────────────────────────────────────────────────────────────────┘",
    },
    buttons = {
      { "  Find File", ", f f", "Telescope find_files" },
      { "󰈚  Recent Files", ", f o", "Telescope oldfiles" },
      { "󰈭  Find Word", ", f w", "Telescope live_grep" },
      { "  Bookmarks", ", m a", "Telescope marks" },
      { "  Themes", ", t h", "Telescope themes" },
      { "  Mappings", ", c h", "NvCheatsheet" },
    },
  }, -- end of nvdash
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M