local function run(msg, matches)
 local reza = 235707882
        if matches[1] == 'پسرم' and is_reza(msg) then
      if msg.to.type == 'channel' or 'chat' then
       return 'جونم بابایی'
      end
    end
  end
return {
    patterns = {
"^پسرم$",
      },
 run = run
}
