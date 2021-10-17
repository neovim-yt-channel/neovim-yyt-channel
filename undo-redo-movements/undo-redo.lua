


-- undo redo in lua just like vs code

local map = function(mode, key, command)
	vim.api.nvim_set_keymap(mode, key, command, {
		noremap = true,
		silent = true
	})
end

-- undo
map("n", "<C-z>", "u", noremap_silent)
map("i", "<C-z>", "<C-o>u", noremap_silent)
map("v", "<C-z>", "<esc>u", noremap_silent)

-- redo
-- redo for normal mode is built-in
map("i", "<C-r>", "<C-o><C-r>", noremap_silent)
map("v", "<C-r>", "<esc><C-r>", noremap_silent)


