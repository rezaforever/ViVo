local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['antitag'] == 'yes' then


if not is_momod(msg) then


channel_del_user('channel#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    local msgtag = 'You cant tag anything here '
   local receiver = msg.to.id
    send_large_msg('channel#id'..receiver, msgads.."\n", ok_cb, false)

      end
   end
end

return {patterns = {
"#(.*)$",
"@(.*)$",
"www(.*)$",
"https(.*)$",
}, run = run}
