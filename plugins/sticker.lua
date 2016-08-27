function run(msg, matches)
    local text = URL.escape(matches[2])
    local text2 = URL.escape(matches[3])
    local text3 = URL.escape(matches[4])

    local url = "http://www.myfunstudio.com/-/p.php?d=lss&t="..text.."&tp="..text2.."&tl=&tb="..text3.."&lt=false&ts=true&uc=true&f=l&bn=false&c_sb=FFFFFF&c_bc=FFFFFF&c_t=000000&c_tp=DD1010&c_tl=000000&c_tb=DD1010&c_b=000000&ff=PNG&w=1000"
     local  file = download_to_file(url,'keep.webp')
      send_document(get_receiver(msg), file, ok_cb, false)

        
end


return {

  patterns = {
   "^[/!#]([Ss]ticker) (.*) (.*) (.*)$",
  },
  run = run
}
