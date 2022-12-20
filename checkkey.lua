local module = {}

function module.checkIfKeyPressed(cur,target,callback)
while wait() do
  local uis = game:GetService("UserInputService")
  uis.InputBegan:Connect(function(key,busy)
   if not busy then
      if key.KeyCode == target then
        callback()
   end       
 end)    
end
end

return module
