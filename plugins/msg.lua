local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" Message has been cleaned', ok_cb, false)
  else
    send_msg(extra.chatid, 'Your selcted messages has been removed', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'clean' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 1000000000 or tonumber(matches[2]) < 1 then
        return "Please choose more than 1"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "Just sopergroup"
    end
  else
    return "You can clean msgs"
  end
   local x = matches[2]
  local t = x:gsub('x','1000000000')
  if matches[1] == "clean" and "x" and is_owner then
 if msg.to.type == 'channel' then
return t
end
end

return {
    patterns = {
        '^[!/#](clean) (%d*)$'
    },
    run = run
}
