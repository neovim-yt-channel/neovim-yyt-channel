sd
-- how to change default folder for lua config

-- default neovim configuration in lua
--
--
-- ~/.config/nvim
-- ├──  after
-- ├──  ftplugin
-- ├──  lua
-- │  ├──  myluamodule.lua
-- │  └──  other_modules
-- │     ├──  anothermodule.lua
-- │     └──  init.lua
-- ├──  pack
-- ├──  plugin
-- ├──  syntax
-- └──  init.lua

print("hello world")
print("welcome to my channel")

-- for example we have a custom folder named
-- init.lua.d
--
vim.cmd[[
   let &runtimepath.=','. expand("~/config/nvim/init.lua.d")
]]

-- use any folder you want
--
vim.cmd[[
   let &runtimepath.=','. expand("~/your/custom/path/to/lua/settings")
]]


-- example of custom folder that you want
vim.cmd[[
	let &runtimepath.=','. expand("~/Alexzander__/youtube/Neovim/nvim/custom_lua_dir/")
]]
-- there are 2 ways to import your custom lua setting
-- hardcoded path, in which case we dont need runtimepath anymore
-- but its ugly
-- require("./lua/random_plugin.lua")

-- using the previous defined runtimepath

require("random_plugin")


print('hello again internet')
print('nice to meet you')

