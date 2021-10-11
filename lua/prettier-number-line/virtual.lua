local api = vim.api
local config = require("prettier-number-line.utils").config

local get_namespace = function()
	return api.nvim_create_namespace("mx_highlight_col")
end


function highlight_line()
	local c = config()
	if c.exclusive_filetype[vim.fn.getbufvar(vim.fn.bufnr(), "&filetype")] then
		return
	end
	local line = vim.fn.line(".")
	local namespace = get_namespace()
	api.nvim_buf_clear_namespace(0, namespace, 0, -1)
	api.nvim_buf_set_extmark(0, namespace, line - 1, -1, {
		virt_text = { { string.format(" %s%d", c.virt_icon, line), c.highlight } },
		virt_text_pos = c.virt_text_pos,
		hl_mode = "combine",
	})
end

vim.cmd([[
autocmd CursorMoved * lua highlight_line()
autocmd CursorMovedI * lua highlight_line()
]])
