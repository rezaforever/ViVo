local function run(msg,matches)

local link = [[ <a href="https://telegram.me/joinchat/DnpC6kAOOoxCp10IrpPn4A"> OmeGa Support Link</a>]]
if matches[1] == "linksp" then
return link
end
end

  return {
    patterns = { 
  "^[!/#](linksp)$",
},
  run = run
}
