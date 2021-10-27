
local map = function(mode, key, command)
	vim.api.nvim_set_keymap(mode, key, command, {
		noremap = true,
		silent = true
	})
end


function CopyCurrentLineToClipboard()
    local ft = vim.bo.filetype
    if ft == "NvimTree" then
        require"nvim-tree".on_keypress("copy_absolute_path")
    else
		vim.cmd("normal ^\"+y$")
    end
end


map ( "n", "<C-c>", ":lua CopyCurrentLineToClipboard()<CR>" )
map ( "i", "<C-c>", "<C-o>:lua CopyCurrentLineToClipboard()<CR>" )

map ( "v", "<C-c>", "\"+ygv" )
