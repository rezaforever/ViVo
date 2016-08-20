function run(msg, matches)
		local text1 = matches[2]
        local text2 = matches[3]
		local text3 = matches[4]
		local url = "http://www.iloveheartstudio.com/-/p.php?t="..text1.."+"..text2.."+"..text3.."%0D%0A&bc=FFFFFF&tc=000000&hc=FF0000&f=c&uc=1&ts=tc&ff=PNG&w=500&ps=sq"
		 local  file = download_to_file(url,'keep.webp')
			send_document(get_receiver(msg), file, ok_cb, false)

        
end


return {
  description = "تبدیل متن به لوگو",
  usage = {
    "/keep calm font text: ساخت لوگو",
  },
  patterns = {
   "^[/!]([Ss]ticker) (.+) (.+) (.+)$",
  },
  run = run
}
