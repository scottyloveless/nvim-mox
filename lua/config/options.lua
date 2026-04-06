vim.o.mouse = "a"
vim.o.shortmess = "CFOSWaco" -- Disable some built-in completion messages

-- Enable all filetype plugins and syntax (if not enabled, for better startup)
vim.cmd("filetype plugin indent on")
if vim.fn.exists("syntax_on") ~= 1 then
	vim.cmd("syntax enable")
end

vim.o.undofile = true
vim.opt.undolevels = 10000

local undodir = vim.fn.expand("~/.vim/undo")

if vim.fn.isdirectory(undodir) == 0 then
	vim.fn.mkdir(undodir, "p")
end

vim.opt.undodir = undodir

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = "yes"

vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- splitting
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.splitkeep = "screen"

vim.o.list = false

vim.o.scrolloff = 10

vim.o.confirm = true

-- indenting
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.smartindent = true

-- ui
vim.o.winborder = "rounded"
vim.o.pumborder = "rounded"
vim.o.cursorline = true -- highlight the text line of the cursor
vim.o.number = true -- show numberline
vim.o.relativenumber = true -- show relative numberline
vim.o.signcolumn = "yes" -- always show the sign column
vim.opt.statuscolumn = "%s %l %r "

vim.o.cursorlineopt = "screenline,number" -- Show cursor line per screen line

-- wrapping
vim.o.breakindent = true
vim.o.wrap = false
vim.o.showbreak = "↪ "

-- statusline
vim.o.laststatus = 0
vim.o.showmode = false
vim.o.ruler = false

vim.o.iskeyword = "@,48-57,_,192-255,-" -- Treat dash as `word` textobject part, default "@,48-57,_,192-255"

-- clipboard --
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

if vim.env.SSH_CONNECTION then
	local function vim_paste()
		local content = vim.fn.getreg('"')
		return vim.split(content, "\n")
	end

	vim.g.clipboard = {
		name = "OSC 52",
		copy = {
			["+"] = require("vim.ui.clipboard.osc52").copy("+"),
			["*"] = require("vim.ui.clipboard.osc52").copy("*"),
		},
		paste = {
			["+"] = vim_paste,
			["*"] = vim_paste,
		},
	}
end

-- performance --
-- disable some default providers
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- -- newer code
vim.schedule(function()
	require("vim._core.ui2").enable({})
end)
