local M = {}
local o = - vim.o
M.setup = function(args)
	if args.line_number_mode == "default" then
		o.nu = true
		o.signcolumn = "yes"
	elseif args.line_number_mode == "current" then
		o.nu = true
		o.signcolumn = "number"
        vim.cmd([[hi! LineNr guifg=bg]])
	elseif args.line_number_mode == "virtual" then
		o.nu = false
		o.signcolumn = "yes"
		require("utils.virtual")
	end
end
return M
