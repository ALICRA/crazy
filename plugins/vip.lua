--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                                               ▀▄ ▄▀ 
▀▄ ▄▀    BY DEV KASPER                                  ▀▄ ▄▀ 
▀▄ ▄▀   BY KASPER (@kasper_dev)                     ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY DEV KASPER           ▀▄ ▄▀ 
▀▄ ▄▀   orders   :    vip                                   ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]  
local function check_member_superrem2(cb_extra, success, result)
local receiver = cb_extra.receiver
local data = cb_extra.data
local msg = cb_extra.msg
for k,v in pairs(result) do
local member_id = v.id
if member_id ~= our_id then
-- Group configuration removal
data[tostring(msg.to.id)] = nil
save_data(_config.moderation.data, data)
local groups = 'groups'
if not data[tostring(groups)] then
data[tostring(groups)] = nil
save_data(_config.moderation.data, data)
end
data[tostring(groups)][tostring(msg.to.id)] = nil
save_data(_config.moderation.data, data)
chat_del_user(get_receiver(msg), 'user#id'..235431064, ok_cb, false)
leave_channel(get_receiver(msg), ok_cb, false)
end
end
end

local function superrem2(msg)
local data = load_data(_config.moderation.data)
local receiver = get_receiver(msg)
channel_get_users(receiver, check_member_superrem2,{receiver = receiver, data = data, msg = msg})
end

local function pre_process(msg)
local timetoexpire = 'unknown'
local expiretime = redis:hget ('expiretime', get_receiver(msg))
local now = tonumber(os.time())
if expiretime then 
timetoexpire = math.floor((tonumber(expiretime) - tonumber(now)) / 86400) + 1
if tonumber("0") > tonumber(timetoexpire) then
if get_receiver(msg) then
redis:del('expiretime', get_receiver(msg))
rem_mutes(msg.to.id)
superrem2(msg)
return send_large_msg(get_receiver(msg), 'تــہمہ ـہآنہتــہهہـہآء تــہـہآرُيـ ـہخُہ ـہآلہصـہلہـہآحےـہيـ ـہة فـہَيـ ـہ ـہآلہمہجـہمہوُعـہة 🙂')
else
return
end
end
if tonumber(timetoexpire) == 0 then
if redis:hget('expires0',msg.to.id) then return msg end
send_large_msg(get_receiver(msg), '.')
redis:hset('expires0',msg.to.id,'5')
end
if tonumber(timetoexpire) == 1 then
if redis:hget('expires1',msg.to.id) then return msg end
send_large_msg(get_receiver(msg), ' 🙂 صـہفـہَرُ يـ ـہوُمہ ـبــہآقـہًيـ ـہ ـہآلہى ـہآنہتــہهہـہآء صـہلہـہآحےـہيـ ـہة هہذٍهہ ـہآلہمہجـہمہوُعـہة 😴 \n ـہآطـہلہـبـ مہنہ ـہآلہمہطـہوُرُ ـہآعـہـہآدٍة ـہآلہتــہفـہَعـہيـ ـہلہ ❤️')
redis:hset('expires1',msg.to.id,'5')
end
if tonumber(timetoexpire) == 2 then
if redis:hget('expires2',msg.to.id) then return msg end
send_large_msg(get_receiver(msg), '🙂 يـ ـہوُمہيـ ـہنہ ـبــہآقـہًيـ ـہ ـہآلہى ـہآنہتــہهہـہآء صـہلہـہآحےـہيـ ـہة هہذٍهہ ـہآلہمہجـہمہوُعـہة 😴 \n ـہآطـہلہـبـ مہنہ ـہآلہمہطـہوُرُ ـہآعـہـہآدٍة ـہآلہتــہفـہَعـہيـ ـہلہ ❤️')
redis:hset('expires2',msg.to.id,'5')
end
if tonumber(timetoexpire) == 3 then
if redis:hget('expires3',msg.to.id) then return msg end
send_large_msg(get_receiver(msg), '🙂 ثـہلہـہآثـہة ـہآيـ ـہـہآمہ ـبــہآقـہًيـ ـہة ـہآلہى ـہآنہتــہهہـہآء صـہلہـہآحےـہيـ ـہة هہذٍهہ ـہآلہمہجـہمہوُعـہة 😴 \n ـہآطـہلہـبـ مہنہ ـہآلہمہطـہوُرُ ـہآعـہـہآدٍة ـہآلہتــہفـہَعـہيـ ـہلہ ❤️')
redis:hset('expires3',msg.to.id,'5')
end
if tonumber(timetoexpire) == 4 then
if redis:hget('expires4',msg.to.id) then return msg end
send_large_msg(get_receiver(msg), '🙂 ـہآرُـبـعـہة ـہآيـ ـہـہآمہ ـبــہآقـہًيـ ـہ ـہآلہى ـہآنہتــہهہـہآء صـہلہـہآحےـہيـ ـہة هہذٍهہ ـہآلہمہجـہمہوُعـہة 😴 \n ـہآطـہلہـبـ مہنہ ـہآلہمہطـہوُرُ ـہآعـہـہآدٍة ـہآلہتــہفـہَعـہيـ ـہلہ ❤️')
redis:hset('expires4',msg.to.id,'5')
end
if tonumber(timetoexpire) == 5 then
if redis:hget('expires5',msg.to.id) then return msg end
send_large_msg(get_receiver(msg), '                                                      🙂 خُہمہسُـےـہة ـہآيـ ـہـہآمہ ـبــہآقـہًيـ ـہ ـہآلہى ـہآنہتــہهہـہآء صـہلہـہآحےـہيـ ـہة هہذٍهہ ـہآلہمہجـہمہوُعـہة 😴 \n ـہآطـہلہـبـ مہنہ ـہآلہمہطـہوُرُ ـہآعـہـہآدٍة ـہآلہتــہفـہَعـہيـ ـہلہ ❤️')
redis:hset('expires5',msg.to.id,'5')
end
end
return msg
end
function run(msg, matches)
if matches[1]:lower() == 'تفعيل لمدة' then
if not is_sudo(msg) then return end
local time = os.time()
local buytime = tonumber(os.time())
local timeexpire = tonumber(buytime) + (tonumber(matches[2]) * 86400)
redis:hset('expiretime',get_receiver(msg),timeexpire)
return "😊تــہمہ وُضـہعـہ مہدٍة ـہآنہتــہهہـہآء صـہلہـہآحےـہيـ ـہة ـہآلہكـہًرُوُـبـ ـہآلہى  ("..matches[2].. ") "
end
if matches[1]:lower() == 'المدة المتبقية' then
local expiretime = redis:hget ('expiretime', get_receiver(msg))
if not expiretime then return ' 🙂 لہمہ يـ ـہتــہمہ تــہحےـہدٍيـ ـہدٍ ـہآلہتــہـہآرُيـ ـہخُہ ـبـنہجـہـہآحےـہ ❎' else
local now = tonumber(os.time())
return (math.floor((tonumber(expiretime) - tonumber(now)) / 86400) + 1) .. " 🙂 يوم اخر. "
end
end

end
return {
patterns = {
"^(تفعيل لمدة) (.*)$",
"^(المدة المتبقية)$",
},
run = run,
pre_process = pre_process
}
--[[
امانة الله ورسولة هاذه الاصل ايراني مو ماتي 
--]]