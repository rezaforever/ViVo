 	local function run(msg)
	if msg.text == "hi" or msg.text == "Hi" then
	return "Hello"
        end
	if msg.text == "خوبم" then
	return "خدارو شکر"
        end
	if msg.text == "خوبم تو خوبی" then
	return "منم خوبم"
        end
	if msg.text == "خوبم تو خوبی؟" then
	return "آره ، منم خوبم"
        end
        if msg.text == "سلام" then
	return "سلام ، چطوری؟"
        end
	if msg.text == "کسی هست" then
	return "من همیشه هستم 😉"
	end
	if msg.text == "کسی هست؟" then
	return "بله من هستم"
	end
	if msg.text == "omega" or msg.text == "Omega" then
	return "جان ؟"
	end
	if msg.text == "!teleseed" then
	return "wtf ? 😐"
	end
	if msg.text == "/teleseed" then
	return "wtf ? 😐"
	end
        if msg.text == "پسرم" and is_sudo(msg) then
	return "جونم بابایی"
	end
	if msg.text == "تا کی آنلاینه ؟" then
	return "از ساعت ۹ صبح تا ۱۱ شب بیدارم"
	end
	if msg.text == "بات تا کی آنلاینه؟" then
	return "از ۹ تا ۲۳"
	end
	if msg.text == "بات تا کی آنلاینه" then
	return "از ۹ تا ۲۳"
	end
	if msg.text == "@OmeGaShield" then
	return "جونم ، کاری داشتی؟"
	end
	if msg.text == "@Omegashield" then
	return "بله"
	end
	if msg.text == "@omegashield" then
	return "بله"
	end
     end

	return {
	description = "Chat With Robot Server",
	usage = "chat with robot",
	patterns = {
	"^Hi$",
	"^hi$",
	"^خوبم$",
	"^خوبم تو خوبی$",
	"^خوبم تو خوبی؟$",
	"^سلام$",
	"^پسرم$",
	"^کسی هست$",
	"^کسی هست؟$",
	"^omega$",
	"^Omega$",
	"^!teleseed$",
	"^/teleseed$",
	"^تا کی آنلاینه ؟$",
	"^بات تا کی آنلاینه؟$",
	"^بات تا کی آنلاینه$",
	"^@OmeGaShield$",
	"^@Omegashield$",
	"^@omegashield$",
	},
	run = run,
	--privileged = true,
	pre_process = pre_process
	}
