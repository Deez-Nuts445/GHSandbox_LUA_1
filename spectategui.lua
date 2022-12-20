local uis = game:GetService("UserInputService")
local wantkey = true
gui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
gui.ResetOnSpawn = false
nextb = Instance.new("TextButton", gui)
nextb.Position = UDim2.new(0.88,0,0.9,0)
nextb.Size = UDim2.new(0.1,0,0.07,0)
nextb.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
nextb.Text = "Next"
prevb = nextb:Clone()
prevb.Position = UDim2.new(0.02,0,0.9,0)
prevb.Text = "Previous"
prevb.Parent = gui
plrNum = 1

function prev()
if plrNum ~= 1 then
plrNum = plrNum - 1
end
for i,v in pairs(game.Players:GetPlayers()) do
if i == plrNum then
game.Workspace.Camera.CameraSubject = v.Character.Humanoid
end
end
end
spawn(function()
    while wait() do
        for i,v in pairs(game.Players:GetPlayers()) do
        if i == plrNum then
		game.Workspace.Camera.CameraSubject = v.Character.Humanoid
        end
end
    end
end)

prevb.MouseButton1Down:connect(function()
prev()
end)

function next_()
if plrNum < #game.Players:GetPlayers() then
plrNum = plrNum + 1
for i,v in pairs(game.Players:GetPlayers()) do
if i == plrNum then
game.Workspace.Camera.CameraSubject = v.Character.Humanoid
end
end
end
end

nextb.MouseButton1Down:connect(function()
next_()
end)


uis.InputBegan:Connect(function(key,busy)
if not busy then
local keycodes = Enum.KeyCode
if key.KeyCode == keycodes.Z then
wantkey = not wantkey
end
if wantkey == true then
if key.KeyCode == keycodes.Q then
prev()
end
if key.KeyCode == keycodes.E then
next_()
end
end
end
end)
