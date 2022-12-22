local module = {}

function module.checkIfKeyPressed(key,callback)
 spawn(function()
 while wait() do
  local uis = game:GetService("UserInputService")
  uis.InputBegan:Connect(function(cur_key,busy)
   if not busy then
      if cur_key.KeyCode == key then
        callback()
   end       
 end)    
end   
 end)
end

return module
