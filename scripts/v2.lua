local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("The Hunt - starhook.solutions", "DarkTheme")

local gameData = {
    {name = "Doors", placeID = 6516141723, loadstringURL = "https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"},
    {name = "A Wolf or Other", placeID = 2432005634, loadstringURL = "https://pastefy.app/VZjK95cQ/raw"},
    {name = "The Strongest Battlegrounds", placeID = 10449761463, loadstringURL = "https://pastefy.app/pzmQATZR/raw"},
    {name = "War Tycoon", placeID = 4639625707, loadstringURL = "https://pastefy.app/xeBgd3YU/raw"},
    {name = "Muscle Legends", placeID = 3623096087, loadstringURL = "https://pastebin.com/raw/KD1RAdPC"},
    {name = "Dress to Impress", placeID = 15101393044, loadstringURL = "https://pastefy.app/pSYBbjnz/raw"},
    {name = "Brookhaven", placeID = 4924922222, loadstringURL = "https://pastefy.app/F1uEVIsK/raw"},
    {name = "Murderers Vs Sheriffs", placeID = 12355337193, loadstringURL = "https://raw.githubusercontent.com/Deni210/murdersvssherrifsduels/main/rubyhub"},
    {name = "Red Cliff City", placeID = 8369888266, loadstringURL = "https://raw.githubusercontent.com/ToraScript/Script/main/HUNTRedcliff"},
    {name = "Mega Hide And Seek", placeID = 5708035517, loadstringURL = "https://pastefy.app/gFES8bq0/raw"},
    {name = "Warrior Cats", placeID = 3663340706, loadstringURL = "https://pastefy.app/B6T7FhLE/raw"},
    {name = "Project Smash", placeID = 15092647980, loadstringURL = "https://pastefy.app/a14nDm7X/raw"},
    {name = "Arm Wrestle Simulator", placeID = 13127800756, loadstringURL = "https://pastefy.app/Xwlh0PgF/raw"},
    {name = "Dragon Adventures", placeID = 3475397644, loadstringURL = "https://pastefy.app/8bdqghaC/raw"},
    {name = "Life Together", placeID = 13967668166, loadstringURL = "https://pastefy.app/VJ9E006W/raw"},
    {name = "Shindo Life", placeID = 4616652839, loadstringURL = "https://pastefy.app/IPgQi9Fa/raw"},
    {name = "Military Tycoon", placeID = 7180042682, loadstringURL = "https://pastefy.app/7c00qJKY/raw"},
    {name = "Pull A Sword", placeID = 13827198708, loadstringURL = "https://raw.githubusercontent.com/BaconBABA/script/main/HuntPullASword.lua"},
    {name = "Strongman Simulator", placeID = 6766156863, loadstringURL = "https://pastefy.app/Njm0OE4K/raw"},
    {name = "Carry A Friend", placeID = 14448662003, loadstringURL = "https://pastefy.app/E2efZ9N5/raw"},
    {name = "Tsunami Game", placeID = 7993293100, loadstringURL = "https://pastebin.com/raw/5J0n8R41"},
    {name = "Ninja Legends", placeID = 3956818381, loadstringURL = "https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"},
    {name = "Funky Friday", placeID = 6447798030, loadstringURL = "https://raw.githubusercontent.com/Nadir3709/RandomScript/main/FunkyFridayMobile"},
    {name = "The Floor Is Lava", placeID = 815405518, loadstringURL = "https://pastebin.com/raw/QzSqNcKB"},
    {name = "Legends of Speed", placeID = 3101667897, loadstringURL = "https://pastebin.com/raw/XcDaJAkb"},
    {name = "War Machines", placeID = 12828227139, loadstringURL = "https://pastefy.app/Hn9WQOf6/raw"},
    {name = "Escape Running Head", placeID = 6205205961, loadstringURL = "https://pastefy.app/3VuKcB5D/raw"},
    {name = "Car Dealership Tycoon", placeID = 1554960397, loadstringURL = "https://pastefy.app/0QG73f9b/raw"},
    {name = "Obby but your on a bike", placeID = 14184086618, loadstringURL = "https://pastefy.app/siCxt7l3/raw"},
    {name = "The Mimic", placeID = 6243699076, loadstringURL = "https://pastefy.app/qQjTL1b5/raw"},
    {name = "Sonic Speed", placeID = 9049840490, loadstringURL = "https://pastebin.com/raw/ppfwc8MU"},
    {name = "Mega Mansion Tycoon", placeID = 8328351891, loadstringURL = "https://pastefy.app/KEC8wyQA/raw"},
    {name = "Need More Friends", placeID = 16445368294, loadstringURL = "https://pastefy.app/O1TvLreD/raw"},
    {name = "Barry's Prison Run", placeID = 8712817601, loadstringURL = "https://pastebin.com/raw/PgjU4g4N"},
    {name = "Natural Disaster Survival", placeID = 189707, loadstringURL = "https://gitverse.ru/api/repos/stonifam/scripts/raw/branch/master/nds-clockFarm.lua"},
    {name = "Club Roblox", placeID = 3457390032, loadstringURL = "https://pastebin.com/raw/t90YEprT"},
    {name = "Bike Of Hell", placeID = 14943334555, loadstringURL = "https://pastefy.app/tpTROuRR/raw"},
    {name = "Livetopia", placeID = 6737970321, loadstringURL = "https://pastebin.com/raw/5nk5PYmC"},
    {name = "Metrolife", placeID = 12985361032, loadstringURL = "https://pastefy.app/UUdznPCa/raw"},
    {name = "Greenville", placeID = 891852901, loadstringURL = "https://pastefy.app/b44Cv2ob/raw"},
    {name = "Toilet Tower Defense", placeID = 13775256536, loadstringURL = "https://pastebin.com/raw/sqCd934B"},
    {name = "Restaurant Tycoon 2", placeID = 3398014311, loadstringURL = "https://raw.githubusercontent.com/iz037/Zeld-Hub/main/Script/Restaurant%20Tycoon%202.lua"},
    {name = "Swordburst 3", placeID = 11523257493, loadstringURL = "https://raw.githubusercontent.com/x3fall3nangel/FallAngelHub/main/Main.lua"},
    {name = "Royal High", placeID = 735030788, loadstringURL = "https://pastefy.app/92rRupF5/raw"},
    {name = "Wild Horse Islands", placeID = 6989310863, loadstringURL = "https://pastefy.app/u1EV3rSW/raw"},
    {name = "Catalog Avatar Creator", placeID = 7041939546, loadstringURL = "https://pastebin.com/raw/sjRMAEwe"},
    {name = "Undead Defense", placeID = 5670292785, loadstringURL = "https://pastefy.app/Z5JWlsUK/raw"},
    {name = "World // Zero", placeID = 2727067538, loadstringURL = "https://raw.githubusercontent.com/HeiKe2022/wz-beta/main/combine.lua"},
    {name = "Break In 2", placeID = 13864661000, loadstringURL = "https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/BreakIn2.lua"},
    {name = "Deadly Decisions", placeID = 12434172731, loadstringURL = "https://pastefy.app/eQii5GZt/raw"},
    {name = "Steep Steps", placeID = 11606818992, loadstringURL = "https://pastefy.app/fcGYCuGk/raw"},
    {name = "Weapon Fighting Simulator", placeID = 8554378337, loadstringURL = "https://raw.githubusercontent.com/kederal/lopSecure/main/WFS.lua"},
    {name = "Spray Paint!", placeID = 5991163185, loadstringURL = "https://pastefy.app/NqGhFthe/raw"},
    {name = "Lumberjack Simulator", placeID = 14897405913, loadstringURL = "https://pastefy.app/v5HB9S5u/raw"},
    {name = "Emergency Response: Liberty County", placeID = 2534724415, loadstringURL = "https://pastefy.app/oEH24mXe/raw"},
    {name = "Drive World", placeID = 10704789056, loadstringURL = "https://pastefy.app/JMVmDkIa/raw"},
    {name = "Bedwars", placeID = 6872265039, loadstringURL = "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua"},
    {name = "Combat Warriors", placeID = 4282985734, loadstringURL = "https://pastefy.app/BQEPkepo/raw"},
    {name = "Astro Renaissance", placeID = 11329389795, loadstringURL = "https://pastebin.com/raw/VZ3XEhMm"},
    {name = "Big Paintball 2", placeID = 9865958871, loadstringURL = "https://pastefy.app/hAa87AEn/raw"},
    {name = "3008", placeID = 2768379856, loadstringURL = "https://pastefy.app/sdAklfrf/raw"},
    {name = "Dungeon Quest", placeID = 2414851778, loadstringURL = "https://pastefy.app/vrj03Ign/raw"},
    {name = "Anime Dimensions Simulator", placeID = 6938803436, loadstringURL = "https://pastefy.app/XwMtLvEx/raw"},
    {name = "Gunfight Arena", placeID = 14518422161, loadstringURL = "https://pastefy.app/5FHMVmv8/raw"},
    {name = "Elemental Powers Tycoon", placeID = 10253248401, loadstringURL = "https://raw.githubusercontent.com/BaconBossScript/EPT/main/EPT"},
    {name = "SpongeBob Simulator", placeID = 14696958202, loadstringURL = "https://pastefy.app/0nLc7v8h/raw"},
    {name = "Piggy", placeID = 4623386862, loadstringURL = "https://raw.githubusercontent.com/BaconBossScript/Piggy/main/Piggy"},
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 90, 0, 38)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Close"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.Draggable = true
Toggle.MouseButton1Click:Connect(function()
    if Toggle.Text == "Close" then
        Toggle.Text = "Open"
    else
        Toggle.Text = "Close"
    end
    Library:ToggleUI()
end)

local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle

local function executeLoadstring(loadstringURL)
    if loadstringURL then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Loading Script",
            Text = "Please wait while the script is loading...",
        })
        loadstring(game:HttpGet(loadstringURL, true))()
    else
        warn("No loadstring provided for this game.")
    end
end

local function findGame()
    local currentPlaceID = game.PlaceId
    local isSupported = false
    for _, gameInfo in ipairs(gameData) do
        if currentPlaceID == gameInfo.placeID then
            executeLoadstring(gameInfo.loadstringURL)
            isSupported = true
            break
        end
    end
    if not isSupported then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Warning",
            Text = "Game is not supported! Please manually press the button of the respective game.",
        })
    end
end

findGame()

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        if game.Players.LocalPlayer == player then
            findGame()
        end
    end)
end)

local Tab = Window:NewTab("THE HUNT")
local Section = Tab:NewSection("The Hunt Scripts")

for _, gameInfo in ipairs(gameData) do
    Section:NewButton(gameInfo.name, "Load Script", function()
        executeLoadstring(gameInfo.loadstringURL)
    end)
end

local Tab = Window:NewTab("Settings")
local SettingSection = Tab:NewSection("The Hunt Scripts")

SettingSection:NewButton("Copy Discord Server Link", "Click to copy the Discord server link", function()
    local DiscordServerLink = "https://discord.gg/Rcus6RBDus"
    setclipboard(DiscordServerLink)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Discord Server Link Copied",
        Text = "The Discord server link has been copied to your clipboard.",
    })
end)
