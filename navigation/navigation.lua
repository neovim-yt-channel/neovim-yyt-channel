local map = function(mode, key, command)
    vim.api.nvim_set_keymap(mode, key, command,
                            { noremap = true, silent = true })
end


-- go back
map("n", "<A-Left>", "<c-o>")
map("i", "<A-Left>", "<c-o><c-o>")

-- go forward
map("n", "<A-Right>", "<c-i>")
map("i", "<A-Right>", "<c-o><c-i>")
