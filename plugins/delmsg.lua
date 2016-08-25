local function history(extra, suc, result)
  for i=10000000000000, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" Recently messages removed', ok_cb, false)
  else
    send_msg(extra.chatid, 'ℹ️Mention messages removed', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'delmsg' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 1000000000 or tonumber(matches[2]) < 1 then
        return "Select more than 1 and less than 1000000000"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "ℹ️Just supergroup"
    end
  else
    return "ℹ️This command need privilege"
  end
     x = 1000000000
    if matches[1] == "delmsg" and matches[2] == "x" and is_owner(msg) then
   if msg.to.type == 'channel' then
  return "/"..msg.to.id.."\ Messages has been removed succesfully !"
 end
end

return {
    patterns = {
        '^[!/#](delmsg) (%d*)$',
        '^[!/#](delmsg) x$'
    },
    run = run
}
