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

Section:NewButton("Shindo Life", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/IPgQi9Fa/raw'),true))()
end)

Section:NewButton("Military Tycoon", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/7c00qJKY/raw'),true))()
end)

Section:NewButton("Pull A Sword", "ButtonInfo", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraScript/Script/main/PullaSword'))()
end)

Section:NewButton("Strongman Simulator", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/Njm0OE4K/raw'),true))()
end)

Section:NewButton("Carry A Friend", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/E2efZ9N5/raw'),true))()
end)

Section:NewButton("Tsunami Game", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1169.48987, 229.699951, -1078.7804, -0.0564090088, -2.50256971e-09, -0.998407722, -1.93398506e-08, 1, -1.41387924e-09, 0.998407722, 1.92293008e-08, -0.0564090088)
end)

Section:NewButton("Ninja Legends", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)

Section:NewButton("Funky Friday", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/RandomScript/main/FunkyFridayMobile"))()
end)

Section:NewButton("The Floor Is Lava", "ButtonInfo", function()
    game:GetService("ReplicatedStorage").Remotes.AwardEvent2:FireServer()
end)

Section:NewButton("Legends of Speed", "ButtonInfo", function()
    while wait() do
        local args = {
            [1] = "collectOrb",
            [2] = "Blue Orb",
            [3] = "City"
        }
    
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
    end
end)

Section:NewButton("War Machines", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/Hn9WQOf6/raw'),true))()
end)

Section:NewButton("Escape Running Head", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/3VuKcB5D/raw'),true))()
end)

Section:NewButton("Car Dealership Tycoon", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/0QG73f9b/raw'),true))()
end)

Section:NewButton("Obby but your on a bike", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/siCxt7l3/raw'),true))()
end)

Section:NewButton("The Mimic", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/qQjTL1b5/raw'),true))()
end)

Section:NewButton("Sonic Speed", "ButtonInfo", function()
    local args = {
        [1] = "AddEventPodiumProgress",
        [2] = "CollectTimeStones",
        [3] = 100
    }
    game:GetService("ReplicatedStorage").Knit.Services.MapStateService.RE.OnStateAction:FireServer(unpack(args))
end)

Section:NewButton("Mega Mansion Tycoon", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/KEC8wyQA/raw'),true))()
end)

Section:NewButton("Need More Friends", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/O1TvLreD/raw'),true))()
end)

Section:NewButton("Barry's Prison Run", "ButtonInfo", function()
    game:GetService("ReplicatedStorage").Events2024.AwardBadge:FireServer()
end)

Section:NewButton("Natural Disaster Survival", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/jcvuGl7E/raw'),true))()
end)

Section:NewButton("Club Roblox", "ButtonInfo", function()
    game:GetService("ReplicatedStorage").DedicatedRemoteEvents.ExplodeDuck:FireServer()
end)

Section:NewButton("Bike Of Hell", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastefy.app/tpTROuRR/raw'),true))()
end)
