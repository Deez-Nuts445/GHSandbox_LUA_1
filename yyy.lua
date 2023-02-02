local module = {}
function module.gettime(type)
local fmt = {}
local hour = os.date("*t")["hour"]
local mint = os.date("*t")["min"]
local secs = os.date("*t")["sec"]
local pl1 = hour 
local pl2 = mint
local pl3 = secs
local pl4 = "AM"
-- change to 0, with pm/am switching
if type == 12 then -- checks if type = 12 hour
if hour >= 13 then
local ph5 = tonumber(hour) - 12      
if ph5 >= 10 then
pl1 = "0"..pl5        
else
pl1 = pl5        
end        
pl4 = "PM"
elseif hour <= 9 then
pl1 = "0"..hour
pl4 = "AM"      
else
pl1 = hour
pl4 = "AM"      
end    
------------------------
if mint <= 9 then
pl2 = "0"..mint
end
------------------------
if secs <= 9 then
pl3 = "0"..secs
else
pl3 = secs
end
------------------------    
end      
function fmt:format(str)
local str = str
:gsub("#H",pl1)
:gsub("#M",pl2)
:gsub("#S",pl3)
:gsub("#P",pl4)
return str
end   
return fmt  
end 
return module
