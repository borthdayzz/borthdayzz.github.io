local textlab = Instance.new("TextLabel")
        textlab.Size = UDim2.new(0, 200, 0, 28)
        textlab.BackgroundTransparency = 1
        textlab.TextColor3 = Color3.new(1, 1, 1)
        textlab.TextStrokeTransparency = 0
        textlab.TextStrokeColor3 = Color3.new(0.24, 0.24, 0.24)
        textlab.Font = Enum.Font.SourceSans
        textlab.TextSize = 28
        textlab.Text = "1 FPS"
        textlab.BackgroundColor3 = Color3.new(0, 0, 0)
        textlab.Position = UDim2.new(1, -254, 0, -10)
        textlab.TextXAlignment = Enum.TextXAlignment.Right
        textlab.BorderSizePixel = 0
        textlab.Parent = game.CoreGui.RobloxGui
        spawn(function()
            local RunService = game:GetService("RunService")
            local FpsLabel = textlab
            
            local TimeFunction = RunService:IsRunning() and time or os.clock
            
            local LastIteration, Start
            local FrameUpdateTable = {}
            
            local function loopupdate()
                LastIteration = TimeFunction()
                for Index = #FrameUpdateTable, 1, -1 do
                    FrameUpdateTable[Index + 1] = FrameUpdateTable[Index] >= LastIteration - 1 and FrameUpdateTable[Index] or nil
                end
            
                FrameUpdateTable[1] = LastIteration
                FpsLabel.Text = tostring(math.floor(TimeFunction() - Start >= 1 and #FrameUpdateTable or #FrameUpdateTable / (TimeFunction() - Start))) .. " FPS"
            end
            
            Start = TimeFunction()
            RunService.Heartbeat:Connect(loopupdate)
        end)
