
_G.Select_Team = ""
_G.Select_Taget_Door = ""
_G.SetWalkSpeed = 16
_G.Select_Place1 = ""



local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("Aroy Mak Hub | War Tycoon")

local serv = win:Server("Function", "")

local btns = serv:Channel("Main")

function CollectCash()
    for i,v in pairs(game:GetService("Workspace")["Tycoon"]["Tycoons"]:GetChildren()) do
        if v.Name == game.Players.LocalPlayer.Team.Name then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Essentials.Flag.Metal.CFrame
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Essentials.CashCollector.CFrame
        else
           print("Not Found")
        end
     end
end

function TeleportTagetSpawn()
    for i,v in pairs(game:GetService("Workspace")["Tycoon"]["Tycoons"][_G.Select_Team]["Essentials"]:GetChildren()) do
        if v.Name == "Spawn" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        end
    end
end

function TeleportTargetFlag()
    for i,v in pairs(game:GetService("Workspace")["Tycoon"]["Tycoons"][_G.Select_Team]["Essentials"]["Flag"]:GetChildren()) do
        if v.Name == "Metal" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
        end
    end
end

function DestroyDoor()
    for i,v in pairs(game:GetService("Workspace")["Tycoon"]["Tycoons"][_G.Select_Team]["PurchasedObjects"][_G.Select_Taget_Door]:GetChildren()) do
        if v.Name == "Laser" then
            v:Destroy()
            print("Destroyed - OwnerOnlyDoor")
        else
           print("Not Found - OwnerOnlyDoor ")
        end
     end
end


btns:Button(
    "Collect Cash",
    function()
        CollectCash()
        wait(0.5)
        CollectCash()
end)



btns:Button(
    "Teleport to 2nd Floor",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Tycoon.Tycoons.Bravo.PurchasedObjects["Lower Walls 2nd Floor"]["Lower Walls"].CFrame
end)

btns:Button(
    "Teleport to 3rd Floor",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Tycoon.Tycoons.Bravo.PurchasedObjects["Lower Walls 3rd Floor"]["Lower Walls"].CFrame
end)

btns:Seperator()

local drop =
    btns:Dropdown(
    "Select Taget Team",
    {"Alpha", "Bravo", "Charlie", "Delta", "Echo","Foxtrot","Golf","Hotel","Kilo","Lima","Tango","Victor","Omega","Zulu"},
    function(Team)
        _G.Select_Team = Team
    end
)

btns:Button(
    "Teleport to Taget Spawn",
    function()
        TeleportTagetSpawn()
end)

btns:Button(
    "Teleport to Taget Flag",
    function()
        TeleportTargetFlag()
end)

btns:Seperator()

local drop =
    btns:Dropdown(
    "Select Taget Door",
    {"OwnerOnlyDoor",
    "Owner Only Door Balcony",
    "Owner Only Door 3rd Floor",
     "Vehicle Bay Owner Only Gate",
      "AA Owner Only Door",
        "Vehicle Bay Owner Only Door2",
        "Helicopter Hanger Owner Only Door",
        "Ship Control Room Owner Only Door",
        "Vehicle Bay Owner Only Door",
        "Tank Building Owner Only Gate",
        "Plane Hanger Owner Only Door"
    },
    function(Team)
        _G.Select_Taget_Door = Team
    end
)

btns:Button(
    "Destroy Target Door",
    function()
        DestroyDoor()
end)

btns:Button(
    "Teleport to Capture Point 1",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Beams.CapturePoint1.CFrame
end)

btns:Button(
    "Teleport to Airdrop",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Beams["Airdrop_1712895130"].CFrame
end)


btns:Button(
    "Teleport Warehouse 1",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Beams.Warehouse1.CFrame
end)

btns:Button(
    "Teleport Warehouse 2",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Beams.Warehouse2.CFrame
end)



btns:Button(
    "Teleport Oil Rig1",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Beams["Oil Rig1"].CFrame
end)


btns:Button(
    "Teleport Oil Rig2",
    function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Beams["Oil Rig2"].CFrame
end)






local btns2 = serv:Channel("Player")

local sldr =
btns2:Slider(
    "Set WalkSpeed",
    0,
    1000,
    1,
    function(t)
        _G.SetWalkSpeed = t
    end
)

btns2:Slider(
    "Set JumpPower",
    0,
    1000,
    1,
    function(t)
        _G.SetJumpPower = t
    end
)



btns2:Toggle(
    "Set Player WalkSpeed",
    false,
    function(bool)
        _G.SetWalKSpeed = bool
        while wait() do
            if _G.SetWalKSpeed then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.SetWalkSpeed 
            end
        end
    end
)

btns2:Toggle(
    "Set Player JumpPower",
    false,
    function(bool)
        _G.SetWalKSpeed = bool
        while wait() do
            if _G.SetWalKSpeed then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = _G.SetJumpPower 
            end
        end
    end
)



