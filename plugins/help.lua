local function run(msg, matches)
local help = [[✅OmeGaShield common users commands💠
!kickme
Will kick user

!about
Group description

!rules
Group rules

!id
return group id or user id

!help
Returns help text

!settings
Returns group settings

!link
returns group link

!owner
returns group owner id

!get [value]
Returns text of [value]

!res [username]
returns user id
➖➖➖➖➖➖➖➖➖➖➖
SuperGroup commands

!info
Displays general info about the SuperGroup

!admins
Returns SuperGroup admins list

!owner
Returns group owner

!modlist
Returns Moderators list

!bots
Lists bots in SuperGroup

!id
Return SuperGroup ID or user id
*For userID's: !id @username or reply !id*

!id from
Get ID of user message is forwarded from

!kickme
Kicks user from SuperGroup
*Must be unblocked by owner or use join by pm to return*
➖➖➖➖➖➖➖➖➖
Mods And Owner Help Commands :
/help mod
Fun commands :
/help fun
➖➖➖➖➖➖➖➖➖
Writed By @RezaMnk
channel : @OmeGaTeam
Bot : @OmeGaShield ]]
local helpfun = [[ ✅OmeGaShield Fun commands💠
!keepcalm <text> (background color) (text color) (crown color) (size)
will give a keep calm sticker
You can use /keep to see persian help‼

!feedback <text>
will send a feedback to sudo

!group
If you want a group , this command will send a request to sudo

@RezaMnk
will invite sudo to gp

!sticker <text>
will give a sticker with text

!time
for see time (Iran Time)

!date
for see date

!love <text> 
will send a love sticker
You can use /love to see persian help‼
➖➖➖➖➖➖➖➖➖
Writed By : @RezaMnk
channel : @OmeGaTeam
Bot : @OmeGaShield ]]
local love = [[ با دستور
/love (متن) 
استیکر لاو تحویل بگیرید.
شما میتوانید در استیکر خود از 
<‌3 = ❤
یا
:‌) = 🙂
استفاده کنید ]]
local keep = [[ با دستور 
/keepcalm (متن) (رنگ زمینه) (رنگ متن) (رنگ تاج) (سایز عکس)
استیکر کیپ کالم تحویل بگیرید.
شما میتوانید در استیکر خود از
:‌) = 🙂
استفاده کنید
سایز استیکر کیپ کالم :
100
200
300
400
500 ]]
local helpmod = [[ ✅OmeGaShield mod users commands💠
!kick [username|id]
You can also do it by reply

!ban [ username|id]
You can also do it by reply

!unban [id]
You can also do it by reply

!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Lock group settings
*rtl: Kick user if Right To Left Char. is in name*

!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Unlock group settings
*rtl: Kick user if Right To Left Char. is in name*

!mute [all|audio|gifs|photo|video]
mute group message types
*If "muted" message type: user is kicked if message type is posted 

!unmute [all|audio|gifs|photo|video]
Unmute group message types
*If "unmuted" message type: user is not kicked if message type is posted 

!set rules <text>
Set <text> as rules

!set about <text>
Set <text> as about

!muteslist
Returns mutes for chat

!newlink
create/revoke your group link

!setflood [value]
Set [value] as flood sensitivity

!save [value] <text>
Save <text> as [value]

!banlist
will return group ban list
➖➖➖➖➖➖➖➖➖
SuperGroup commands

!setrules
Sets the chat rules

!setabout
Sets the about section in chat info(members list)

!save [value] <text>
Sets extra info for chat

!block
Kicks a user from SuperGroup
*Adds user to blocked list*

!ban
Bans user from the SuperGroup

!unban
Unbans user from the SuperGroup

!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Lock group settings
*rtl: Delete msg if Right To Left Char. is in name*
*strict: enable strict settings enforcement (violating user will be kicked)*

!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Unlock group settings
*rtl: Delete msg if Right To Left Char. is in name*
*strict: disable strict settings enforcement (violating user will not be kicked)*

!mute [all|audio|gifs|photo|video|service]
mute group message types
*A "muted" message type is auto-deleted if posted

!unmute [all|audio|gifs|photo|video|service]
Unmute group message types
*A "unmuted" message type is not auto-deleted if posted

!setflood [value]
Set [value] as flood sensitivity

!mutelist
Returns list of muted users in chat

!banlist
Returns SuperGroup ban list

!clean [rules|about|modlist|mutelist]

!del
Deletes a message by reply

!warnmax <num>
then
!warn <@username> or <reply>
will warn
➖➖➖➖➖➖➖➖➖
owner : coming soon ...

Writed By : @RezaMnk
channel : @OmeGaTeam
Bot : @OmeGaShield ]]
   if matches[1] == "help" then
  return help
 end
   if matches[1] == "help fun" then 
  return helpfun
 end
   if matches[1] == "help me" and is_momod(msg) then
  return helpmod
 end
   if matches[1] == "help me" and is_owner(msg) then
  return helpowner
 end
   if matches[1] == "keep" then
  return keep
 end
   if matches[1] == "love" then
  return love
 end
end

return {
  patterns = {
   "^[!/#](help)$",
   "^[!/#](help fun)$",
   "^[!/#](help me)$",
   "^[!/#](love)$",
   "^[!/#](keep)$",
   },
  run = run
}
