local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("The Hunt Scripts", "DarkTheme")

local Tab = Window:NewTab("THE HUNT")
local Section = Tab:NewSection("The Hunt")

Section:NewButton("Doors", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
end)

Section:NewButton("A Wolf or Other", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/VZjK95cQ/raw'),true))()
end)

Section:NewButton("The Strongest Battlegrounds", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/pzmQATZR/raw'),true))()
end)

Section:NewButton("War Tycoon", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/xeBgd3YU/raw'),true))()
end)

Section:NewButton("Muscle Legends", "ButtonInfo", function()
    for i = 1, 20 do 
        local codes = {"EpicReward500", "MillionWarriors", "FrostGems10", "Musclestorm50", "SpaceGems50", "MegaLift50", "Speedy50", "SkyAgility50", "GalaxyCrystal50", "SuperMuscle100", "SuperPunch100", "Launch250"}
      
        for _, code in ipairs(codes) do
     
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("codeRemote"):InvokeServer(code)
        end
    end
end)

Section:NewButton("Dress to Impress", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/GzC2PpL0/raw'),true))()
end)

Section:NewButton("Murderers Vs Sheriffs", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Deni210/murdersvssherrifsduels/main/rubyhub", true))()
end)

Section:NewButton("Red Cliff City", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/GzC2PpL0/raw'),true))()
end)

Section:NewButton("Mega Hide And Seek", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/gFES8bq0/raw'),true))()
end)

Section:NewButton("Warrior Cats", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/B6T7FhLE/raw'),true))()
end)

Section:NewButton("Project Smash", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/a14nDm7X/raw'),true))()
end)

Section:NewButton("Arm Wrestle Simulator", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/Xwlh0PgF/raw'),true))()
end)

Section:NewButton("Arm Wrestle Simulator", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/Xwlh0PgF/raw'),true))()
end)

Section:NewButton("Dragon Adventures", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/8bdqghaC/raw'),true))()
end)

Section:NewButton("Life Together", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/VJ9E006W/raw'),true))()
end)

Section:NewButton("Brookhaven", "ButtonInfo", function()
    local egg_folder = workspace["Easter001!"].RobloxEggHunt
    local plr = game.Players.LocalPlayer
    for _,v in ipairs(egg_folder:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(plr.Character.HumanoidRootPart, v.Parent, 0)
            firetouchinterest(plr.Character.HumanoidRootPart, v.Parent, 1)
            wait(.65)
        end
    end
end)
