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
do 

local function pre_process(msg) 
    --Checking mute 
    local hash = 'mate:'..msg.to.id 
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg)  then 
            delete_msg(msg.id, ok_cb, true) 
            send_large_msg(get_receiver(msg), 'عـہزُْيـ ـہزُْيـ ـہ '..msg.from.first_name..'\nمہمہنہوُعـہ عـہمہلہ ـہآعـہـہآدٍةتــہوُجـہيـ ـہهہ مہنہ ـہآلہقـہًنہوُـہآتــہ هہنہـہآ ـہآلہتــہزُْمہ ـبـقـہًوُـہآنہيـ ـہنہ ـہآلہمہجـہمہوُعـہة 👋👮\n#username @'..msg.from.username) 
            return "done" 
        end 
        return msg 
    end 

local function DevPoint(msg, matches) 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'قفل' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return "" 
  elseif is_momod(msg) and matches[1] == 'فتح' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:del(hash) 
                    return "" 
end 

end 

return { 
    patterns = { 
        '^(قفل) اعادة توجيه$', 
        '^(فتح) اعادة توجيه$' 
    }, 
    run = DevPoint, 
    pre_process = pre_process 
} 
end 
