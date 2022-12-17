local module = {}

function module:GetClosestPlayer()
local player = game.Players.LocalPlayer
local players = game.Players:GetPlayers()
  local minDistance = math.huge
  local closestPlayer = nil
  for _, otherPlayer in pairs(players) do
    if otherPlayer == player then
      continue
    end
    local distance = (player.Character.PrimaryPart.Position - otherPlayer.Character.PrimaryPart.Position).magnitude
    if distance < minDistance then
      closestPlayer = otherPlayer
      minDistance = distance
      display = game.Players:FindFirstChild(closestPlayer.Name).DisplayName
    end
  end
if display == closestPlayer.Name then
return closestPlayer,"has a distance of "..minDistance
else
return display..",aka",closestPlayer,"has a distance of "..minDistance
end
end

return module
