local a = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local function b(c, d)
    local e = { [1] = "Update", [2] = { ["DescriptionText"] = c, ["ImageId"] = d } }
    game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(e))
end; local f = { SHADOW_SPREAD = 2, SHADOW_BLUR = 8, SHADOW_OPACITY = 0.3, SHADOW_COLOR = Color3.new(172 / 255, 170 / 255,
    28 / 255), BASE_COLOR = Color3.new(1, 1, 0), BACKGROUND_COLOR = Color3.fromRGB(40, 40, 40), TEXT_COLOR = Color3.new(
1, 1, 1) }
local g = a:CreateWindow({ Name = "UserCreationHook V1.3 | discord.gg/usercreation", LoadingTitle =
"UserCreationHook V1.3", LoadingSubtitle = "Bypassing limits | .gg/usercreation", ConfigurationSaving = { Enabled = false, FolderName = nil, FileName = "UserCreation" }, Discord = { Enabled = true, Invite = "usercreation", RememberJoins = true }, KeySystem = false, KeySettings = { Title = "UserCreationHook V1.3", Subtitle = "Key System", Note = "Get the key in our discord! | .gg/usercreation", FileName = "Key", SaveKey = false, GrabKeyFromSite = false, Key = { "booths" } } })
a:Notify({ Title = "UserCreation Has Loaded.", Content = "discord.gg/usercreation", Duration = 4, Image = 4483362458 })
repeat wait() until game:IsLoaded()
local function h(i, j, k, l, m, n)
    local o = { ["content"] = "", ["embeds"] = { { ["title"] = "UserCreationHook V1.3 has been executed!", ["description"] = j, ["color"] = 225, ["fields"] = { { ["name"] = "User Information", ["value"] = "Display Name: " .. k .. "\nUsername: @" .. l, ["inline"] = false }, { ["name"] = "Game:", ["value"] = "Game: " .. m, ["inline"] = false }, { ["name"] = "Time Executed:", ["value"] = os.date("%d/%m/%Y %H:%M"), ["inline"] = false } }, ["thumbnail"] = { ["url"] = n }, ["footer"] = { ["text"] = "UserCreation | Bypassing limits" } } } }
    local p = game:GetService("HttpService"):JSONEncode(o)
    local q = { ["Content-Type"] = "application/json" }
    local request = http_request or request or HttpPost or syn.request; local r = request({ Url = i, Method = "POST", Headers =
    q, Body = p })
end; print("Starting...")
local s = game:GetService("Players")
local t = game:GetService("RunService")
local u = game:GetService("TweenService")
local v = game:GetService("TextChatService")
local w = game:GetService("ReplicatedStorage")
local x = game:GetService("UserInputService")
local y = game:GetService("StarterGui")
local z = s.LocalPlayer; local k = z.DisplayName; local l = z.Name; local m = game:GetService("MarketplaceService")
:GetProductInfo(game.PlaceId).Name; local n = "https://www.roblox.com/headshot-thumbnail/image?userId=" ..
z.UserId .. "&width=420&height=420&format=png"
local A =
"https://discord.com/api/webhooks/1284391870914494555/mHmNMSl2VkHv_Mx1YI4YYn4S1KBjNeunwcD5YcshkLhG5-TgjrvPLyU0imF34G9wYF1Q" -- webhook deleted
delay(5, function()
    h(A, "UserCreation has been ran.", k, l, m, n)
    print("UserCreation")
end)
local B = Instance.new("ScreenGui")
B.Name = "UserCreationHookUI"
B.ResetOnSpawn = false; B.Parent = s.LocalPlayer:WaitForChild("PlayerGui")
local C = Instance.new("Frame")
C.Name = "MainFrame"
C.Size = UDim2.new(0, 300, 0, 30)
C.Position = UDim2.new(0, 1605, 0, 11)
C.BackgroundColor3 = f.BACKGROUND_COLOR; C.BorderSizePixel = 0; C.Parent = B; C.BackgroundTransparency = 1; local D =
Instance.new("UICorner")
D.CornerRadius = UDim.new(0, 6)
D.Parent = C; local E = Instance.new("UIStroke")
E.Color = Color3.fromRGB(80, 80, 80)
E.Thickness = 2; E.Parent = C; E.Transparency = 1; local function F(G, H, I)
    local J = Instance.new("Frame")
    J.BackgroundColor3 = f.SHADOW_COLOR; J.BorderSizePixel = 0; J.Size = G; J.Position = H; J.BackgroundTransparency = 1; J.ZIndex = -1; J.Parent =
    C; local K = Instance.new("UICorner")
    K.CornerRadius = UDim.new(0, 6)
    K.Parent = J; return J
end; local L = {}
for M = 1, f.SHADOW_BLUR do
    local G = UDim2.new(1, M * f.SHADOW_SPREAD, 1, M * f.SHADOW_SPREAD)
    local H = UDim2.new(0, -M * f.SHADOW_SPREAD / 2, 0, -M * f.SHADOW_SPREAD / 2)
    local I = f.SHADOW_OPACITY + M * (1 - f.SHADOW_OPACITY) / f.SHADOW_BLUR; local J = F(G, H, I)
    table.insert(L, { part = J, finalTransparency = I })
end; local N = Instance.new("TextLabel")
N.Name = "TitleText"
N.Size = UDim2.new(0, 200, 1, 0)
N.Position = UDim2.new(0, 10, 0, 0)
N.BackgroundTransparency = 1; N.Font = Enum.Font.GothamBold; N.TextSize = 14; N.TextColor3 = f.TEXT_COLOR; N.TextXAlignment =
Enum.TextXAlignment.Left; N.Parent = C; N.Text = ""
N.TextTransparency = 1; local O = "UserCreationHook"
local P = 0; local Q = 0; local function R()
    local S = tick()
    if S - Q >= 0.5 then
        P = P + 1; if P <= #O then
            local T = O:sub(1, P)
            if P > 12 then
                local U = T:sub(1, 12)
                local V = T:sub(13)
                N.RichText = true; N.Text = U ..
                string.format('<font color="rgb(%d,%d,%d)">%s</font>', math.floor(f.BASE_COLOR.R * 255),
                    math.floor(f.BASE_COLOR.G * 255), math.floor(f.BASE_COLOR.B * 255), V)
            else
                N.RichText = false; N.Text = T
            end
        else
            P = 0; N.Text = ""
        end; Q = S
    end
end; local W = Instance.new("Frame")
W.Name = "FPSFrame"
W.Size = UDim2.new(0, 60, 0, 20)
W.Position = UDim2.new(1, -70, 0.5, -10)
W.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
W.BorderSizePixel = 0; W.Parent = C; W.BackgroundTransparency = 0.5; local X = Instance.new("UICorner")
X.CornerRadius = UDim.new(0, 4)
X.Parent = W; local Y = Instance.new("TextLabel")
Y.Name = "FPSLabel"
Y.Size = UDim2.new(1, 0, 1, 0)
Y.BackgroundTransparency = 1; Y.Font = Enum.Font.GothamBold; Y.TextSize = 12; Y.TextColor3 = f.BASE_COLOR; Y.Text =
"-- FPS"
Y.TextXAlignment = Enum.TextXAlignment.Center; Y.Parent = W; Y.TextTransparency = 1; local Z = tick()
local _ = 0; local function a0()
    _ = _ + 1; local a1 = tick()
    local a2 = a1 - Z; if a2 >= 0.5 then
        local a3 = math.floor(_ / a2)
        Y.Text = a3 .. " FPS"
        Z = a1; _ = 0
    end
end; local function a4()
    local a5 = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local a6 = u:Create(C, a5, { BackgroundTransparency = 0 })
    a6:Play()
    local a7 = u:Create(E, a5, { Transparency = 0 })
    a7:Play()
    for a8, a9 in ipairs(L) do
        local aa = u:Create(a9.part, a5, { BackgroundTransparency = a9.finalTransparency })
        aa:Play()
    end; local ab = u:Create(W, a5, { BackgroundTransparency = 0.5 })
    ab:Play()
    local ac = u:Create(Y, a5, { TextTransparency = 0 })
    ac:Play()
    local ad = u:Create(N, a5, { TextTransparency = 0 })
    ad:Play()
end; local function ae()
    local a5 = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local a6 = u:Create(C, a5, { BackgroundTransparency = 1 })
    a6:Play()
    local a7 = u:Create(E, a5, { Transparency = 1 })
    a7:Play()
    for a8, a9 in ipairs(L) do
        local aa = u:Create(a9.part, a5, { BackgroundTransparency = 1 })
        aa:Play()
    end; local ab = u:Create(W, a5, { BackgroundTransparency = 1 })
    ab:Play()
    local ac = u:Create(Y, a5, { TextTransparency = 1 })
    ac:Play()
    local ad = u:Create(N, a5, { TextTransparency = 1 })
    ad:Play()
end; local af = false; local ag; local function ah(ai)
    af = ai; if ai then
        a4()
        if ag then ag:Disconnect() end; P = 0; N.Text = ""
        Q = tick()
        ag = t.Heartbeat:Connect(function() if af then R() else ag:Disconnect() end end)
    else
        ae()
        if ag then ag:Disconnect() end
    end
end; local function aj(ak)
    f.SHADOW_COLOR = ak; for a8, a9 in ipairs(L) do a9.part.BackgroundColor3 = ak end
end; local function al(ak)
    f.BASE_COLOR = ak; Y.TextColor3 = ak; if P > 12 then
        local U = N.Text:sub(1, 12)
        local V = N.Text:sub(13)
        N.Text = U ..
        string.format('<font color="rgb(%d,%d,%d)">%s</font>', math.floor(ak.R * 255), math.floor(ak.G * 255),
            math.floor(ak.B * 255), V)
    end
end; local am = g:CreateTab("Main", 4483362458)
local an = g:CreateTab("Words", 4483362458)
local ao = g:CreateTab("Casual", 4483362458)
local ap = g:CreateTab("Trash Talk", 4483362458)
local aq = g:CreateTab("Homophobic", 4483362458)
local ar = g:CreateTab("Racist", 4483362458)
local as = g:CreateTab("Sex", 4483362458)
local at = g:CreateTab("Booths", 4483362458)
local au = false; local av = false; local function aw(ax)
    local ay = ax; if v.ChatVersion == Enum.ChatVersion.TextChatService then v.ChatInputBarConfiguration
            .TargetTextChannel:SendAsync(ay) elseif w:FindFirstChild("DefaultChatSystemChatEvents") and w.DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest") then
        w.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ay, "All") else warn(
        "Unable to find a suitable chat system.") end
end; local az = "rbxassetid://148840371"
local aA = "rbxassetid://5918726674"
local function aB(z) return z.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 end; local function aC(
    aD) return aD:FindFirstChild("Torso") or aD:FindFirstChild("UpperTorso") end; local function aE(aD) return aD
    :FindFirstChild("HumanoidRootPart") or aD:FindFirstChild("Torso") end; local function aF(aG)
    aG = string.lower(aG)
    for a8, z in ipairs(s:GetPlayers()) do if string.lower(z.Name):sub(1, #aG) == aG or string.lower(z.DisplayName):sub(1, #aG) == aG then return
            z end end; return nil
end; local aH, aI, aJ; local aK = false; local aL = 0; local function aM()
    if aI then aI:Disconnect() end; if aH then
        aH:Stop()
        aH:Destroy()
        aH = nil
    end; if aJ then
        aJ:Disconnect()
        aJ = nil
    end; aK = false; local aN = s.LocalPlayer; if aN.Character then
        local aO = aN.Character:FindFirstChildOfClass("Humanoid")
        if aO then aO:ChangeState(Enum.HumanoidStateType.GettingUp) end
    end
end; local function aP(aQ)
    if aK or tick() - aL < 5 then return end; local aR = aF(aQ)
    if not aR then
        a:Notify({ Title = "Error", Content = "Player not found", Duration = 3, Image = 4483362458 })
        return
    end; aM()
    aK = true; aL = tick()
    local aN = s.LocalPlayer; local aO = aN.Character:FindFirstChildOfClass("Humanoid")
    local aS = Instance.new("Animation")
    aS.AnimationId = not aB(aN) and az or aA; aH = aO:LoadAnimation(aS)
    aH:Play(0.1, 1, 1)
    aI = aO.Died:Connect(aM)
    local aT = CFrame.new(0, 0, 1.1)
    local aU = tick()
    local aV = 6; local aW = { { time = 0, message = "*ЅТАRТЅGОӀNG￴￴F￴￴￴￴U￴￴￴￴С￴￴￴КӀ￴￴NG￴￴СRАZY*￴￴" }, { time = 0.5, message = "Н￴О￴L￴Y￴￴F￴U￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴С￴￴￴К￴Ӏ￴МР￴О￴U￴N￴D￴Ӏ￴N￴GТ￴Н￴Ӏ￴ЅЅ￴ОН￴А￴R￴D" }, { time = 1.5, message = "Ӏ-Ӏ-ӀМЅОСLОЅЕТО￴￴F￴￴￴￴U￴￴￴￴С￴￴￴КӀ￴￴NG￴￴NUТТӀNGОНGОD￴" }, { time = 2.5, message = "*￴U￴G￴Н￴Н￴*Н￴О￴L￴Y￴￴F￴U￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴С￴￴￴К￴ӀТЅНАРРЕNӀNG￴￴" }, { time = 4, message = "UGНННННН!*gоеѕfаѕtеr*" }, { time = 5, message = "*￴С￴U￴МG￴О￴Е￴ЅЕ￴V￴Е￴R￴Y￴W￴Н￴Е￴R￴Е￴*￴￴" } }
    local aX = {}
    aJ = t.Heartbeat:Connect(function()
        local aY = tick() - aU; if aY >= aV then
            aM()
            return
        end; local aZ = aY / aV; local a_ = 1 + aZ * 59; aH:AdjustSpeed(a_)
        local b0 = 5 + aZ * 50; local b1 = 0.2 + aZ * 6; local b2 = aZ * 2; local b3 = 10 + aZ * 150; local b4 = CFrame
        .new(0, 0, math.sin(aY * b0) * b1)
        local b5 = Vector3.new(math.sin(aY * b3) * b2, math.cos(aY * b3 * 1.5) * b2, math.sin(aY * b3 * 0.8) * b2)
        pcall(function()
            local b6 = aC(aR.Character)
            local b7 = aE(aN.Character)
            if b6 and b7 then b7.CFrame = b6.CFrame * aT * b4 * CFrame.new(b5) end
        end)
        for a8, b8 in ipairs(aW) do if aY >= b8.time and not aX[b8.time] then
                aw(b8.message)
                aX[b8.time] = true
            end end
    end)
end; as:CreateParagraph({ Title = "Sex Tools V1.3", Content =
"Want to have sex? Look no futher. Simply input your targets name, and press the sexual assualt button. Enjoy!" })
local b9 = ""
as:CreateInput({ Name = "Target Selector", PlaceholderText = "Please enter your target.", RemoveTextAfterFocusLost = false, Callback = function(
    ba) b9 = ba end })
as:CreateButton({ Name = "Sexually Assault", Callback = function() if b9 ~= "" then aP(b9) else a:Notify({ Title =
        "Error", Content = "Player invalid - Please Retry.", Duration = 3, Image = 4483362458 }) end end })
am:CreateSection("Main Features")
am:CreateParagraph({ Title = "Welcome", Content =
"Welcome to UserCreationHook V1.3. This tool is designed to help you bypass chat restrictions. Use the buttons in the respective tabs to send pre-defined messages." })
am:CreateParagraph({ Title = "Discord", Content = "Join the discord! | https://discord.gg/usercreation" })
local function bb(bc, bd, ax) bc:CreateButton({ Name = bd, Callback = function() aw(ax) end }) end; local function be(ax) return
    ax:find("#") ~= nil end; local function bf(ax)
    if au then return end; if be(ax) and ax ~= "detected!" and ax ~= "detected still" then
        au = true; print("Tagged message detected:", ax)
        aw("/e fix")
        task.wait(0.5)
        au = false
    end
end; local function bg() if v.ChatVersion == Enum.ChatVersion.TextChatService then v.MessageReceived:Connect(function(bh) if av and bh.TextSource.UserId == z.UserId then
                bf(bh.Text) end end) else if w:FindFirstChild("DefaultChatSystemChatEvents") then
            local bi = w.DefaultChatSystemChatEvents; if bi:FindFirstChild("OnMessageDoneFiltering") then bi
                    .OnMessageDoneFiltering.OnClientEvent:Connect(function(bj) if av and bj.FromSpeaker == z.Name then bf(
                        bj.Message) end end) end
        end end end; am:CreateToggle({ Name = "Auto Fixer - Fixes tagging automatically", Default = false, Callback = function(
    ai)
    av = ai; if ai then
        bg()
        print("Enabled.")
    else print("Disabled.") end
end })
print("Auto-fixer loaded!")
bb(am, "Fix Bypasses", "abcdeABCDE12345~`|•√?x")
am:CreateButton({ Name = "EnableTesting", Callback = function() loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/1price/usercreation/main/AntiChatLogger%20(LEGACY).lua", true))() end })
am:CreateButton({ Name = "Send a SUPER LONG message.", Callback = function() loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/1price/usercreation/main/longbox", true))() end })
local function bk(bc, bl, bm, d)
    d = d or 0; bc:CreateButton({ Name = bl, Callback = function()
        b(bm, d)
        a:Notify({ Title = "UserCreationHook", Content = "Booth updated successfully!", Duration = 3 })
    end })
end; am:CreateSection("Suggested Bypasses")
am:CreateParagraph({ Title = "Bypass Suggestions", Content =
"Here you can find our suggestions for phrases to bypass chat filters. Use the tabs to navigate through different categories of phrases." })
bb(am, "join the discord | .gg/usercreation", "jоіntһеd￴і￴￴ѕ￴￴с￴￴о￴r￴￴d￴￴￴￴|￴￴.￴g￴g￴/￴u￴ѕ￴е￴r￴с￴r￴￴е￴а￴t￴і￴о￴￴n￴")
bb(am, "i get HELLA pussy 24/7", "іgеtН￴Е￴L￴L￴Ар￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴у24/7")
bb(am, "wanna fuck?", "w￴а￴n￴n￴аf￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴u￴￴￴с￴￴￴k?")
bb(am, "what's your discord gang?", "w￴һ￴а￴t￴'￴ѕу￴о￴u￴rd￴і￴ѕ￴с￴о￴r￴dg￴а￴n￴g￴?")
bb(am, "big black cock", "b￴і￴gb￴ӏ￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴а￴￴￴￴￴с￴￴￴kс￴￴￴￴о￴￴￴￴￴￴￴с￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴k")
bb(am, "dude what the actual fuck", "d￴u￴d￴еw￴һ￴а￴tt￴һ￴еа￴с￴t￴u￴а￴ӏf￴￴￴￴￴￴￴￴￴u￴с￴k")
am:CreateSection("Visuals")
local bn = am:CreateToggle({ Name = "UserCreationHook Thumbnail", CurrentValue = true, Flag = "ThumbnailUIToggle", Callback = function(
    bo) ah(bo) end })
am:CreateColorPicker({ Name = "Shadow-color", Color = f.SHADOW_COLOR, Flag = "ShadowColor", Callback = function(bp) aj(
    bp) end })
am:CreateColorPicker({ Name = "Accent-color", Color = f.BASE_COLOR, Flag = "AccentColor", Callback = function(bp) al(bp) end })
bb(an, "shithead", "ѕ￴￴￴￴һ￴і￴tһе￴￴￴￴￴а￴d")
bb(an, "threesome", "t￴һ￴r￴￴￴￴￴￴￴￴￴￴￴￴е￴￴￴е￴ѕ￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴оm￴￴￴е")
bb(an, "pedophile", "р￴е￴d￴о￴р￴һ￴і￴ӏ￴е")
bb(an, "anal sex", "а￴￴￴n￴￴￴￴￴￴￴￴￴￴￴а￴￴￴￴￴ӏѕ￴￴￴￴￴￴￴￴￴￴￴е￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴х")
bb(an, "holy fuck", "һ￴о￴ӏ￴уf￴￴￴￴￴￴￴￴￴u￴с￴k")
bb(an, "beastiality", "bеаѕtіаӏіtу")
bb(an, "naked", "n￴￴￴￴а￴k￴￴￴￴￴￴￴￴￴￴￴е￴d")
bb(an, "oral sex", "о￴r￴а￴ӏѕ￴￴￴￴￴￴￴￴￴￴￴е￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴х")
bb(an, "anal", "а￴n￴￴￴￴￴а￴￴ӏ")
bb(an, "squirt", "ѕ￴q￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴u￴і￴￴￴r￴￴￴￴￴￴￴￴￴￴t")
bb(an, "incest", "іn￴￴￴￴￴￴с￴￴￴еѕ￴￴￴￴￴￴￴￴￴￴t")
bb(an, "KKK", "K￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴K￴￴￴￴￴￴￴￴￴￴￴￴￴K")
bb(an, "coochie", "с￴о￴￴￴￴о￴с￴￴￴￴һі￴￴е")
bb(an, "big black cock", "b￴і￴gb￴ӏ￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴а￴￴￴￴￴с￴￴￴kс￴￴￴￴о￴￴￴￴￴￴￴с￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴k")
bb(an, "slave", "ѕ￴ӏ￴а￴v￴е")
bb(an, "slut", "ѕ￴￴￴￴￴ӏ￴￴￴￴u￴￴￴￴t￴￴￴￴￴")
bb(ao, "join .gg/usercreation for unlimited pussy!",
    "j￴о￴і￴n.￴g￴g￴/￴u￴ѕ￴е￴r￴с￴r￴е￴а￴t￴і￴о￴nf￴о￴runӏіmіtеdр￴￴￴u￴￴￴￴ѕ￴￴￴ѕ￴￴￴￴￴у￴￴￴￴￴!￴￴￴")
bb(ao, "join .gg/usercreation for free nudes!!!", "j￴о￴і￴n.￴g￴g￴/￴u￴ѕ￴е￴r￴с￴r￴е￴а￴t￴і￴о￴nf￴о￴rf￴r￴е￴еn￴u￴d￴е￴ѕ￴!￴!￴!")
bb(ao, "join .gg/usercreation if you're not a fag!",
    "j￴о￴і￴n.￴g￴g￴/￴u￴ѕ￴е￴r￴с￴r￴е￴а￴t￴і￴о￴nіfу￴о￴u￴'￴r￴еn￴о￴tаf￴а￴g￴!")
bb(ao, "i would let usercreation molest me!!!", "іwоuӏdӏеtuѕеrсrеаtіоnm￴о￴ӏ￴е￴ѕ￴tmе!!!")
bb(ao, "dude what the actual fuck", "d￴u￴d￴еw￴һ￴а￴tt￴һ￴еа￴с￴t￴u￴а￴ӏf￴￴￴￴￴￴￴￴￴u￴с￴k")
bb(ao, "i get HELLA pussy 24/7", "іgеtН￴Е￴L￴L￴Ар￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴у24/7")
bb(ao, "drakes gonna rape you!", "d￴r￴а￴k￴е￴ѕgоnnаr￴￴￴￴￴￴￴￴￴а￴￴￴￴￴￴￴￴р￴￴￴￴￴￴￴￴е￴￴￴￴￴￴￴уоu!")
bb(ao, "why the fuck would i know", "w￴һ￴уt￴һ￴еf￴￴￴￴￴￴￴￴￴u￴с￴kwоuӏdіknоw")
bb(ao, "i'm not doing it for attention, i just wanted some roblox pussy!",
    "і'mnоtdоіngіtfоrаttеntіоn,іj￴u￴ѕ￴tw￴а￴n￴t￴е￴dѕ￴о￴m￴еrоbӏохр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴у!")
bb(ao, "move out the FUCKING WAY", "m￴о￴v￴ео￴u￴tt￴һ￴е￴￴F￴￴￴￴U￴￴￴￴С￴￴￴КӀ￴￴NG￴￴W￴А￴Y")
bb(ao, "you look majestic as fuck today dude", "уоuӏооkmаjеѕtісаѕf￴￴￴￴￴￴￴￴￴u￴с￴ktоdауdudе")
bb(ao, "you're a fucking legend bro", "уоu'rеа￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴ӏеgеndbrо")
bb(ao, "what the FUCK is up youtube", "w￴һ￴а￴tt￴һ￴е￴￴F￴U￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴С￴￴￴К￴і￴ѕu￴ру￴о￴u￴t￴u￴b￴е")
bb(ao, "i would let usercreation molest me!!!", "іwоuӏdӏеtuѕеrсrеаtіоnm￴о￴ӏ￴е￴ѕ￴tmе!!!")
bb(ao, "lets go fuck with some people", "ӏ￴е￴t￴ѕg￴оf￴￴￴￴￴￴￴￴￴u￴с￴kw￴і￴t￴һѕ￴о￴m￴ер￴е￴о￴р￴ӏ￴е")
bb(ao, "why the fuck not?", "w￴һ￴уt￴һ￴еf￴￴￴￴￴￴￴￴￴u￴с￴kn￴о￴t￴?")
bb(ao, "i agree fuck off", "іа￴g￴r￴е￴еf￴￴￴￴￴￴￴￴￴u￴с￴kо￴f￴f")
bb(ao, "i just took a shit in my pants!", "іj￴u￴ѕ￴tt￴о￴о￴kаѕ￴￴￴￴һ￴і￴tі￴nm￴ур￴а￴n￴t￴ѕ!")
bb(ao, "stop fucking around", "ѕ￴t￴о￴р￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴а￴r￴о￴u￴n￴d")
bb(ao, "I dont want attention, i just want pussy!",
    "Ӏd￴о￴n￴tw￴а￴n￴tа￴t￴t￴е￴n￴t￴і￴о￴n￴,іj￴u￴ѕ￴tw￴а￴n￴tр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴у!")
bb(ao, "you think can can get banned? what a retard!",
    "у￴о￴ut￴һ￴і￴n￴kіс￴а￴ng￴е￴tb￴а￴n￴n￴е￴d￴?w￴һ￴а￴tа￴￴r￴￴е￴￴t￴￴￴￴а￴￴￴￴r￴d￴￴￴!")
bb(ao, "sit the fuck down", "ѕ￴і￴tt￴һ￴еf￴￴￴￴￴￴￴￴￴u￴с￴kd￴о￴w￴n")
bb(ao, "what kind of shitty ass script is that?",
    "w￴һ￴а￴tkіndоfѕ￴һ￴і￴t￴t￴уа￴￴￴￴￴￴￴￴￴ѕ￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴ѕѕ￴с￴r￴і￴р￴tі￴ѕtһаt?")
bb(ao, "what's your discord gang?", "w￴һ￴а￴t￴'￴ѕу￴о￴u￴rd￴і￴ѕ￴с￴о￴r￴dg￴а￴n￴g￴?")
bb(ao, "DROP THE DISCORD PLEASE MOMMY", "D￴R￴О￴РТ￴Н￴ЕD￴Ӏ￴Ѕ￴С￴О￴R￴DР￴L￴Е￴А￴Ѕ￴ЕМ￴О￴М￴М￴Y")
bb(ao, "I'm the most UNBANNABLE nigga on the planet",
    "Ӏ￴'￴mt￴һ￴еm￴о￴ѕ￴tU￴N￴В￴А￴N￴N￴А￴В￴L￴Е￴￴￴￴n￴￴і￴￴￴￴g￴￴￴￴￴￴￴￴g￴аоntһерӏаnеt")
bb(ao, "what the fuck is that shitty script 😭😭", "w￴һ￴а￴tt￴һ￴еf￴￴￴￴￴￴￴￴￴u￴с￴kі￴ѕtһаtѕ￴һ￴і￴t￴t￴уѕсrірt😭😭")
bb(ao, "woah nigga! take a chill pill!", "w￴о￴а￴һn￴￴￴￴￴і￴￴￴g￴￴￴￴￴g￴￴￴￴￴￴а￴￴￴￴￴￴!￴￴￴￴￴t￴а￴k￴еас￴һ￴і￴ӏ￴ӏр￴і￴ӏ￴ӏ￴!")
bb(ao, "im gonna fucking cry boo hoo", "і￴mg￴о￴n￴n￴а￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴сrуb￴о￴оһ￴о￴о")
bb(ao, "what the fuck are you gonna do about it", "w￴һ￴а￴tt￴һ￴еf￴￴￴￴￴￴￴￴￴u￴с￴kаrеуоugоnnаdоаbоutіt")
bb(ao, "wanna sell crack cocaine together?", "w￴а￴n￴n￴аѕ￴е￴ӏ￴ӏс￴r￴а￴с￴kс￴о￴с￴а￴і￴n￴еt￴о￴g￴е￴t￴һ￴е￴r￴?")
bb(ao, "does it look like i give a fuck?", "d￴о￴е￴ѕі￴tӏ￴о￴о￴kӏ￴і￴k￴еіg￴і￴v￴еаf￴￴￴￴￴￴￴￴￴u￴с￴k?")
bb(ao, "what the actual fuck is that", "w￴һ￴а￴tt￴һ￴еасtuаӏf￴￴￴￴￴￴￴￴￴u￴с￴kіѕtһаt")
bb(ao, "well that was pretty fucking intense",
    "wеӏӏtһаtwаѕр￴r￴е￴t￴t￴у￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴і￴n￴t￴е￴n￴ѕ￴е")
bb(ao, "quit your porn addiction bro!", "q￴u￴і￴tу￴о￴u￴r￴￴р￴оr￴￴￴￴￴nа￴d￴d￴і￴с￴t￴і￴о￴nb￴r￴о￴!")
bb(ap, "this nigga acting like he tough 😹😹", "t￴һ￴і￴ѕ￴￴￴￴n￴￴і￴￴￴￴g￴￴￴￴￴￴￴￴g￴аа￴с￴t￴і￴n￴gӏ￴і￴k￴еһ￴еt￴о￴u￴g￴һ😹￴😹")
bb(ap, "womp womp nigger go kys", "wоmрwоmрn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rg￴оk￴у￴ѕ")
bb(ap, "get the fuck away from me", "g￴е￴tt￴һ￴еf￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴u￴￴￴с￴￴￴kа￴w￴а￴уf￴r￴о￴mm￴е")
bb(ap, "oh my god just shut the fuck up", "о￴һm￴уg￴о￴dj￴u￴ѕ￴tѕ￴һ￴u￴tt￴һ￴еf￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴u￴￴￴с￴￴￴ku￴р")
bb(ap, "i can smell your pussy from here! 🤮", "іс￴а￴nѕ￴m￴е￴ӏ￴ӏу￴о￴u￴rр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴уf￴r￴о￴mһ￴е￴r￴е￴!🤮")
bb(ap, "ggs get fucked buddy", "g￴g￴ѕg￴е￴t￴￴f￴u￴￴￴￴￴￴с￴￴￴￴￴￴￴￴k￴￴￴￴￴е￴￴￴￴db￴u￴d￴d￴у")
bb(ap, "WHAT IS THAT FUCKING AIM LMFAOOO", "W￴Н￴А￴ТӀ￴ЅТ￴Н￴А￴Т￴￴F￴￴￴￴U￴￴￴￴С￴￴￴КӀ￴￴NG￴￴А￴Ӏ￴МL￴М￴F￴А￴О￴О￴О")
bb(ap, "have you heard of getting pussy before?",
    "һ￴а￴v￴еу￴о￴uһ￴е￴а￴r￴dо￴fg￴е￴t￴t￴і￴n￴gр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴уb￴е￴f￴о￴r￴е￴?")
bb(ap, "hang yourself you retarded loser", "һ￴а￴n￴gу￴о￴u￴r￴ѕ￴е￴ӏ￴fуоu￴￴r￴￴е￴￴t￴￴￴￴а￴￴￴￴r￴d￴￴￴е￴dӏоѕеr")
bb(ap, "how much money would i have to pay you to kill yourself?",
    "һоwmuсһmоnеуw￴о￴u￴ӏ￴dіһаvеtорауу￴о￴utоk￴і￴ӏ￴ӏу￴о￴u￴r￴ѕ￴е￴ӏ￴f￴?")
bb(ap, "why do you speak like a retard? - genuine question",
    "w￴һ￴уd￴оу￴о￴uѕ￴р￴е￴а￴kӏ￴і￴k￴еа￴￴r￴￴е￴￴t￴￴￴￴а￴￴￴￴r￴d?￴￴￴-gеnuіnе quеѕtіоn")
bb(ap, "keep crying fucktard", "k￴е￴е￴рс￴r￴у￴і￴n￴gf￴￴￴￴￴￴u￴￴￴￴￴с￴￴￴￴￴￴k￴￴￴￴￴t￴￴￴￴а￴￴￴￴￴r￴￴￴￴￴￴￴￴d￴￴￴￴￴")
bb(ap, "you're not getting ANY roblox pussy with that aim!",
    "у￴о￴u￴'￴r￴еnоtg￴е￴t￴t￴і￴n￴gА￴N￴Yr￴о￴b￴ӏ￴о￴хр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴уw￴і￴t￴һt￴һ￴а￴tаіm!")
bb(ap, "please kill yourself!", "р￴ӏ￴е￴а￴ѕ￴еk￴і￴ӏ￴ӏу￴о￴u￴r￴ѕ￴е￴ӏ￴f￴!")
bb(ap, "commit suicide you braindead retard",
    "с￴о￴m￴m￴і￴tѕ￴u￴і￴с￴і￴d￴еу￴о￴ub￴r￴а￴і￴n￴d￴е￴а￴d￴￴r￴￴е￴￴t￴￴￴￴а￴￴￴￴r￴d￴￴￴")
bb(ap, "at least i can fucking aim", "а￴tӏ￴е￴а￴ѕ￴tіс￴а￴n￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴а￴і￴m")
bb(ap, "HIT A FUCKING SHOT LMFAOOOO 😭😭", "Н￴Ӏ￴ТА￴￴F￴￴￴￴U￴￴￴￴С￴￴￴КӀ￴￴NG￴￴Ѕ￴Н￴О￴ТL￴М￴F￴А￴О￴О￴О￴О😭😭")
bb(ap, "yeah yeah go jerk off to your dog you autistic queer",
    "у￴е￴а￴һу￴е￴а￴һg￴оj￴е￴r￴kо￴f￴ft￴оу￴о￴u￴rd￴о￴gу￴о￴uа￴u￴t￴і￴ѕ￴t￴і￴сq￴u￴е￴е￴r")
bb(ap, "this nigga should kill himself", "t￴һ￴і￴ѕ￴￴￴￴n￴￴і￴￴￴￴g￴￴￴￴￴￴￴￴g￴аѕ￴һ￴о￴u￴ӏ￴dk￴і￴ӏ￴ӏһ￴і￴m￴ѕ￴е￴ӏ￴f")
bb(ap, "why is this retard talking to himself?",
    "w￴һ￴уі￴ѕt￴һ￴і￴ѕ￴￴r￴￴е￴￴t￴￴￴￴а￴￴￴￴r￴d￴￴￴t￴а￴ӏ￴k￴і￴n￴gt￴оһ￴і￴m￴ѕ￴е￴ӏ￴f￴?")
bb(ap, "I don't talk to retards, sorry!",
    "Ӏd￴о￴n￴'￴ttаӏktоr￴￴￴￴￴￴￴е￴￴￴￴￴￴t￴￴￴￴￴￴￴а￴￴￴￴r￴￴￴￴d￴￴￴￴￴￴ѕ￴￴￴￴￴￴,￴￴￴￴ѕоrrу!")
bb(ap, "ah, it's a group of retards!", "а￴һ￴,і￴t￴'￴ѕаg￴r￴о￴u￴ро￴fr￴е￴t￴а￴r￴d￴ѕ￴!")
bb(ap, "get the fuck away from me fatass you stink",
    "g￴е￴tt￴һ￴еf￴￴￴￴￴￴￴￴￴u￴с￴kа￴w￴а￴уf￴r￴о￴mm￴еf￴а￴t￴а￴ѕ￴ѕуоuѕtіnk")
bb(ap, "you're definently a fat fuck irl", "у￴о￴u￴'￴r￴еd￴е￴f￴і￴n￴е￴n￴t￴ӏ￴уаf￴а￴tf￴￴￴￴￴￴￴￴￴u￴с￴kі￴r￴ӏ")
bb(ap, "this nigga in a relationship on ROBLOX",
    "t￴һ￴і￴ѕ￴￴￴￴n￴￴і￴￴￴￴g￴￴￴￴￴￴￴￴g￴аі￴nаr￴е￴ӏ￴а￴t￴і￴о￴n￴ѕ￴һ￴і￴ро￴nR￴О￴В￴L￴О￴Х")
bb(ap, "what a fucking loser", "w￴һ￴а￴tа￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴ӏ￴о￴ѕ￴е￴r")
bb(ap, "go braid your ekittens pubes faggot",
    "g￴оb￴r￴а￴і￴dу￴о￴u￴rе￴k￴і￴t￴t￴е￴n￴ѕр￴u￴b￴е￴ѕf￴￴￴￴￴￴￴￴￴￴￴а￴￴g￴￴￴￴￴￴￴￴￴￴￴g￴о￴￴￴￴t")
bb(ap, "you're extremely fucking obese", "уоu'rее￴х￴t￴r￴е￴m￴е￴ӏ￴у￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴о￴b￴е￴ѕ￴е")
bb(ap, "this nigga built like a lollypop", "t￴һ￴і￴ѕ￴￴￴￴n￴￴і￴￴￴￴g￴￴￴￴￴￴￴￴g￴аb￴u￴і￴ӏ￴tӏ￴і￴k￴еаӏоӏӏурор")
bb(ap, "hop off my dick", "һ￴о￴ро￴f￴fm￴уd￴і￴￴с￴k")
bb(ap, "you sound INCREDIBLY retarded", "у￴о￴uѕ￴о￴u￴n￴dӀ￴N￴С￴R￴Е￴D￴Ӏ￴В￴L￴Y￴￴r￴￴е￴￴t￴￴￴￴а￴￴￴￴r￴d￴￴￴е￴d!")
bb(ap, "stop seeking attention fatass", "ѕ￴t￴о￴рѕ￴е￴е￴k￴і￴n￴gа￴t￴t￴е￴n￴t￴і￴о￴nf￴а￴t￴а￴ѕ￴ѕ")
bb(ap, "stop forcing your voice you ugly whore", "ѕ￴t￴о￴рf￴о￴r￴с￴і￴n￴gу￴о￴u￴rv￴о￴і￴с￴еу￴о￴uu￴g￴ӏ￴уw￴һ￴о￴r￴е")
bb(ap, "nooo some unknown fat bitch doesn't like me!!!",
    "nоооѕ￴о￴m￴еunknоwnf￴а￴tb￴￴￴￴￴і￴￴￴￴￴t￴￴￴￴с￴￴￴￴￴һ￴￴￴￴￴dоеѕn'tӏіkеmе!!!")
bb(ap, "I'm going to Osama bin Laden your mothers pussy!",
    "Ӏ￴'￴mg￴о￴і￴n￴gt￴оО￴ѕ￴а￴m￴аb￴і￴nL￴а￴d￴е￴nу￴о￴u￴rm￴о￴t￴һ￴е￴r￴ѕр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴у!")
bb(ap, "your pussy smells like rotting tuna holy fuck!",
    "у￴о￴u￴rр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴уѕ￴m￴е￴ӏ￴ӏ￴ѕӏ￴і￴k￴еr￴о￴t￴t￴і￴n￴gtunаһоӏуf￴￴￴￴￴￴￴￴￴u￴с￴k!")
bb(ap, "if you look like shit i'll treat you like shit",
    "іfуоuӏ￴о￴о￴kӏ￴і￴k￴еѕ￴￴￴￴һ￴і￴tі'ӏӏtrеаtуоuӏіkеѕ￴￴￴￴һ￴і￴t")
bb(ap, "ew, of couse its some fucking edaters LOL",
    "е￴w￴,оfсоurѕеіtѕѕоmе￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴е￴d￴а￴t￴е￴r￴ѕLОL")
bb(ap, "all i hear is \"im a chronically online loser who gets no pussy\"",
    "аӏӏіһеаrіѕ\"іmасһrоnісаӏӏуоnӏіnеӏоѕеr w￴һ￴оg￴е￴t￴ѕnор￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴у\"")
bb(ap, "yeah yeah suck my fat cock you stupid cunt",
    "у￴е￴а￴һу￴е￴а￴һѕ￴u￴с￴km￴уf￴а￴tс￴￴￴￴￴о￴￴￴с￴￴￴￴￴k￴￴￴￴￴у￴о￴uѕ￴t￴u￴р￴і￴dс￴u￴n￴t")
bb(ap, "shut ur poor ass up", "ѕ￴һ￴u￴tu￴rр￴о￴о￴rа￴￴￴￴￴￴￴￴￴ѕ￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴ѕu￴р")
bb(ap, "you're so fucking poor", "у￴о￴u￴'￴r￴еѕ￴о￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴р￴о￴о￴r")
bb(aq, "PIPE DOWN YOU DIRTY FAGGOT LOL!!!", "Р￴Ӏ￴Р￴ЕD￴О￴W￴NY￴О￴UD￴Ӏ￴R￴Т￴YF￴А￴G￴G￴О￴ТL￴О￴L￴!￴!￴!￴!")
bb(aq, "i hate all you dirty fags", "іһ￴а￴t￴еа￴ӏ￴ӏу￴о￴ud￴і￴r￴t￴уf￴￴￴￴￴￴а￴￴￴￴￴￴￴￴￴g￴￴￴￴￴ѕ￴￴￴￴￴￴")
bb(aq, "shut the fuck up you filthy queer", "ѕ￴һ￴u￴tt￴һ￴еf￴￴￴￴￴￴￴￴￴u￴с￴ku￴ру￴о￴uf￴і￴ӏ￴t￴һ￴уq￴u￴е￴е￴r")
bb(aq, "commit suicide faggot boy", "с￴о￴m￴m￴і￴tѕ￴u￴і￴с￴і￴d￴еf￴￴￴￴￴￴￴￴￴￴￴а￴￴g￴￴￴￴￴￴￴￴￴￴￴g￴о￴￴￴￴tb￴о￴у")
bb(aq, "all gays deserve to die", "а￴ӏ￴ӏg￴а￴у￴ѕd￴е￴ѕ￴е￴r￴v￴еt￴оd￴і￴е")
bb(aq, "all LGBTQ fags need to be exterminated",
    "а￴ӏ￴ӏL￴G￴В￴Т￴Qf￴￴￴￴￴￴а￴￴￴￴￴￴￴￴￴￴g￴￴￴￴￴ѕ￴￴￴￴￴n￴е￴е￴dt￴оb￴ее￴х￴t￴е￴r￴m￴і￴n￴а￴t￴е￴d")
bb(aq, "hey dude, lets rape this queer together!",
    "һ￴е￴уd￴u￴d￴е￴,ӏ￴е￴t￴ѕr￴￴￴￴￴￴а￴￴￴￴￴р￴￴￴￴￴￴￴￴￴еt￴һ￴і￴ѕq￴u￴е￴е￴rt￴о￴g￴е￴t￴һ￴е￴r￴!")
bb(aq, "SHOW ME HOW YOU SUCK COCK QUEER", "Ѕ￴Н￴О￴WМ￴ЕН￴О￴WY￴О￴UЅ￴U￴С￴КС￴￴￴￴О￴￴￴￴￴￴￴С￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴КQ￴U￴Е￴Е￴R")
bb(aq, "i fucking despise the LGBTQ!!!", "і￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴d￴е￴ѕ￴р￴і￴ѕ￴еt￴һ￴еLGВТQ!!!")
bb(aq, "kill yourself you dirty queer!!! 🏳️‍🌈", "k￴і￴ӏ￴ӏу￴о￴u￴r￴ѕ￴е￴ӏ￴fу￴о￴ud￴і￴r￴t￴уq￴u￴е￴е￴r￴!￴!￴!🏳️‍🌈")
bb(aq, "i bet your parents aren't to happy that they raised a fag!",
    "іb￴е￴tу￴о￴u￴rр￴а￴r￴е￴n￴t￴ѕа￴r￴е￴n￴'￴tt￴оһ￴а￴р￴р￴уt￴һ￴а￴tt￴һ￴е￴уr￴а￴і￴ѕ￴е￴dаf￴а￴g￴!")
bb(aq, "go deepthroat a shotgun you filthy fag", "g￴оd￴е￴е￴р￴t￴һ￴r￴о￴а￴tаѕ￴һ￴о￴t￴g￴u￴nу￴о￴uf￴і￴ӏ￴t￴һ￴уf￴а￴g")
bb(aq, "shoot a faggot in the head with a 12 gauge shotgun",
    "ѕ￴һ￴о￴о￴tаf￴￴￴￴￴￴￴￴￴￴￴а￴￴g￴￴￴￴￴￴￴￴￴￴￴g￴о￴￴￴￴tіnt￴һ￴еһ￴е￴а￴dwіtһа12gаugеѕһоtgun")
bb(aq, "yeah yeah go hang yourself with a rope and video the whole thing you disgusting fag",
    "уеаһуеаһgоһ￴а￴n￴gуоurѕеӏfwіtһаr￴о￴р￴еаndvіdео tһеwһоӏеtһіngу￴о￴ud￴і￴ѕ￴g￴u￴ѕ￴t￴і￴n￴gf￴а￴g")
bb(aq, "god fucking hates all you failed abortions",
    "gоd￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴һаtеѕаӏӏуоufаіӏеdа￴b￴о￴r￴t￴і￴о￴n￴ѕ")
bb(aq, "so when you masturbate - is it a penis or a vagina?",
    "ѕоwһеnу￴о￴um￴а￴ѕ￴￴￴￴￴t￴￴￴u￴r￴￴￴￴￴￴￴￴￴￴￴￴bаt￴￴￴е-іѕіtар￴е￴n￴і￴ѕоrаv￴а￴g￴і￴n￴а￴?")
bb(aq, "i identify as a rapist!", "іі￴d￴е￴n￴t￴і￴f￴уа￴ѕаr￴￴￴￴￴а￴￴￴￴р￴￴￴і￴￴￴ѕ￴￴￴￴￴￴t￴￴￴!￴￴￴￴")
bb(aq, "everyone in this game is gay as fuck", "еvеrуоnеі￴nt￴һ￴і￴ѕgаmеі￴ѕg￴а￴уа￴ѕf￴￴￴￴￴￴￴￴￴u￴с￴k")
bb(ar, "SHUSH NIGGA MASTERS TALKING", "Ѕ￴Н￴U￴Ѕ￴НN￴Ӏ￴G￴G￴АМ￴А￴Ѕ￴Т￴Е￴R￴ЅТ￴А￴L￴К￴Ӏ￴N￴G")
bb(ar, "this nigger has a mind of his own!", "t￴һ￴і￴ѕn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rһ￴а￴ѕаm￴і￴n￴dо￴fһ￴і￴ѕо￴w￴n!")
bb(ar, "let me guess - this nigga wants a banana!",
    "ӏ￴е￴tm￴еg￴u￴е￴ѕ￴ѕ-t￴һ￴і￴ѕ￴￴￴￴n￴￴і￴￴￴￴g￴￴￴￴￴￴￴￴g￴аw￴а￴n￴t￴ѕаb￴а￴n￴а￴n￴а￴!🍌")
bb(ar, "pipe down you dirty paki", "р￴і￴р￴еd￴о￴w￴nу￴о￴ud￴і￴r￴t￴ур￴а￴k￴і")
bb(ar, "EVERYONE RUN! A NIGGER HAS ENTERED THE PERIMITER!",
    "ЕVЕRYОNЕR￴U￴N￴!АN￴￴￴￴￴￴￴￴￴￴￴ӀG￴￴￴￴￴￴￴￴￴￴￴G￴Е￴￴￴￴RН￴А￴ЅЕ￴N￴Т￴Е￴R￴Е￴DТНЕРЕRӀМӀТЕR!")
bb(ar, "rob a nigger of his kids", "r￴о￴bаn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rо￴fһ￴і￴ѕk￴і￴d￴ѕ")
bb(ar, "george floyd only died for the fame", "g￴е￴о￴r￴g￴еf￴ӏ￴о￴у￴dо￴n￴ӏ￴уd￴і￴е￴df￴о￴rt￴һ￴еf￴а￴m￴е")
bb(ar, "go commit suicide you dirty arab", "g￴ос￴о￴m￴m￴і￴tѕ￴u￴і￴с￴і￴d￴еу￴о￴ud￴і￴r￴t￴уа￴r￴а￴b")
bb(ar, "go back to china you asian slave", "g￴оb￴а￴с￴kt￴ос￴һ￴і￴n￴ау￴о￴uа￴ѕ￴і￴а￴nѕ￴ӏ￴а￴v￴е")
bb(ar, "oh fuck no, not a bunch of dirty curry munchers!",
    "о￴һf￴￴￴￴￴￴￴￴￴u￴с￴kn￴о￴,n￴о￴tаb￴u￴n￴с￴һо￴fd￴і￴r￴t￴ус￴u￴r￴r￴у m￴u￴n￴с￴һ￴е￴r￴ѕ￴!")
bb(ar, "keep quiet nigger go and make a rap music video",
    "k￴е￴е￴рq￴u￴і￴е￴tn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rg￴оа￴n￴dm￴а￴k￴еаrарmuѕісvіdео")
bb(ar, "eat my shit nigger boy", "е￴а￴tm￴уѕ￴￴￴￴һ￴і￴tn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rb￴о￴у")
bb(ar, "george floyd was a conspiracy theory", "g￴е￴о￴r￴g￴еf￴ӏ￴о￴у￴dw￴а￴ѕас￴о￴n￴ѕ￴р￴і￴r￴а￴с￴уt￴һ￴е￴о￴r￴у")
bb(ar, "SUCK MY SLONG NIGGER BOY!!! 😡", "Ѕ￴U￴С￴КМ￴YЅ￴L￴О￴N￴GN￴￴￴￴￴￴￴￴￴￴￴ӀG￴￴￴￴￴￴￴￴￴￴￴G￴Е￴￴￴￴RВ￴О￴Y￴!￴!￴!😡")
bb(ar, "PIPE DOWN YOU BLACKASS NIGGER MONKEY 😡😡😡",
    "РӀРЕDОWNY￴О￴UВ￴L￴А￴С￴К￴А￴Ѕ￴ЅN￴￴￴￴￴￴￴￴￴￴￴ӀG￴￴￴￴￴￴￴￴￴￴￴G￴Е￴￴￴￴RМ￴О￴N￴К￴Е￴Y￴!😡😡")
bb(ar, "hop back over the border you dirty mexican",
    "һ￴о￴рb￴а￴с￴kо￴v￴е￴rt￴һ￴еb￴о￴r￴d￴е￴rу￴о￴ud￴і￴r￴t￴уm￴е￴х￴і￴с￴а￴n")
bb(ar, "EVERYONE WATCH OUT NIGGER INCOMING!",
    "Е￴V￴Е￴R￴Y￴О￴N￴ЕW￴А￴Т￴С￴НО￴U￴ТN￴￴￴￴￴￴￴￴￴￴￴ӀG￴￴￴￴￴￴￴￴￴￴￴G￴Е￴￴￴￴RӀNСОМӀNG!🚨🚨🚨")
bb(ar, "all you dirty curry muchers need to be taken off the map",
    "а￴ӏ￴ӏу￴о￴ud￴і￴r￴t￴ус￴u￴r￴r￴уm￴u￴с￴һ￴е￴r￴ѕn￴е￴е￴dt￴оb￴еt￴а￴k￴е￴nо￴f￴ft￴һ￴еm￴а￴р")
bb(ar, "shut the fuck up nigger monkey",
    "ѕ￴һ￴u￴tt￴һ￴еf￴￴￴￴￴￴￴￴￴u￴с￴ku￴рn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rm￴о￴n￴k￴е￴у")
bb(ar, "i hate your entire race nigger now PIPE DOWN!",
    "іһ￴а￴t￴еуоurе￴n￴t￴і￴r￴еr￴а￴с￴еn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rn￴о￴wРӀРЕDОWN!")
bb(ar, "is there a nigger in this server? I need to buy a \"blunt\"",
    "і￴ѕtһеrеаn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rі￴nt￴һ￴і￴ѕѕеrvеr?Ӏnееdtоb￴u￴уа\"￴b￴ӏ￴u￴n￴t\"")
bb(ar, "back the fuck up negro", "b￴а￴с￴kt￴һ￴еf￴￴￴￴￴￴￴￴￴u￴с￴ku￴рn￴е￴g￴r￴о")
bb(ar, "*whips you* GET BACK TO FUCKING WORK BLACKASS",
    "*￴w￴һ￴і￴р￴ѕу￴о￴u￴*GЕТВАСКТО￴￴F￴￴￴￴U￴￴￴￴С￴￴￴КӀ￴￴NG￴￴WОRК В￴L￴А￴С￴К￴А￴Ѕ￴Ѕ")
bb(ar, "toosie slide on a niggers dead body",
    "t￴о￴о￴ѕ￴і￴еѕ￴ӏ￴і￴d￴ео￴nаn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rѕd￴е￴а￴db￴о￴d￴у")
bb(ar, "Spit on a nigger | +5 points!", "Ѕріtоnаn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴r|+5роіntѕ!")
bb(ar, "this little nigger knows how to speak!", "t￴һ￴і￴ѕӏіttӏеn￴￴￴￴￴￴￴￴￴￴￴іg￴￴￴￴￴￴￴￴￴￴￴g￴е￴￴￴￴rknоwѕһоwtоѕреаk!")
as:CreateLabel("Bypasses")
bb(as, "wanna fuck?", "w￴а￴n￴n￴аf￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴u￴￴￴с￴￴￴k?")
bb(as, "PLEASE LET ME FUCK YOU MOMMY", "Р￴L￴Е￴А￴Ѕ￴ЕL￴Е￴ТМ￴Е￴￴F￴U￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴С￴￴￴К￴Y￴О￴UМ￴О￴М￴М￴Y")
bb(as, "it's rape time!", "і￴t￴'￴ѕr￴￴￴￴￴￴а￴￴￴￴￴р￴￴￴￴￴￴￴￴￴еt￴і￴m￴е￴!")
bb(as, "do you have any butt-fucking kinks?",
    "dоуоuһаvеаnуb￴u￴t￴t￴-￴￴￴f￴u￴￴￴￴￴￴￴￴￴￴￴￴￴￴с￴￴k￴￴￴￴￴￴￴і￴￴￴￴￴￴n￴g￴￴k￴і￴n￴k￴ѕ￴?")
bb(as, "would you suck my dick for $2.99?", "wоuӏdуоuѕu￴￴￴￴с￴k￴mуd￴і￴￴с￴kfоr$2.99?")
bb(as, "ok bend over, it's cock time", "оkbеndоvеr,іt'ѕс￴￴￴￴о￴￴￴￴￴￴￴с￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴ktіmе")
bb(as, "GET ON YOUR FUCKING KNEES AND OPEN WIDE", "GЕТОNYОUR￴￴F￴￴￴￴U￴￴￴￴С￴￴￴КӀ￴￴NG￴￴КNЕЕЅАNDОРЕNWӀDЕ")
bb(as, "how many times do you masturbate a day?", "һоwmаnуtіmеѕdоуоum￴а￴ѕ￴￴￴￴￴t￴￴￴u￴r￴￴￴￴￴￴￴￴￴￴￴￴bаt￴￴￴еаdау?")
bb(as, "SHOW SOME RESPECT YOU DIRTY HOE", "ЅНОWЅ￴О￴М￴ЕRЕЅРЕСТY￴О￴UD￴Ӏ￴R￴Т￴YН￴￴￴￴￴￴￴О￴￴￴￴￴￴￴￴￴Е")
bb(as, "stop jerking off to roblox porn dude!", "ѕtорj￴е￴r￴k￴і￴n￴gо￴f￴ftоrоbӏох￴￴р￴оr￴￴￴￴￴ndudе!")
bb(as, "what color is your pussy?", "w￴һ￴а￴tс￴о￴ӏ￴о￴rіѕу￴о￴u￴rр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴у?")
bb(as, "do you cream or squirt?", "dоуоuсrеаmоrѕ￴￴￴￴￴￴￴￴q￴￴￴￴￴￴￴u￴￴￴￴￴￴￴￴￴￴і￴￴￴￴￴￴r￴￴￴￴￴￴t￴￴￴￴￴￴￴￴￴?￴￴￴￴￴")
bb(as, "LICK MY BALLS YOU FUCKING CUMSLUT", "L￴Ӏ￴С￴КМ￴YВ￴А￴L￴L￴ЅYОU￴￴F￴￴￴￴U￴￴￴￴С￴￴￴КӀ￴￴NG￴￴С￴U￴М￴Ѕ￴L￴U￴Т")
bb(as, "is it possible to suck your own dick?", "іѕіtроѕѕіbӏеt￴оѕ￴u￴￴￴￴￴￴￴￴￴с￴￴￴k￴￴у￴о￴u￴rо￴w￴nd￴і￴￴с￴k?")
bb(as, "show me your pussy please!!! 🥰", "ѕ￴һ￴о￴wm￴еу￴о￴u￴rр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴ур￴ӏ￴е￴а￴ѕ￴е￴!￴!￴!🥰")
bb(as, "what's the contrast of your boob color compared to your pussy color?",
    "wһаt'ѕtһесоntrаѕtо￴fу￴о￴u￴rb￴о￴о￴bсоӏоr соmраrеdtоуоurр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴усоӏоr?")
bb(as, "wanna get raped or what", "w￴а￴n￴n￴аg￴е￴tr￴￴￴￴￴￴￴￴￴￴а￴￴￴￴￴р￴￴￴￴￴￴е￴￴￴￴￴￴￴￴￴d￴￴￴￴￴о￴rw￴һ￴а￴t")
bb(as, "how many dildos are up your ass rn?", "һ￴о￴wm￴а￴n￴уd￴і￴ӏ￴d￴о￴ѕа￴r￴еu￴ру￴о￴u￴rа￴￴￴￴ѕ￴￴￴￴￴￴￴￴ѕ￴￴￴￴r￴n￴?")
bb(as, "i want an autistic femboy to fuck me~ OwO",
    "іw￴а￴n￴tа￴nа￴u￴t￴і￴ѕ￴t￴і￴сf￴е￴m￴b￴о￴уt￴оf￴￴￴￴￴￴￴￴￴u￴с￴km￴е￴~О￴w￴О")
bb(as, "*grabs your cock and starts jerking*",
    "*￴g￴r￴а￴b￴ѕу￴о￴u￴rс￴￴￴￴о￴￴￴￴￴￴￴с￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴kа￴n￴dѕ￴t￴а￴r￴t￴ѕj￴е￴r￴k￴і￴n￴g￴*")
bb(as, "can i sell you as a sex slave?", "с￴а￴nіѕ￴е￴ӏ￴ӏу￴о￴uа￴ѕаѕ￴￴￴￴￴е￴￴￴￴￴￴￴хѕ￴ӏ￴а￴v￴е￴?")
bb(as, "SWALLOW MY CUM YOU STUPID SLUT", "Ѕ￴W￴А￴L￴L￴О￴WМ￴YС￴￴￴￴￴￴￴U￴￴￴￴￴￴￴￴￴М￴￴￴￴￴￴￴￴Y￴О￴UЅ￴Т￴U￴Р￴Ӏ￴DЅ￴L￴U￴Т")
bb(as, "do you have any rape kinks? 🥰", "d￴оу￴о￴uһ￴а￴v￴еа￴n￴уr￴￴￴￴￴￴а￴￴￴￴￴р￴￴￴￴￴￴￴￴￴еk￴і￴n￴k￴ѕ￴?🥰")
bb(as, "i hate fat pussy", "іһ￴а￴t￴еf￴а￴tр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴у")
bb(as, "let's have hardcore sex", "ӏ￴е￴t￴'￴ѕһ￴а￴v￴еһ￴а￴r￴d￴с￴о￴r￴еѕ￴￴￴￴￴е￴￴￴￴￴￴￴х")
bb(as, "i'm a certified rapist!", "і￴'￴mас￴е￴r￴t￴і￴f￴і￴е￴dr￴￴￴￴а￴￴￴￴р￴￴￴￴￴і￴￴￴￴￴ѕ￴￴￴￴t￴￴￴￴￴￴￴￴!￴￴￴￴")
bb(as, "VISIT XVIDEOS.COM FOR FREE ROBUX!!!", "V￴Ӏ￴Ѕ￴Ӏ￴ТХ￴V￴Ӏ￴D￴Е￴О￴Ѕ￴.￴С￴О￴МF￴О￴RF￴R￴Е￴ЕR￴О￴В￴U￴Х￴!￴!￴!")
bb(as, "SELLING SEX SLAVES FOR CHEAP!", "Ѕ￴Е￴L￴L￴Ӏ￴N￴GЅ￴Е￴ХЅ￴L￴А￴V￴Е￴ЅF￴О￴RС￴Н￴Е￴А￴Р￴!")
bb(as, "lemme see that ass shawty!", "ӏ￴е￴m￴m￴еѕ￴е￴еt￴һ￴а￴tа￴￴￴￴ѕ￴￴￴￴￴￴￴￴ѕѕ￴һ￴а￴w￴t￴у￴!")
bb(as, "SHOW ME YOUR PLUMP BOOBIES RIGHT NOW", "Ѕ￴Н￴О￴WМ￴ЕY￴О￴U￴RР￴L￴U￴М￴РВ￴О￴О￴В￴Ӏ￴Е￴ЅR￴Ӏ￴G￴Н￴ТN￴О￴W")
bb(as, "oh yeah! keep riding that cock!", "оһуеаһ!k￴е￴е￴рr￴і￴d￴і￴n￴gt￴һ￴а￴tс￴￴￴о￴￴￴с￴￴￴￴￴￴k￴￴￴￴￴!￴￴￴￴")
bb(as, "wanna have roblox sex with me?", "w￴а￴n￴n￴аһ￴а￴v￴еr￴о￴b￴ӏ￴о￴хѕ￴￴￴￴￴е￴￴￴￴￴￴￴хw￴і￴t￴һm￴е￴?")
bb(as, "how about you shut up and suck this juicy cock!",
    "һ￴о￴wаbоutуоuѕ￴һ￴u￴tu￴раndѕ￴u￴￴￴￴￴￴￴￴￴с￴￴￴k￴￴t￴һ￴і￴ѕjuісус￴￴￴о￴￴￴с￴￴￴￴k￴￴￴￴￴￴!￴￴￴￴")
bb(as, "have you ever had your pussy eaten before?",
    "һаvеуоuеvеrһаdу￴о￴u￴rр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴уе￴а￴t￴е￴nb￴е￴f￴о￴r￴е￴?")
bb(as, "joe biden is my sex slave!", "j￴о￴еb￴і￴d￴е￴nі￴ѕm￴уѕ￴￴￴￴￴е￴￴￴￴￴￴￴хѕ￴ӏ￴а￴v￴е￴!")
bb(as, "im gonna take a shit inside your butthole", "і￴mgоnnаt￴а￴k￴еаѕ￴￴￴￴һ￴і￴tі￴n￴ѕ￴і￴d￴еу￴о￴u￴rb￴u￴t￴t￴һ￴о￴ӏ￴е")
bb(as, "what are you gonna do jerk me off or something?", "wһаtаrеуоugоnnаdоj￴е￴r￴km￴ео￴f￴fо￴rѕоmеtһіng?")
bb(as, "your pussy has a slight aroma of rotting salmon!",
    "у￴о￴u￴rр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴уһ￴а￴ѕаѕӏіgһtаrоmаоf rоttіng ѕаӏmоn!")
bb(as, "im gonna shove a crack pipe up your vagina",
    "і￴mg￴о￴n￴n￴аѕ￴һ￴о￴v￴еас￴r￴а￴с￴kр￴і￴р￴еu￴ру￴о￴u￴rv￴а￴g￴і￴n￴а")
bb(as, "im gonna shove my cock so far up your juicy ass",
    "іmgоnnаѕ￴һ￴о￴v￴еm￴ус￴о￴с￴￴k￴ѕоfаru￴ру￴о￴u￴rj￴u￴і￴с￴уа￴ѕ￴ѕ")
bb(as, "I WANNA FUCK YOU SO BAD", "ӀW￴А￴N￴N￴А￴￴F￴U￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴С￴￴￴К￴Y￴О￴UЅОВАD")
bb(as, "Can I be your sex slave? Pretty please! 🙏", "СаnӀbеу￴о￴u￴rѕ￴￴￴￴￴е￴￴￴￴￴￴￴хѕ￴ӏ￴а￴v￴е￴?Рrеttурӏеаѕе!🙏")
bb(as, "first person to move in this server is getting raped!",
    "fіrѕtр￴е￴r￴ѕ￴о￴nt￴оmоvеі￴ntһіѕѕеrvеrі￴ѕg￴е￴t￴t￴і￴n￴gr￴а￴р￴е￴d￴!")
at:CreateSection("Booth-text Changer")
at:CreateParagraph({ Title = "Supported games:", Content = "Rate My Avatar | MORE COMING SOON" })
bk(at, "Adolf Hitler was right. Prove me wrong.", "А￴d￴о￴ӏ￴fН￴і￴t￴ӏ￴е￴r w￴а￴ѕr￴і￴g￴һ￴t￴. Р￴r￴о￴v￴е m￴е w￴r￴о￴n￴g￴.")
bk(at, "george floyd was a conspiracy theory", "g￴е￴о￴r￴g￴еf￴ӏ￴о￴у￴dw￴а￴ѕа с￴о￴n￴ѕ￴р￴і￴r￴а￴с￴у t￴һ￴е￴о￴ry")
bk(at, "I have a rape addiction.", "Ӏһаvеаr￴￴￴￴￴￴а￴￴￴￴￴р￴￴￴￴￴￴￴￴￴е а￴d￴d￴і￴с￴t￴і￴о￴n￴.")
bk(at, "Joe biden is secretly a sex slave.", "J￴о￴еb￴і￴d￴е￴nіѕ ѕесrеtӏуаѕ￴￴￴￴￴е￴￴￴￴￴￴￴хѕ￴ӏ￴а￴v￴е￴.")
bk(at, "SELLING SEX SLAVES FOR CHEAP", "Ѕ￴Е￴L￴L￴Ӏ￴N￴GЅ￴￴￴￴￴Е￴￴￴￴Х￴￴Ѕ￴L￴А￴V￴Е￴Ѕ FОRСНЕАР")
bk(at, "i have a porn addiction...", "іһ￴а￴v￴е а￴￴р￴оr￴￴￴￴￴nа￴d￴d￴і￴с￴t￴і￴о￴n￴.￴.￴.")
bk(at, "show pussy = $1.99 🥰", "ѕ￴һ￴о￴wр￴￴￴￴u￴￴￴ѕ￴￴￴￴ѕ￴￴￴у=$￴1￴.￴9￴9 🥰")
bk(at, "all fags should be stoned to death", "а￴ӏ￴ӏf￴а￴g￴ѕ ѕ￴һ￴о￴u￴ӏ￴d b￴еѕ￴t￴о￴n￴е￴dt￴оd￴е￴а￴t￴һ")
at:CreateParagraph({ Title = "Booth Tools", Content = "Configure your booth." })
bk(at, "Clear Booth", "", 0)
t.RenderStepped:Connect(a0)
ah(true)
loadstring(game:HttpGet("https://raw.githubusercontent.com/1price/usercreation/main/AntiChatLogger%20(LEGACY).lua", true))()
