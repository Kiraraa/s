-- https://www.roblox.com/games/5450795073

local a = {}
local b = game:GetService("TweenService")
local c = function(d)
    return TweenInfo.new(d or 0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
end
local e = game:GetService("Players").LocalPlayer:GetMouse()
local f = game:GetService("UserInputService")
local g = game:GetService("RunService")
togglefalse = nil
toggletrue = nil
a.topbar = Color3.fromRGB(11, 11, 11)
a.buttoncontainer = Color3.fromRGB(33, 33, 33)
a.mainframe = Color3.fromRGB(22, 22, 22)
a.searchbar = Color3.fromRGB(38, 38, 38)
a.buttoncontainerhovered = Color3.fromRGB(44, 44, 44)
a.toggletrue = toggletrue or Color3.fromRGB(80, 225, 120)
a.togglefalse = togglefalse or Color3.fromRGB(200, 70, 70)
a.scrollbar = Color3.fromRGB(77, 77, 77)
a.dropdowncontainer = Color3.fromRGB(77, 77, 77)
a.divider = Color3.fromRGB(33, 33, 33)
a.descriptiontext = Color3.fromRGB(170, 170, 170)
a.dropdownbuttonhovered = Color3.fromRGB(88, 88, 88)
function a:addRound(h)
    local i = Instance.new("UICorner", h)
    i.CornerRadius = UDim.new(0, 4)
end
function a:Create(j, k)
    j = j or "UILibrary"
    k = k or UDim2.new(0, 400, 0, 450)
    local l = Instance.new("ScreenGui")
    l.Name = "UILIB"
    l.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    l.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local m = Instance.new("Frame")
    m.Name = "MainFrame"
    m.Parent = l
    m.AnchorPoint = Vector2.new(0.5, 0.5)
    m.BackgroundColor3 = a.mainframe
    m.Position = UDim2.new(0.5, 0, 0.5, 0)
    m.Size = k
    local n = Instance.new("ImageLabel")
    n.Name = "Shadow"
    n.AnchorPoint = Vector2.new(0.5, 0.5)
    n.BackgroundTransparency = 1
    n.Position = UDim2.new(0.5, 0, 0.5, 0)
    n.Size = UDim2.new(1, 12, 1, 12)
    n.ImageTransparency = 0.5
    n.Image = "rbxassetid://1316045217"
    n.ImageColor3 = Color3.fromRGB(22, 22, 22)
    n.ScaleType = Enum.ScaleType.Slice
    n.SliceCenter = Rect.new(10, 10, 118, 118)
    n.Parent = m
    f.InputBegan:connect(
        function(o)
            if o.KeyCode == Enum.KeyCode.RightShift then
                m.Visible = not m.Visible
            end
        end
    )
    local p, q =
        pcall(
        function()
            return m.MouseEnter
        end
    )
    if p then
        m.Active = true
        q:connect(
            function()
                local o =
                    m.InputBegan:connect(
                    function(r)
                        if r.UserInputType == Enum.UserInputType.MouseButton1 then
                            local s = Vector2.new(e.X - m.AbsolutePosition.X, e.Y - m.AbsolutePosition.Y)
                            while g.RenderStepped:wait() and f:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                m:TweenPosition(
                                    UDim2.new(
                                        0,
                                        e.X - s.X + m.Size.X.Offset * m.AnchorPoint.X,
                                        0,
                                        e.Y - s.Y + m.Size.Y.Offset * m.AnchorPoint.Y
                                    ),
                                    "Out",
                                    "Quad",
                                    0.05,
                                    true
                                )
                            end
                        end
                    end
                )
                local t
                t =
                    m.MouseLeave:connect(
                    function()
                        o:disconnect()
                        t:disconnect()
                    end
                )
            end
        )
    end
    a:addRound(m)
    local u = Instance.new("Frame")
    u.Name = "Topbar"
    u.Parent = m
    u.BackgroundColor3 = a.topbar
    u.BorderSizePixel = 0
    u.Size = UDim2.new(1, 0, 0, 25)
    a:addRound(u)
    local v = Instance.new("ImageButton")
    v.Parent = u
    v.AnchorPoint = Vector2.new(1, 0.5)
    v.Position = UDim2.new(1, 0, 0.5, 0)
    v.Image = "http://www.roblox.com/asset/?id=5840446794"
    v.BackgroundTransparency = 1
    v.Size = UDim2.new(0, 25, 0, 25)
    v.ImageColor3 = Color3.fromRGB(255, 255, 255)
    v.ZIndex = 2
    v.MouseEnter:connect(
        function()
            v.Size = UDim2.new(0, 27, 0, 27)
            v.Position = UDim2.new(1, 1, 0.5, 0)
        end
    )
    v.MouseLeave:connect(
        function()
            v.Size = UDim2.new(0, 25, 0, 25)
            v.Position = UDim2.new(1, 0, 0.5, 0)
        end
    )
    v.MouseButton1Click:connect(
        function()
            l:Destroy()
        end
    )
    local w = Instance.new("TextLabel")
    w.Parent = u
    w.BackgroundTransparency = 1
    w.Size = UDim2.new(1, 0, 1, 0)
    w.Font = Enum.Font.SourceSansSemibold
    w.TextColor3 = Color3.new(1, 1, 1)
    w.TextSize = 20
    w.Text = j
    local x = Instance.new("Frame")
    x.Name = "Searchframe"
    x.Parent = m
    x.BackgroundTransparency = 1
    x.Position = UDim2.new(0, 0, 0, 25)
    x.Size = UDim2.new(1, 0, 0, 20)
    local y = Instance.new("TextBox")
    y.Name = "Search"
    y.Parent = x
    y.BackgroundColor3 = a.searchbar
    y.BorderSizePixel = 0
    y.Size = UDim2.new(1, 0, 1, 0)
    y.Font = Enum.Font.SourceSansSemibold
    y.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
    y.PlaceholderText = "Search"
    y.Text = ""
    y.TextColor3 = Color3.new(0, 0, 0)
    y.TextSize = 16
    y.TextColor3 = Color3.fromRGB(200, 200, 200)
    local z = Instance.new("ScrollingFrame")
    z.Name = "Container"
    z.Parent = m
    z.BackgroundColor3 = Color3.new(1, 1, 1)
    z.BackgroundTransparency = 1
    z.Position = UDim2.new(0, 0, 0, 45)
    z.Size = UDim2.new(1, 0, 1, -45)
    z.CanvasSize = UDim2.new(1, 0, 1, 0)
    z.ScrollBarThickness = 2
    z.ScrollingDirection = Enum.ScrollingDirection.Y
    z.ScrollBarImageColor3 = a.scrollbar
    z.BorderSizePixel = 0
    z.TopImage = "rbxassetid://967852042"
    z.MidImage = "rbxassetid://967852042"
    z.BottomImage = "rbxassetid://967852042"
    local A = Instance.new("UIListLayout")
    A.Parent = z
    A.HorizontalAlignment = Enum.HorizontalAlignment.Center
    A.SortOrder = Enum.SortOrder.LayoutOrder
    A.Padding = UDim.new(0, 10)
    local function B()
        z.CanvasSize = UDim2.new(0, 0, 0, A.AbsoluteContentSize.Y + 20)
    end
    local C = Instance.new("UIPadding")
    C.Parent = z
    C.PaddingTop = UDim.new(0, 10)
    y.Changed:connect(
        function(D)
            B()
            local D = y.Text:lower()
            if D ~= "" then
                for E, F in next, z:GetChildren() do
                    if F:IsA("TextButton") then
                        if string.find(F.Description.Text:lower(), D) or string.find(F.ButtonName.Text:lower(), D) then
                            F.Visible = true
                        else
                            F.Visible = false
                        end
                    end
                end
            else
                for E, F in next, z:GetChildren() do
                    if F:IsA("TextButton") then
                        F.Visible = true
                    end
                end
            end
        end
    )
    local G = {}
    function G:Divider(j)
        j = j or "Divider"
        local H = Instance.new("TextLabel")
        H.Size = UDim2.new(1, 0, 0, 20)
        H.BorderSizePixel = 0
        H.Parent = z
        H.BackgroundColor3 = a.divider
        H.Font = Enum.Font.SourceSansSemibold
        H.Text = j
        H.TextColor3 = Color3.new(1, 1, 1)
        H.TextSize = 16
    end
    function G:Button(j, I, J)
        j = j or "Button"
        I = I or "Button's description"
        J = J or function()
            end
        local K = Instance.new("TextButton")
        K.Name = "Button"
        K.Parent = z
        K.BackgroundColor3 = a.buttoncontainer
        K.BorderSizePixel = 0
        K.Size = UDim2.new(1, -20, 0, 50)
        K.Text = ""
        K.AutoButtonColor = false
        a:addRound(K)
        local L = Instance.new("TextLabel")
        L.Name = "ButtonName"
        L.Parent = K
        L.BackgroundColor3 = Color3.new(1, 1, 1)
        L.BackgroundTransparency = 1
        L.Position = UDim2.new(0, 10, 0, 0)
        L.Size = UDim2.new(0.5, 0, 0.5, 0)
        L.Font = Enum.Font.SourceSansSemibold
        L.Text = j
        L.TextColor3 = Color3.new(1, 1, 1)
        L.TextSize = 16
        L.TextXAlignment = Enum.TextXAlignment.Left
        local M = Instance.new("TextLabel")
        M.Name = "Description"
        M.Parent = K
        M.AnchorPoint = Vector2.new(0, 1)
        M.BackgroundColor3 = Color3.new(1, 1, 1)
        M.BackgroundTransparency = 1
        M.Position = UDim2.new(0, 10, 1, 0)
        M.Size = UDim2.new(0.5, 0, 0.5, 0)
        M.Font = Enum.Font.SourceSansSemibold
        M.Text = I
        M.TextColor3 = a.descriptiontext
        M.TextSize = 15
        M.TextXAlignment = Enum.TextXAlignment.Left
        M.TextYAlignment = Enum.TextYAlignment.Top
        local N = Instance.new("Frame")
        N.Name = "Button"
        N.Parent = K
        N.AnchorPoint = Vector2.new(1, 0)
        N.BackgroundColor3 = Color3.fromRGB(50, 70, 200)
        N.Position = UDim2.new(1, -5, 0, 5)
        N.Size = UDim2.new(0, 40, 0, 40)
        N.BackgroundTransparency = 1
        local O = Instance.new("ImageLabel")
        O.Parent = N
        O.BackgroundTransparency = 1
        O.Size = UDim2.new(1, 0, 1, 0)
        O.Image = "http://www.roblox.com/asset/?id=5837528348"
        K.MouseButton1Click:connect(
            function()
                spawn(
                    function()
                        pcall(J)
                    end
                )
            end
        )
        local P = b:Create(K, c(0.2), {BackgroundColor3 = a.buttoncontainerhovered})
        local Q = b:Create(K, c(0.2), {BackgroundColor3 = a.buttoncontainer})
        K.MouseEnter:connect(
            function()
                P:Play()
            end
        )
        K.MouseLeave:connect(
            function()
                Q:Play()
            end
        )
        B()
    end
    function G:Toggle(j, I, R, J)
        j = j or "Toggle"
        I = I or "Toggle's description"
        local R = R or false
        J = J or function()
            end
        local S = Instance.new("TextButton")
        S.Name = "Toggle"
        S.Parent = z
        S.BackgroundColor3 = a.buttoncontainer
        S.BorderSizePixel = 0
        S.Size = UDim2.new(1, -20, 0, 50)
        S.AutoButtonColor = false
        S.Text = ""
        a:addRound(S)
        local T = Instance.new("TextLabel")
        T.Name = "ButtonName"
        T.Parent = S
        T.BackgroundColor3 = Color3.new(1, 1, 1)
        T.BackgroundTransparency = 1
        T.Position = UDim2.new(0, 10, 0, 0)
        T.Size = UDim2.new(0.5, 0, 0.5, 0)
        T.Font = Enum.Font.SourceSansSemibold
        T.Text = j
        T.TextColor3 = Color3.new(1, 1, 1)
        T.TextSize = 16
        T.TextXAlignment = Enum.TextXAlignment.Left
        local U = Instance.new("TextLabel")
        U.Name = "Description"
        U.Parent = S
        U.AnchorPoint = Vector2.new(0, 1)
        U.BackgroundColor3 = Color3.new(1, 1, 1)
        U.BackgroundTransparency = 1
        U.Position = UDim2.new(0, 10, 1, 0)
        U.Size = UDim2.new(0.5, 0, 0.5, 0)
        U.Font = Enum.Font.SourceSansSemibold
        U.Text = I
        U.TextColor3 = a.descriptiontext
        U.TextSize = 15
        U.TextXAlignment = Enum.TextXAlignment.Left
        U.TextYAlignment = Enum.TextYAlignment.Top
        local V = Instance.new("Frame")
        V.Name = "Colour"
        V.Parent = S
        V.AnchorPoint = Vector2.new(1, 0)
        V.BackgroundColor3 = R and a.toggletrue or a.togglefalse
        V.Position = UDim2.new(1, -5, 0, 5)
        V.Size = UDim2.new(0, 40, 0, 20)
        a:addRound(V)
        local W = Instance.new("Frame")
        W.Parent = V
        W.AnchorPoint = Vector2.new(0, 0.5)
        W.BackgroundColor3 = Color3.new(1, 1, 1)
        W.Position = R and UDim2.new(1, -20, 0.5, 0) or UDim2.new(0, 0, 0.5, 0)
        W.Size = UDim2.new(0.5, 0, 1, 0)
        W.ZIndex = 2
        a:addRound(W)
        local X = b:Create(W, c(0.2), {Position = UDim2.new(0, 0, 0.5, 0)})
        local Y = b:Create(V, c(0.2), {BackgroundColor3 = a.togglefalse})
        local Z = b:Create(W, c(0.2), {Position = UDim2.new(1, -20, 0.5, 0)})
        local _ = b:Create(V, c(0.2), {BackgroundColor3 = a.toggletrue})
        local P = b:Create(S, c(0.2), {BackgroundColor3 = a.buttoncontainerhovered})
        local Q = b:Create(S, c(0.2), {BackgroundColor3 = a.buttoncontainer})
        S.MouseButton1Click:connect(
            function()
                R = not R
                spawn(
                    function()
                        pcall(J, R)
                    end
                )
                if R then
                    Z:Play()
                    _:Play()
                else
                    X:Play()
                    Y:Play()
                end
            end
        )
        S.MouseEnter:connect(
            function()
                P:Play()
            end
        )
        S.MouseLeave:connect(
            function()
                Q:Play()
            end
        )
        B()
    end
    function G:Dropdown(j, I, a0, J)
        j = j or "Dropdown"
        I = I or ""
        a0 = a0 or {"#1", "#2", "#3"}
        J = J or function()
            end
        local R = false
        local a1 = Instance.new("TextButton")
        a1.Name = "Dropdown"
        a1.Parent = z
        a1.BackgroundColor3 = a.buttoncontainer
        a1.BorderSizePixel = 0
        a1.Size = UDim2.new(1, -20, 0, 50)
        a1.AutoButtonColor = false
        a1.Text = ""
        a:addRound(a1)
        local T = Instance.new("TextLabel")
        T.Name = "ButtonName"
        T.Parent = a1
        T.BackgroundTransparency = 1
        T.Position = UDim2.new(0, 10, 0, 0)
        T.Size = UDim2.new(0.5, 0, 0, 25)
        T.Font = Enum.Font.SourceSansSemibold
        T.Text = j
        T.TextColor3 = Color3.fromRGB(255, 255, 255)
        T.TextSize = 16
        T.TextXAlignment = Enum.TextXAlignment.Left
        local U = Instance.new("TextLabel")
        U.Name = "Description"
        U.Parent = a1
        U.AnchorPoint = Vector2.new(0, 1)
        U.BackgroundTransparency = 1
        U.Position = UDim2.new(0, 10, 0, 50)
        U.Size = UDim2.new(0.5, 0, 0, 25)
        U.Font = Enum.Font.SourceSansSemibold
        U.Text = I
        U.TextColor3 = a.descriptiontext
        U.TextSize = 15
        U.TextXAlignment = Enum.TextXAlignment.Left
        U.TextYAlignment = Enum.TextYAlignment.Top
        local N = Instance.new("Frame")
        N.Name = "Button"
        N.Parent = a1
        N.AnchorPoint = Vector2.new(1, 0)
        N.BackgroundTransparency = 1
        N.Position = UDim2.new(1, -5, 0, 5)
        N.Size = UDim2.new(0, 40, 0, 40)
        local a2 = Instance.new("ImageLabel")
        a2.Parent = N
        a2.BackgroundTransparency = 1
        a2.Size = UDim2.new(1, 0, 1, 0)
        a2.Rotation = 90
        a2.Image = "http://www.roblox.com/asset/?id=5844057859"
        local a3 = Instance.new("Frame")
        a3.Name = "Options Container"
        a3.Parent = a1
        a3.AnchorPoint = Vector2.new(0.5, 0)
        a3.BackgroundColor3 = a.dropdowncontainer
        a3.Position = UDim2.new(0.5, 0, 0, 55)
        a3.Size = UDim2.new(1, -10, 1, -60)
        a3.ClipsDescendants = true
        a3.Visible = false
        a:addRound(a3)
        local a4 = Instance.new("UIListLayout")
        a4.Parent = a3
        a4.SortOrder = Enum.SortOrder.LayoutOrder
        for a5, a6 in next, a0 do
            if a5 ~= 1 then
                local H = Instance.new("Frame")
                H.Name = "Divider"
                H.Parent = a3
                H.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
                H.BorderSizePixel = 0
                H.Size = UDim2.new(1, 0, 0, 2)
            end
            local a7 = Instance.new("TextButton")
            a7.Name = "Option"
            a7.Parent = a3
            a7.BackgroundColor3 = a.dropdowncontainer
            a7.BackgroundTransparency = 1
            a7.Size = UDim2.new(1, 0, 0, 25)
            a7.Font = Enum.Font.SourceSans
            a7.Text = ""
            a7.TextColor3 = Color3.new(0, 0, 0)
            a7.TextSize = 14
            local w = Instance.new("TextLabel")
            w.Parent = a7
            w.AnchorPoint = Vector2.new(0.5, 0.5)
            w.BackgroundColor3 = Color3.new(1, 1, 1)
            w.BackgroundTransparency = 1
            w.Position = UDim2.new(0.5, 0, 0.5, 0)
            w.Size = UDim2.new(1, -12, 1, 0)
            w.Font = Enum.Font.SourceSansSemibold
            w.TextColor3 = a.descriptiontext
            w.TextSize = 15
            w.Text = tostring(a6)
            w.TextXAlignment = Enum.TextXAlignment.Left
            a7.MouseButton1Click:connect(
                function()
                    spawn(
                        function()
                            J(a6)
                        end
                    )
                end
            )
        end
        local P = b:Create(a1, c(0.2), {BackgroundColor3 = a.buttoncontainerhovered})
        local Q = b:Create(a1, c(0.2), {BackgroundColor3 = a.buttoncontainer})
        a1.MouseEnter:connect(
            function()
                P:Play()
            end
        )
        a1.MouseLeave:connect(
            function()
                Q:Play()
            end
        )
        a1.MouseButton1Click:connect(
            function()
                spawn(
                    function()
                        R = not R
                        b:Create(a2, c(0.2), {Rotation = R and 0 or 90}):Play()
                        local a8 =
                            b:Create(
                            a1,
                            c(0.2),
                            {Size = UDim2.new(1, -20, 0, R and a4.AbsoluteContentSize.Y + 60 or 50)}
                        )
                        a8:Play()
                        spawn(
                            function()
                                while a8.PlaybackState ~= Enum.PlaybackState.Completed and g.RenderStepped:wait() do
                                    if a1.Size.Y.Offset < 60 and not R then
                                        a3.Visible = false
                                    end
                                    if a1.Size.Y.Offset > 60 and R then
                                        a3.Visible = true
                                    end
                                    B()
                                end
                                a3.Visible = R
                            end
                        )
                    end
                )
            end
        )
        B()
    end
    return G
end
lib = a:Create("Beat the Scammers!")
lib:Dropdown(
    "Credits",
    "Those who made the stuff.",
    {"AbstractPoo | UI Library", "Kirara | Script"},
    function(b)
    end
)
lib:Button(
    "Shield",
    "Teleport to all shields.",
    function()
        local c = 25
        while c > 0 do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game:GetService("Workspace").Shields.Parts.Shield.CFrame
            wait(0.1)
            c = c - 1
        end
    end
)
lib:Button(
    "Prize",
    "Get the event's prize.",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.789635, 28.1973057, -187.751663)
        wait(0.5)
        fireclickdetector(game:GetService("Workspace").Clues.pickledPeanuts.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-107.599159, 30.7973003, 176.884445)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues.MadameMalarky.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-197.788223, 66.6524811, -16.2840099)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues.neuronsAreCool.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-198.619141, 28.1973057, -52.8212013)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues["xX_superCool_Xx"].ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-202.223541, 35.997303, 88.2729111)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues.turnipDisaster.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-202.223541, 35.997303, 88.2729111)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues.signEmotes.Sign.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-65.3453979, 30.423193, -124.532097)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues.signEmotes.Sign.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-142.271713, 42.1707535, 178.609619)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues.signAccountDanger.Sign.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80.5470047, 41.5833244, -10.6836195)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues.signClosedAccount.Sign.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-89.8441086, 28.1971722, 100.755058)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues.signPrizes.Sign.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80.7617493, 27.7973061, 135.16478)
        wait(2)
        fireclickdetector(game:GetService("Workspace").Clues.signFreeGems.Sign.ClickDetector)
        wait(1)
        game:GetService("ReplicatedStorage").RobloxDialogue.Remotes.DialogueResponseChosen:FireServer(1)
    end
)
