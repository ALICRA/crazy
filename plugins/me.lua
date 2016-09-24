do 
local function run(msg, matches) 
 if is_sudo(msg) then 
   local sudo = "عـہزُْيـ ـہزُْ مہوُقـہًعـہكـہً وُمہعـہلہوُمہـہآتــہكـہً هہنہـہآ 👇🏌"..msg.from.first_name.."\n" 
   .."🆔👤ـہآيـ ـہدٍيـ ـہكـہً :("..msg.from.id..")\n" 
   .."🆔📡ـہآيـ ـہدٍيـ ـہ ـہآلہكـہًرُوُـبـ :("..msg.to.id..")\n" 
   .."⛽️مہعـہرُفـہَكـہً :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رُقـہًمہكـہً :("..(msg.from.phone or " لا يوجد")..")\n" 
   .."مہوُقـہًعـہكـہً👤: ـہآنہتــہهہ مہــ😍ـطـہــ❤️ـوُرُ مہــــہآلہ ـہآنہــــɱęـــيـ ـہ 🕵👋 " 
return reply_msg(msg.id, sudo, ok_cb, true) 
 end 
 if is_owner(msg) then 
 local owner = "عـہزُْيـ ـہزُْ مہوُقـہًعـہكـہً وُمہعـہلہوُمہـہآتــہكـہً هہنہـہآ 👇🏌"..msg.from.first_name.."\n" 
   .."🆔👤ـہآيـ ـہدٍيـ ـہكـہً :("..msg.from.id..")\n" 
   .."🆔📡ـہآيـ ـہدٍيـ ـہ ـہآلہكـہًرُوُـبـ  :("..msg.to.id..")\n" 
   .."⛽️مہعـہرُفـہَكـہً :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رُقـہًمہكـہً  :("..(msg.from.phone or " لا يوجد ")..")\n" 
   .."👤مہوُقـہًعـہكـہً :أُإنہـتًـهہ مہـدٍيّـرُ😌 أُإلـمہـجٌـمہـوُعًـهہ أُإلـمہـحّـتًرُمہـهہ🌝 🚨 👥 »" 
return reply_msg(msg.id, owner, ok_cb, true) 
 end 
 if is_admin1(msg) then 
local admin1 = "عـہزُْيـ ـہزُْ مہوُقـہًعـہكـہً وُمہعـہلہوُمہـہآتــہكـہً هہنہـہآ👷👇🏼" 
   .."🆔👤ـہآيـ ـہدٍيـ ـہكـہً :("..msg.from.id..")\n" 
   .."🆔📡ـہآيـ ـہدٍيـ ـہ ـہآلہكـہًرُوُـبـ :("..msg.to.id..")\n" 
   .."⛽️مہعـہرُفـہَكـہً :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رُقـہًمہكـہً  :("..(msg.from.phone or " لايوجد ")..")\n" 
   .."👷مہوُقـہًعـہكـہً :أُإنہتًهہ أُإدٍرُأُإيّ 🙋» " 
return reply_msg(msg.id, admin1, ok_cb, true) 
end 
if is_momod(msg) then 
      local admin = "عـہزُْيـ ـہزُْ مہوُقـہًعـہكـہً وُمہعـہلہوُمہـہآتــہكـہً هہنہـہآ 👮👇🏼" ..msg.from.first_name.. "\n" 
   .."🆔👤ـہآيـ ـہدٍيـ ـہكـہً :("..msg.from.id..")\n" 
   .."🆔📡ـہآيـ ـہدٍيـ ـہ ـہآلہكـہًرُوُـبـ  :("..msg.to.id..")\n" 
   .."⛽️مہعـہرُفـہَكـہً :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رُقـہًمہكـہً  :("..(msg.from.phone or " لا يوجد ")..")\n" 
   .."👮مہوُقـہًعـہكـہً :أُإنہتًهہ أُإدٍمہنہ أُإلمہحّتًرُمہ 🎩" 
return reply_msg(msg.id, admin, ok_cb, true) 
 end 
 if not is_momod(msg) then 
      local member = "عـہزُْيـ ـہزُْ مہوُقـہًعـہكـہً وُمہعـہلہوُمہـہآتــہكـہً هہنہـہآ🕵👇🏼" ..msg.from.first_name.. "\n" 
   .."🆔👤ـہآيـ ـہدٍيـ ـہكـہً :("..msg.from.id..")\n" 
   .."🆔📡ـہآيـ ـہدٍيـ ـہ ـہآلہكـہًرُوُـبـ  :("..msg.to.id..")\n" 
   .."📌مہعـہرُفـہَكـہً :(@"..(msg.from.username or "لا يوجد")..")\n" 
   .."📞رُقـہًمہكـہً  :("..(msg.from.phone or "لايوجد " )..")\n" 
   .."🚸مہوُقـہًعـہكـہً :أُإنہتًهہ دٍأُإيّحّ قًصدٍيّ عًضًوُ 😹💔» " 
return reply_msg(msg.id, member, ok_cb, true) 
 end 
end 

return { 
  patterns = { 
       "^(موقعي)$", 
  }, 
  run = run, 
} 
end