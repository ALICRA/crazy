do

local function run(msg, matches)
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'مساعدة' then
local S = [[ مرحباااا..........🌚🖖

🌐 لعرض اوامر البوت اتبع تعليمات التاليه 🌐

ارسل الامر التالي 🌞👇

🔴 الاوامر ☑️  لعرض اوامر المجموعة ✅

🔴 الاصدار ☑️  لمعرفه سورس البوت ✅

🔴 المطور  ☑️ لطلب بوت حمايه    ✅

🕵 معرف المطور ⁉️ @hassanf16 ✅

تابع قناة المطور 🤖 @Ch_dev  ✔️

]]
reply_msg(reply_id, S, ok_cb, false)
end

if not is_momod(msg) then
local S = "للمشرفين والادمنية فقط 💠🏌"
reply_msg(reply_id, S, ok_cb, false)
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(مساعدة)$",
},
run = run 
}
end