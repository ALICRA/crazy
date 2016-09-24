do

function run(msg, matches)
local reply_id = msg['id']
  local S = [[ مرحبااا....🌝🖐🏾

◀️ اسم السورس #DEVLAITH ✔️

◀️ موقع السورس تلكونه بالقناة 😂 ادخلو @ch_dev ✔️

◀️ القناة الخاصه للمطورين 🙇🏻🍷 @Ch_Dev ✔️

◀️ مطور بوت شاو 🙊 @hassanf16 ✔️

⚜ #DevHassan 💠]]
reply_msg(reply_id, S, ok_cb, false)
end

return {
  patterns = {
"^(الاصدار)$",
  }, 
  run = run 
}

end