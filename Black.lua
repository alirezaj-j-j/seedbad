o
 local function block_user_callback(cb_extra, success, result)
  local user = 'user#id'..result.id
  if success == 0 then
   return "ا�?�? �?�?زر ب�?�?ک �?�?�?ش�?د"
  end
  block_user(user, cb_ok, false)
 end
end

local function run(msg, matches)
 local user = 'user#id'..matches[1]
 block_user(user, callback, false)
    return "ا�?جا�? شد"
end

return {
 description = "User Blocker", 
 usage = {
  "block (id) : ب�?اک افراد",
 },
 patterns = {
  "^[Bb]lock (%d+)$",
 }, 
 run = run,
 privileged = true
}
