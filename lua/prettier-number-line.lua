local M = {}
local o = vim.o
local config = require("utils").config
M.setup = function(args)
	local c = config()
	for k, v in ipairs(args) do
		c[k] = v
	end

	if c.mode == "current" then
		o.nu = true
		o.signcolumn = "number"
		vim.cmd([[hi! LineNr guifg=bg]])
	elseif c.mode == "virtual" then
		o.nu = false
		o.signcolumn = "yes"
		require("utils.virtual")
	end
end
return M
