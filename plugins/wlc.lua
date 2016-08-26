do
local function run(msg, matches, callback, extra)
local data = load_data(_config.moderation.data)
local rules = data[tostring(msg.to.id)]['rules']
local about = data[tostring(msg.to.id)]['description']
local hash = 'group:'..msg.to.id
local group_welcome = redis:hget(hash,'welcome')
if matches[1] == 'delwlc' and not matches[2] and is_owner(msg) then 
    
   redis:hdel(hash,'welcome')
        return 'Wlc msg removed'
end

local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)

if matches[1] == 'setwlc' and is_owner(msg) then
redis:hset(hash,'welcome',matches[2])
        return 'Wlc message has been set to : \n'..matches[2]
end

if matches[1] == 'channel_invite' and msg.service then
group_welcome = string.gsub(group_welcome, '{gp}', msg.to.title)
 group_welcome = string.gsub(group_welcome, '{fa}', ""..(jdat.FAtime).."")
  group_welcome = string.gsub(group_welcome, '{en}', ""..(jdat.ENtime).."")
  group_welcome = string.gsub(group_welcome, '{ft}', ""..(jdat.FAdate).."")
  group_welcome = string.gsub(group_welcome, '{et}', ""..(jdat.ENdate).."")
  group_welcome = string.gsub(group_welcome, '{r}', ""..(rules or '').."")
  group_welcome = string.gsub(group_welcome, '{a}', ""..(about or '').."")
  group_welcome = string.gsub(group_welcome, '{id}', ""..(msg.from.id).."") 

 end
return group_welcome
end
return {
  patterns = {
  "^[!#/](setwlc) +(.*)$",
  "^[!#/](delwlc)$",
  "^!!tgservice (channel_invite)$",     
  },
  run = run
}
end
