local function omega(msg,matches)

local mamani = 86957134
local kiana = 191138680
local khale = {'بله خاله کیانا','بله خاله جون'}
local maman = {'جونم مامان جون ؟','آخ جون مامانی کار داره','جونم مامانی'}
local baba = {'جونم بابا جونــــــــــز','بابایی کارم داره همه سکـــــوت 😎','وایی بابا جونم اومده 😜'}
if matches[1] == "پسرم" and msg.action.user.id == tonumber(mamani) then
return "<b>".. maman[math.random(#maman)].."</b>"
end
if matches[1] == "پسرم" and is_sudo(msg) then
return "<b>".. baba[math.random(#baba)].."</b>"
end
if matches[1] == "امگا" or matches[1] == "omega" and msg.action.user.id == tonumber(kiana) then
return "<b>".. khale[math.random(#khale)].."</b>"
end
if matches[1] == "پسرم" and not is_sudo(msg) or not msg.action.user.id == tonumber(mamani) then
return "<b>من بابا و مامان خودمو دارم 🙄</b>"
end

return {
  patterns = {
 "^پسرم$",
"^omega$",
"^امگا$",
},
  run = omega
}
end

--copy without source : 🚫
--@OmeGaTeam
