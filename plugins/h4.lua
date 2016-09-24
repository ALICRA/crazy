--[[
 _____     _       _____      _    
|__  /    / \     |__  /     / \   
  / /    / _ \      / /     / _ \  
 / /_   / ___ \    / /_    / ___ \ 
/____| /_/   \_\  /____|  /_/   \_\
   
DEV_ @wounds1                                
DEV_ @moddee123
DEV_ @lll_5
]]

do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "h4" then
return [[
ـہآوُـہآمہرُ حےـہمہـہآيـ ـہة ـہآلہمہيـ ـہدٍيـ ـہـہآ 💢
〰〰〰〰〰〰〰〰                                                                                                                                                                                                  🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶
🔐قفل _ لہلہقـہًفـہَلہ 
🔓فتح _ لہلہفـہَتــہحےـہ
〰〰〰〰〰〰〰〰                                                                                                                                                                                                 🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶
👑الميديا_ ✝
🔱اعادة توجيه _ ✝
👑السمايلات _ ✝
🔱البوتات _ ✝
👑جهات الاتصال _ ✝
🔱الصور _ ✝
👑الملصقات _ ✝
🔱البصمات _ ✝
👑المتحركة _ ✝
🔱الفيديو _ ✝
👑النص _ ✝
🔱الدردشة _ ✝
〰〰〰〰〰〰〰〰                                                                                                                                                                                                 🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶🇮🇶
-🔧 DEV 👹: @DEV_a9
-🔧 channel 👹: @ch_dev
]]
end

if not is_momod(msg) then
return "Only managers 😐⛔️"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(h4)"
},
run = run 
}
end

