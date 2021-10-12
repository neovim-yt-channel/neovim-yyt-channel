local map = function(mode, key, command)
    vim.api.nvim_set_keymap(mode, key, command,
                            { noremap = true, silent = true })
end

-- trigger visual line from insert mode
map ( "i", "<S-up>", "<c-o><S-v>k" )
map ( "i", "<S-down>", "<c-o><S-v>j" )
map ( "v", "<S-up>", "<up>" )
map ( "v", "<S-down>", "<down>" )

-- trigger visual line from normal mode using shift
map ( "n", "<S-up>", "<S-v>k" )
map ( "n", "<S-down>", "<S-v>j" )







-- example





