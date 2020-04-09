-- Change this code
local sirenside = "right" --set this to the side where you can connect your siren
local missileside = "back" -- set this to the side where you want to launch your missle from
local launchtime = 5
--
while true do
local event,nKey = os.pullEvent()
if event == "key" then
  if nKey == keys.x then
    break
  elseif nKey == keys.l then
    --print("Continue? y or n?")
      --if nKey == keys.y or nKey == keys.enter then
        rs.setOutput(sirenside, true)
        print("Launching!")
        os.sleep(launchtime)
        rs.setOutput(sirenside, false)
        rs.setOutput(missileside, true)
        os.sleep(1)
        rs.setOutput(missileside, false)
        print("Succesfully Launched!")
        os.sleep(1)
        term.clear()
      --elseif nKey == keys.n then
        --print("Aborting!")
        --os.sleep(1)
        --break
      end
end
end
print("Good Bye!")
os.sleep(1)
term.clear()
