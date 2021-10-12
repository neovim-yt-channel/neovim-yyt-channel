

local nnoremap = function(options)
    -- trigger key
    local key = options[1] or options.key
    -- command
    local command = options[2] or options.command

    -- noremap is true by default
    local noremap = options.noremap
    if noremap == nil then noremap = true end

    -- silent is true by default
    local silent = options.silent
    if silent == nil then silent = true end

    -- expr is false by default
    local expr = options.expr
    if expr == nil then expr = false end

    vim.api.nvim_set_keymap("n", key, command,
                            { noremap = noremap, silent = silent, expr = expr })
end


-- inoremap function
local inoremap = function(options)
    -- trigger key
    local key = options[1] or options.key
    -- command
    local command = options[2] or options.command
    -- noremap is true by default
    local noremap = options.noremap or true
    -- silent is true by default
    local silent = options.silent or true
    -- expr is false by default
    local expr = options.expr or false

    vim.api.nvim_set_keymap("i", key, command,
                            { noremap = noremap, silent = silent, expr = expr })
end


-- vnoremap function (visual mode)
local vnoremap = function(options)
    -- trigger key
    local key = options[1] or options.key
    -- command
    local command = options[2] or options.command
    -- noremap is true by default
    local noremap = options.noremap or true
    -- silent is true by default
    local silent = options.silent or true
    -- expr is false by default
    local expr = options.expr or false

    vim.api.nvim_set_keymap("v", key, command,
                            { noremap = noremap, silent = silent, expr = expr })

end

-- text selection with shift + left/right just like vs code

-- left
nnoremap{"<S-left>", "v<left>"}
inoremap{"<S-left>", "<esc>v<left>"}
vnoremap{"<S-left>", "<left>"}


-- right
nnoremap{"<S-right>", "v<right>"}
inoremap{"<S-right>", "<c-o><right><esc>v<right>"}
vnoremap{"<S-right>", "<right>"}

