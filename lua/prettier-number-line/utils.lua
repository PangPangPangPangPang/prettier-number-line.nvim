local M = {}

M.Set = function(list)
	local set = {}
	for _, l in ipairs(list) do
		set[l] = true
	end
	return set
end

M.TableConcat = function(t1, t2)
	for i = 1, #t2 do
		t1[#t1 + 1] = t2[i]
	end
	return t1
end

M.exclusive_filetype = { "NvimTree", "TelescopePrompt", "" }

M.defaultConfig = {
	mode = "virtual",
	virt_text_pos = "eol",
	virt_icon = "﬌ ",
	highlight = "CursorLineNr",
	exclusive_filetype = {},
}

M.config = function()
	return M.defaultConfig
end
return M
