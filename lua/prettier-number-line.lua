local M = {}
local o = vim.o
local config = require("prettier-number-line.utils").config
local exclusive_filetype = require("prettier-number-line.utils").exclusive_filetype
local Set = require("prettier-number-line.utils").Set
local TableConcat = require("prettier-number-line.utils").TableConcat

M.setup = function(args)
	local c = config()
	for k, v in pairs(args) do
		c[k] = v
	end
    c.exclusive_filetype = Set(TableConcat(exclusive_filetype, c.exclusive_filetype))

	if c.mode == "current" then
		o.nu = true
		o.signcolumn = "number"
		vim.cmd([[hi! LineNr guifg=bg]])
	elseif c.mode == "virtual" then
		o.nu = false
		o.signcolumn = "yes"
		require("prettier-number-line.virtual")
	end
end
return M
