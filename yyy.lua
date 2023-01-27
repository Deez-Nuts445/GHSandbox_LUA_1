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
if hour >= 13 and not hour ~= 12 then -- os.date("*t") returns 24 hour, so this checks for 2 digits for 24 hour thing
pl1 = hour - 12
pl4 = "PM"     
if pl1 <= 10 then
pl4 = "AM"      
end        
elseif hour >= 10 then
pl1 = hour - 12
end
if mint <= 9 the
pl2 = "0"..mint
end
if secs <= 9 then
pl3 = "0"..secs
else
pl3 = secs
end      
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
