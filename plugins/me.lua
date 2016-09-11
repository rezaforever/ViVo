
do

local function alirezapt(msg ,matches)
local reza = 235707882
        if matches[1] == 'me' and is_sudo(msg) then
local url = "www.keepcalmstudio.com/-/p.php?t=%3E%EE%BC%84%0D%0A%3E%3E%3EKEEP%0D%0A%3E%3ECALM%0D%0A%3E%3Ebecause%0D%0A%3EYou%27re%0D%0A<3Sudo<3&bc=FFFFFF&tc=FF0000&cc=FF0000&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif matches[1] == 'me' and is_owner(msg) then
        local url = "www.keepcalmstudio.com/-/p.php?t=%3E%EE%BC%84%0D%0A%3E%3E%3EKEEP%0D%0A%3E%3ECALM%0D%0A%3E%3Ebecause%0D%0A%3EYou%27re%0D%0AOwner&bc=FFFFFF&tc=FF0000&cc=FF0000&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif matches[1] == 'me' and is_momod(msg) then
        local url = "www.keepcalmstudio.com/-/p.php?t=%3E%EE%BC%84%0D%0A%3E%3E%3EKEEP%0D%0A%3E%3ECALM%0D%0A%3E%3Ebecause%0D%0A%3EYou%27re%0D%0AGp<3Admin&bc=FFFFFF&tc=FF0000&cc=FF0000&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif matches[1] == 'me' and not is_momod(msg) then
        local url = "www.keepcalmstudio.com/-/p.php?t=%3E%EE%BC%84%0D%0A%3E%3E%3EKEEP%0D%0A%3E%3ECALM%0D%0A%3E%3Ebecause%0D%0A%3EYou%27re%0D%0Amember&bc=FFFFFF&tc=FF0000&cc=FF0000&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        
        elseif matches[1] == 'me' and msg.action.user.id == tonumber(reza) then
        local url = "www.keepcalmstudio.com/-/p.php?t=%3E%EE%BC%84%0D%0A%3E%3E%3EKEEP%0D%0A%3E%3ECALM%0D%0A%3E%3Ebecause%0D%0A%3EYou%27re%0D%0AMy<3Love&bc=FFFFFF&tc=FF0000&cc=FF0000&uc=true&ts=true&ff=PNG&w=500&ps=sq"
local file = download_to_file(url,'alirezapt.webp')
send_document(get_receiver(msg) , file, ok_cb, false)
        end
end
return { 
    patterns = { 
        "^[#!/](me)$"
    },
    run = alirezapt,
    
}

end
--------------☆☆☆☆☆☆☆☆☆☆☆--------------
do

function run(msg, matches)
    if matches[1] == 'me' then
  return "Gp Id : "..msg.from.id.."\nGp name : "..msg.to.title.."\nYour name : "..(msg.from.first_name or '').."\nFirstname : "..(msg.from.first_name or '').."\nLastname : "..(msg.from.last_name or '').."\nYour Id : "..msg.from.id.."\nYour username : @"..(msg.from.username or '').."\nYour Rank sticker 👇(maybe it comes faster , you can see last message[sticker])"
end
return { 
    patterns = { 
        "^[#!/](me)$"
    },
    run = run
    
}

end
end
