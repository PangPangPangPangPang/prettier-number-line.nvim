local M = {}
M.Set = function(list)
	local set = {}
	for _, l in ipairs(list) do
		set[l] = true
	end
	return set
end

M.defaultConfig = { mode = "virtual", virt_text_pos = "eol", virt_icon = "﬌ ", highlight = "CursorLineNr" }

M.config = function ()
    return M.defaultConfig
end
return M
