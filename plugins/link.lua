local function run(msg,matches)

local link = [[ <a href="['..matches[3]..']">'..matches[2]..'</a>]]
if matches[1] == "-" then
return link 
end
end

return {
patterns = {
 "^-(.*) (.*)$",
},
 run = run
}
