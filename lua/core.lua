
local module = {}

getmetatable("").__index = function(string, index)
	return string.sub(string, index, index)
end

return module

