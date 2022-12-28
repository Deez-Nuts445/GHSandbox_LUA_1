local module = {}

function module.fact(nn)
local n = tonumber(nn)
if n <= 0 then
return 1
else
return n * module.fact(n-1)
end
end

function module.unfact(nn)
local result
local idx = 1
local n = tonumber(nn)
if n <= 1 then
return 0
else
idx = idx+1
result = n / idx
return math.floor(result+0.5)
end
end

return module
