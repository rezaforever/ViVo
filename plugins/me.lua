
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
