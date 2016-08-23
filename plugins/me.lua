
do

local function alirezapt(msg ,matches)
local reza = 235707882
        if is_sudo(msg) then
local url = "http://www.iloveheartstudio.com/-/p.php?t=Sudo%20%EE%BB%AE%EE%BB%AE&bc=FFFFFF&tc=000000&hc=FF0000&f=c&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif is_owner(msg) then
        local url = "http://www.iloveheartstudio.com/-/p.php?t=Owner%20%EE%BB%AE%EE%BB%AE&bc=FFFFFF&tc=000000&hc=FF0000&f=c&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif is_momod(msg) then
        local url = "http://www.iloveheartstudio.com/-/p.php?t=Gp%20admin%20%EE%BB%BC&bc=FFFFFF&tc=000000&hc=FF0000&f=c&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif not is_momod(msg) then
        local url = "http://www.iloveheartstudio.com/-/p.php?t=Member&bc=FFFFFF&tc=000000&hc=FF0000&f=c&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif is_reza(msg) then
        local url = "http://www.iloveheartstudio.com/-/p.php?t=%EE%BB%AA%0D%0ABabajoon&bc=FFFFFF&tc=000000&hc=FF0000&f=c&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        end
end
--------------☆☆☆☆☆☆☆☆☆☆☆--------------
do

function run(msg, matches)
  return "Gp Id : "..msg.from.id.."\nGp name : "..msg.to.title.."\nYour name : "..(msg.from.first_name or '').."\nFirstname : "..(msg.from.first_name or '').."\nLastname : "..(msg.from.last_name or '').."\nYour Id : "..msg.from.id.."\nYour username : @"..(msg.from.username or '').."\nYour Rank sticker 👇(maybe it comes faster , you can see last message[sticker])"
end
return { 
    patterns = { 
        "^[#!/](me)$"
    },
    run = alirezapt,
    
}

end
-- by @mejoin
-- @btteam
