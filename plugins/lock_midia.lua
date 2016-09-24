--[[
#
#ـــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
#:((
# For More Information ....! 
# Developer : Aziz < @TH3_GHOST > 
# our channel: @DevPointTeam
# Version: 1.1
#:))
#ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ
#
]]
local function DevPoint(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['media'] then
                lock_media = data[tostring(msg.to.id)]['settings']['media']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_media == "yes" then
       delete_msg(msg.id, ok_cb, true)
       send_large_msg(get_receiver(msg), ' عـہزُْيـ ـہزُْيـ ـہ " '..msg.from.first_name..' "\nمہمہنہوُعـہ مہشـہـہآرُكـہًة " ـہآلہصـہوُرُ - ـہآلہرُوُـہآـبـطـہ - ـہآلہـہآعـہلہـہآنہـہآتــہ - ـہآلہمہوُـہآقـہًعـہ " هہنہـہآ ـہآلہتــہزُْمہ ـبـقـہًوُـہآنہيـ ـہنہ ـہآلہمہجـہمہوُعـہة 👮\n#Username : @'..msg.from.username)
    end
end
 
return {
  patterns = {
"%[(photo)%]",
"%[(document)%]",
"%[(video)%]",
"%[(audio)%]",
"%[(gif)%]",
"%[(sticker)%]",
  },
  run = DevPoint
}