local function run(msg,matches)


local khale = {'بله خاله کیانا','بله خاله جون'}
local maman = {'جونم مامان جون ؟','آخ جون مامانی کار داره','جونم مامانی'}
local baba = {'جونم بابا جونــــــــــز','بابایی کارم داره همه سکـــــوت 😎','وایی بابا جونم اومده 😜'}
local text = maman[math.random(#maman)]
local text2 = baba[math.random(#baba)]
local text3 = khale[math.random(#khale)]
if matches[1] == "پسرم" and msg.action.user.id == 86957134 then
return "<b>"..text.."</b>"
end
if matches[1] == "پسرم" and is_sudo(msg) then
return "<b>"..text2.."</b>"
end
if matches[1] == "امگا" or matches[1] == "omega" and msg.action.user.id == 191138680 then
return "<b>"..text3.."</b>"
end
if matches[1] == "پسرم" and not is_sudo(msg) or not msg.action.user.id == 86957134 then
return "<i>من بابا و مامان خودمو دارم 🙄</i>"
end
end

return {
  patterns = {
 "^(پسرم)$",
"^(omega)$",
"^(امگا)$",
},
  run = run
}

--copy without source : 🚫
--@OmeGaTeam
