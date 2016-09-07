do

function run(msg, matches)
local reply_id = msg['id']

local info = '🌐 #Name : '..msg.from.first_name..'\n'
..'🌐 #Your_Id : '..msg.from.id..'\n'
..'🌐 #Your_Username : https://telegram.me/'..msg.from.username..'\n'
..'🌐 #Group_Id : '..msg.to.id..'\n'
..'🌐 #Group_name : '..msg.to.title

reply_msg(reply_id, info, ok_cb, false)
end

return {
patterns = {
"^[!/#]([Ii][Dd])"

},
run = run
}

end
