local function run(msg, matches)

local link = matches[3]
local text = matches[2]
local message = [[ <a href="['..link..']">'..text.."</a> ]]
if matches[1] == "&" and matches[2] and matches[3] then
return message
end
end

return {
   patterns = {
 "^&+(.+) (.+)$",
},
  run = run
}
