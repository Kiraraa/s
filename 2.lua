-- UI Library by AbstractPoo | v3rmillion.net
-- https://www.roblox.com/games/5450795073

local a = loadstring(game:HttpGet('https://raw.githubusercontent.com/Kiraraa/s/main/AbstractLIB.lua'))()
lib = a:Create("Beat the Scammers!")
lib:Divider("Press right shift to hide the GUI.")
lib:Dropdown(
    "Credits",
    "Those who made the stuff.",
    {"AbstractPoo | UI Library", "Kirara | Script"},
    function()
    end
)
lib:Button(
    "Shield",
    "Teleport to all shields.",
    function()
        for i, v in next, game.Workspace.Shields.Parts:GetChildren() do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
            wait()
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
