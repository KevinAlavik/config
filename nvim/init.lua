-- Load theme first of all
require("plugins")
require("plugins.theme")

-- Load core settings
require("core.options")
require("core.keymaps")
require("core.autocmds")

-- Plugins and configurations
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.theme")
require("plugins.barbar")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.ibl")
require("plugins.cmp")

