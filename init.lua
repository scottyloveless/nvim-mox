vim.o.shada = "'100,<50,s10,:1000,/100,@100,h" -- limit ShaDa file (for startup)

_G.Config = {}
_G.start_time = vim.loop.hrtime()

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.diagnostics")
