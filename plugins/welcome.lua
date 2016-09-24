do
    
local function axis(msg,matches)
    if matches[1] == "chat_add_user"  then 
     local text = 'ـہآهہلہـہآ 😊👋 ـبـكـہً عـہزُْيـ ـہزُْيـ ـہ فـہَيـ ـہ ـہآلہمہجـہمہوُعـہة 👥🔕'..'\n'..'\n'
     ..'ـہآلہمہعـہلہوُمہـہآتــہ 📋 ـہآلہخُہـہآصـہة ـبـكـہً 🔷'..'\n'
    ..'📌 ـہآسُـےـہمہكـہً :  '..msg.action.user.print_name..'\n'
    ..'📌 مہعـہرُفـہَكـہً : @'..(msg.action.user.username or "لا يوجد")..'\n'
    ..'💭 ـہآلہـہآيـ ـہدٍيـ ـہ : '..msg.action.user.id..'\n'
    ..'📱رُقـہًمہ ـہآلہهہـہآتــہفـہَ : '..(msg.action.user.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📌 ـہآسُـےـہمہ ـہآلہمہجـہمہوُعـہة : '..msg.to.title..'\n'
    ..'💭 ـہآيـ ـہدٍيـ ـہ ـہآلہمہجـہمہوُعـہة : '..msg.to.id..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'✝ ضـہـہآفـہَكـہً : '..msg.from.print_name..'\n'
    ..'✝ مہعـہرُفـہَة : @'..(msg.from.username or "لا يوجد")..'\n'
..' ايدية 🆔 : '..msg.from.id..'\n'
    ..'📱 رُقـہًمہ هہـہآتــہفـہَةة : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📅 ـہآلہتــہـہآرُيـ ـہخُہ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕚 ـہآلہوُقـہًتــہ : '..os.date(' %T*', os.time())..'\n'  
     ..'➖➖➖➖➖ـ'..'\n'
    ..'🕵 مہطـہوُرُ ـہآلہـبـوُتــہ : @DEV_a9'..'\n'
     return reply_msg(msg.id, text, ok_cb, false)
     end
    if matches[1] == "chat_add_user_link" then
        local text = 'ـہآهہلہـہآ 😊👋 ـبـكـہً عـہزُْيـ ـہزُْيـ ـہ فـہَيـ ـہ ـہآلہمہجـہمہوُعـہة 👥🔕'..'\n'..'\n'
     ..'ـہآلہمہعـہلہوُمہـہآتــہ 📋 ـہآلہخُہـہآصـہة ـبـكـہً 🔷'..'\n'
    ..'📌 ـہآسُـےـہمہكـہً :  '..msg.from.print_name..'\n'
    ..'📌  مہعـہرُفـہَكـہً : @'..(msg.from.username or "لا يوجد")..'\n'
    ..'💭 اـہآلہـہآيـ ـہدٍيـ ـہ : '..msg.from.id..'\n'
    ..'📱قـہًمہ ـہآلہهہـہآتــہفـہَ : '..(msg.from.phone or "لا يوجد")..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📌 ـہآسُـےـہمہ ـہآلہمہجـہمہوُعـہة : '..msg.to.title..'\n'
    ..'💭 ـہآيـ ـہدٍيـ ـہ ـہآلہمہجـہمہوُعـہة : '..msg.to.id..'\n'
    ..'➖➖➖➖➖ـ'..'\n'
    ..'📅 ـہآلہتــہـہآرُيـ ـہخُہ : '..os.date('!%A, %B %d, %Y*\n', timestamp)
    ..'🕚 ـہآلہوُقـہًتــہ : '..os.date(' %T*', os.time())..'\n'  
     ..'➖➖➖➖➖ـ'..'\n'
    ..'🕵 مہطـہوُرُ ـہآلہـبـوُتــہ : @DEV_a9'..'\n'
        return reply_msg(msg.id, text, ok_cb, false)
  end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
    },
 run = axis
}
end
