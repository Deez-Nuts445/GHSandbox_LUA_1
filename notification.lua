local module = {}

function module.makeNotif(text,time)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")


ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.500811696, -142, 0.33585164, 5)
Frame.Size = UDim2.new(0, 297, 0, 148)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.161616161, -1, 0.32432431, 1)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = text
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Frame_2.Parent = ScreenGui
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 64, 67)
Frame_2.Position = UDim2.new(0, 475, 0, 167)
Frame_2.Size = UDim2.new(0, 297, 0, 27)

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 50, 0, -3)
TextLabel_2.Size = UDim2.new(0, 200, 0, 30)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Notification"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function CKVUGUC_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	wait(time)
	script.Parent:Destroy()
end
coroutine.wrap(CKVUGUC_fake_script)()
local function AIYFE_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)
  local drag = loadstring(game:HttpGet("https://raw.githubusercontent.com/Deez-Nuts445/GHSandbox_LUA_1/main/dragify-plus-loadstring.lua"))()
	drag(Frame)
  drag(Frame_2)
  
end
coroutine.wrap(AIYFE_fake_script)()
end  

return module
