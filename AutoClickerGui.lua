	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
  getgenv().key = "z"
	getgenv().time = 0.01
	local gui = Library.CreateLib("Autoclicker GUI","Midnight")
	local tab = gui:NewTab("Configure")
	local sec = tab:NewSection("Keys and time") -- for getgenv().key and getgenv().time
	sec:NewTextBox("Key", "Key to toggle", function(txt)
	getgenv().key = txt
end)
sec:NewTextBox("Time", "Time for the autoclicker", function(txt)
	getgenv().time = txt
end)
	local sec2 = tab:NewSection("Run")
sec2:NewButton("Run script", "Runs the autoclicker script", function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Deez-Nuts445/GHSandbox_LUA_1/main/AutoClicker"))()
   Library:ToggleUI()
end)
