if not game:IsLoaded() then
	local Loading = Instance.new("Message",workspace)
	Loading.Text = 'Waiting For The Game To Load....'
	game.Loaded:Wait()
	Loading:Destroy()
end
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

local speed = 7
local Mouse = game.Players.LocalPlayer:GetMouse()

local Katana = "Katana"
local Nichirin Sword = "Nichirin Sword"
local Plr = game:GetService("Players").LocalPlayer
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
local hm = char:FindFirstChild("HumanoidRootPart")
local dist = (hm.Position).magnitude
local tweenspeed = speed
local Noclipping = nil
Clip = false

local QuestTargets = {}
for i,v in pairs(game.Workspace.NPC.Targets:GetChildren()) do
    if v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("TargetFinder") then
       table.insert(QuestTargets, v.Name)
    end
end

local QuestNPCs = {}
for i,v in pairs(game.Workspace.NPC.Quests:GetChildren()) do
    if v:FindFirstChild("Talk") or v:FindFirstChild("Interaction") then
       table.insert(QuestNPCs, v.Name)
    end
end

local QuestItems = {}
for i,v in pairs(game.Workspace.NPC.Targets:GetChildren()) do
    if v:FindFirstChild("ClickDetector") then
       table.insert(QuestItems, v.Name)
    end
end

local TeacherNPCs = {}
for i,v in pairs(game.Workspace.NPC.Teacher:GetChildren()) do
    if v:FindFirstChild("Talk") or v:FindFirstChild("ClickDetector") then
       table.insert(TeacherNPCs, v.Name)
    end
end

local SpawnedNPCs = {}
for i,v in pairs(game.Workspace.NPC.Spawnables:GetChildren()) do
    if v:FindFirstChild("Despawn") or v:FindFirstChild("ClickDetector") then
       table.insert(SpawnedNPCs, v.Name)
    end
end

local Mobs = {}
for i,v in pairs(game.ReplicatedStorage.All.NPCs:GetChildren()) do
       table.insert(Mobs, v.Name)
    end

local AreasAndTowns = {}
for i,v in pairs(game.Workspace.AreaPlaces:GetChildren()) do
       table.insert(AreasAndTowns, v.Name)
    end

local Finity = loadstring(game:HttpGet("http://finity.vip/scripts/finity_lib.lua"))()
   local FinityWindow = Finity.new(true)
FinityWindow.ChangeToggleKey(Enum.KeyCode.RightAlt)
local FarmingCategory = FinityWindow:Category("Farming")
local QuestsCategory = FinityWindow:Category("Quests")
local Quests2Category = FinityWindow:Category("Spoof Clicking")
local TeacherCategory = FinityWindow:Category("Teachers")
local DroppedCategory = FinityWindow:Category("TP 2 Spawnable")
local MobsCategory = FinityWindow:Category("Mobs")
local MiscCategory = FinityWindow:Category("Misc")
local UpdateLogCategory = FinityWindow:Category("Version")
local CreditsCategory = FinityWindow:Category("Credits")
local ReExecuteCategory = FinityWindow:Category("ReExecute")

local FarmingSettings = FarmingCategory:Sector("Farming")
local QuestsSettings = QuestsCategory:Sector("Quests")
local InstantQuestsSettings = Quests2Category:Sector("Spoof Clicking")
local TeacherSettings = TeacherCategory:Sector("Teachers")
local DroppedSettings = DroppedCategory:Sector("Spawned NPCs")
local MobsSettings = MobsCategory:Sector("Mobs")
local MiscSettings = MiscCategory:Sector("Misc")
local CreditsCreator = CreditsCategory:Sector("Finity Library Creator")
local CreditsMaker = CreditsCategory:Sector("Scripts Creator")
local CreditsMaker2 = CreditsCategory:Sector("Credits")
local CreditsMaker3 = CreditsCategory:Sector("Discord Server")
local VersionSettings = UpdateLogCategory:Sector("Version + Most Recent Feature(s)")
local ReExecuteSettings = ReExecuteCategory:Sector("ReExecute")

CreditsMaker:Cheat("Label", "Terebi @ v3rmillion.net")
CreditsMaker:Cheat("Label", "Terebi#0001 @ discord.gg")
CreditsCreator:Cheat("Label", "detourious @ v3rmillion.net")
CreditsCreator:Cheat("Label", "deto#7612 @ discord.gg")
CreditsMaker2:Cheat("Label", "Chim#2575 @ discord.gg - Auto Farm Mob Maker")
CreditsMaker3:Cheat("Label", "https://discord.gg/npFg3k4 - Shitty DSRPG 2 GUI Server")
VersionSettings:Cheat("Label", "v0.05")
VersionSettings:Cheat("Label", "Text Menus Changed To DropDowns")

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Fist Attack Spam Enabled", -- Name
	function(AttackSpaming) -- Callback function
		Spam = AttackSpaming
		while Spam do wait()
   game:GetService("ReplicatedStorage").All.Animations.CombatRemote.LIGHTATTACKS:FireServer(1,"AttackConfirmation")
   wait(0.35)
   game:GetService("ReplicatedStorage").All.Animations.CombatRemote.LIGHTATTACKS:FireServer(2,"AttackConfirmation")
   wait(0.35)
   game:GetService("ReplicatedStorage").All.Animations.CombatRemote.LIGHTATTACKS:FireServer(3,"AttackConfirmation")
   wait(0.35)
   end
end
)

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Katana Attack Spam Enabled", -- Name
	function(AttackSpaming2) -- Callback function
		Spam2 = AttackSpaming2
		while Spam2 do wait()
		    if Plr.Backpack:FindFirstChild(Katana) and Plr.Character:FindFirstChild(Katana) == nil then
            local tool = Plr.Backpack:FindFirstChild(Katana)
            Plr.Character.Humanoid:EquipTool(tool)
        end
   workspace.Live[game.Players.LocalPlayer.Name].Katana.Remotes.KatanaLight:FireServer(1, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name].Katana.Blade)
   wait(0.35)
   workspace.Live[game.Players.LocalPlayer.Name].Katana.Remotes.KatanaLight:FireServer(2, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name].Katana.Blade)
   wait(0.35)
   workspace.Live[game.Players.LocalPlayer.Name].Katana.Remotes.KatanaLight:FireServer(3, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name].Katana.Blade)
   wait(0.35)
   end
end
)

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Nichirin Attack Spam Enabled", -- Name
	function(Nichi) -- Callback function
		SpamNi = Nichi
		while SpamNi do wait()
		    if Plr.Backpack:FindFirstChild("Nichirin Sword") and Plr.Character:FindFirstChild("Nichirin Sword") == nil then
            local tool = Plr.Backpack:FindFirstChild("Nichirin Sword")
            Plr.Character.Humanoid:EquipTool(tool)
        end
   workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Remotes.KatanaLight:FireServer(1, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Blade)
   wait(0.35)
   workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Remotes.KatanaLight:FireServer(2, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Blade)
   wait(0.35)
   workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Remotes.KatanaLight:FireServer(3, "AttackConfirmation", workspace.Live[game.Players.LocalPlayer.Name]["Nichirin Sword"].Blade)
   wait(0.35)
   end
end
)

QuestsSettings:Cheat("Dropdown", "Quest Target NPC TP", function(Value)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((tweenspeed), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.NPC.Targets[Value]:FindFirstChild("HumanoidRootPart").Position)})
	    game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
		tween:Play()
		local function NoclipLoop()
        if Clip == false and Plr.Character ~= nil then
for _, child in pairs(Plr.Character:GetDescendants()) do
    if child:IsA("BasePart") and child.CanCollide == true then
	   				child.CanCollide = false
    end
end
        end
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(tweenspeed)
if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end, {
	options = QuestTargets
	})
	
QuestsSettings:Cheat("Dropdown", "Quest NPC TP", function(Value2)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((tweenspeed), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.NPC.Quests[Value2]:FindFirstChild("HumanoidRootPart").Position)})
	    game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
		tween:Play()
		local function NoclipLoop()
        if Clip == false and Plr.Character ~= nil then
for _, child in pairs(Plr.Character:GetDescendants()) do
    if child:IsA("BasePart") and child.CanCollide == true then
	   				child.CanCollide = false
    end
end
        end
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(tweenspeed)
if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end, {
	options = QuestNPCs
	})
	
QuestsSettings:Cheat("Dropdown", "Quest Item", function(Value3)
fireclickdetector(game.Workspace.NPC.Targets[Value3]:FindFirstChild("ClickDetector"))
end, {
	options = QuestItems
	})
	
QuestsSettings:Cheat("Dropdown", "Area TP", function(Value3)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((tweenspeed), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.AreaPlaces[Value3].Position)})
	    game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
		tween:Play()
		local function NoclipLoop()
        if Clip == false and Plr.Character ~= nil then
for _, child in pairs(Plr.Character:GetDescendants()) do
    if child:IsA("BasePart") and child.CanCollide == true then
	   				child.CanCollide = false
    end
end
        end
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(tweenspeed)
if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end, {
	options = AreasAndTowns
	})

TeacherSettings:Cheat("Dropdown", "Teacher NPC TP", function(Value4)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((tweenspeed), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.NPC.Teacher[Value4]:FindFirstChild("HumanoidRootPart").Position)})
	    game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
		tween:Play()
		local function NoclipLoop()
        if Clip == false and Plr.Character ~= nil then
for _, child in pairs(Plr.Character:GetDescendants()) do
    if child:IsA("BasePart") and child.CanCollide == true then
	   				child.CanCollide = false
    end
end
        end
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(tweenspeed)
if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end, {
	options = TeacherNPCs
	})

DroppedSettings:Cheat("Dropdown", "Spawned NPC TP", function(Value5)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((tweenspeed), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.NPC.Spawnables[Value5]:FindFirstChild("HumanoidRootPart").Position)})
	    game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
		tween:Play()
		local function NoclipLoop()
        if Clip == false and Plr.Character ~= nil then
for _, child in pairs(Plr.Character:GetDescendants()) do
    if child:IsA("BasePart") and child.CanCollide == true then
	   				child.CanCollide = false
    end
end
        end
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(tweenspeed)
if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end, {
	options = {
		"Muzan",
		"Mororo",
		"Nezuko"
	}
})
	
MobsSettings:Cheat("Dropdown", "Mob TP", function(Value6)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new((tweenspeed), Enum.EasingStyle.Linear)

	    tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(game.Workspace.Live[Value6]:FindFirstChild("HumanoidRootPart").Position)})
		game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
		tween:Play()
		local function NoclipLoop()
        if Clip == false and Plr.Character ~= nil then
for _, child in pairs(Plr.Character:GetDescendants()) do
    if child:IsA("BasePart") and child.CanCollide == true then
	   				child.CanCollide = false
    end
end
        end
end
Noclipping = game:GetService('RunService').Stepped:connect(NoclipLoop)
wait(tweenspeed)
if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end, {
	options = Mobs
	})
	
FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Exercise EXP Enabled", -- Name
	function(Exercise) -- Callback function
		Spam3 = Exercise
		while Spam3 do wait()
		game:GetService("ReplicatedStorage").All.Events.System:FireServer("ExerciseXP", true)
   end
end
)

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Blowing EXP Enabled", -- Name
	function(Breathing) -- Callback function
		Spam4 = Breathing
		while Spam4 do wait()
		game:GetService("ReplicatedStorage").All.Events.System:FireServer("BlowsXP", true)
   end
end
)

FarmingSettings:Cheat(
	"Checkbox", -- Type
	"Infinite Breathing Enabled", -- Name
	function(BreathingBar) -- Callback function
		Spam5 = BreathingBar
		while Spam5 do wait()
		game:GetService("ReplicatedStorage").All.Events.System:FireServer("BreathingRegen")
   end
end
)

FarmingSettings:Cheat("Button", "Print Breathing/Exercise Lvl", function()
warn(game.ReplicatedStorage.Values[game.Players.LocalPlayer.Name].BreathingLvl.Value)
warn(game.ReplicatedStorage.Values[game.Players.LocalPlayer.Name].ExerciseLvl.Value)
end)

InstantQuestsSettings:Cheat("Label", "Spoof Click Any Of The Following 5 Items")

InstantQuestsSettings:Cheat("Dropdown", "Quest NPC", function(Value7)
fireclickdetector(game.Workspace.NPC.Quests[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = QuestNPCs
	})
	
InstantQuestsSettings:Cheat("Dropdown", "Quest Target", function(Value7)
fireclickdetector(game.Workspace.NPC.Targets[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = QuestTargets
	})
	
InstantQuestsSettings:Cheat("Dropdown", "Quest Item", function(Value7)
fireclickdetector(game.Workspace.NPC.Targets[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = QuestItems
	})
	
InstantQuestsSettings:Cheat("Dropdown", "Teacher", function(Value7)
fireclickdetector(game.Workspace.NPC.Teacher[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = TeacherNPCs
	})
	
InstantQuestsSettings:Cheat("Dropdown", "Spawned NPC", function(Value7)
fireclickdetector(game.Workspace.NPC.Spawnables[Value7]:FindFirstChild("ClickDetector"))
end, {
	options = {
		"Muzan",
		"Mororo",
		"Nezuko"
	}
})
	
MiscSettings:Cheat(
	"Checkbox", -- Type
	"Inf Block Bar Enabled", -- Name
	function(InfBlock) -- Callback function
		Spam6 = InfBlock
		while Spam6 do wait()
		game.Workspace.Live[game.Players.LocalPlayer.Name].BlockBar.Value = 100
   end
end
)

MiscSettings:Cheat(
	"Checkbox", -- Type
	"God Mode Enabled", -- Name
	function(GodMode) -- Callback function
		Spam7 = GodMode
		while Spam7 do wait()
		for _,v in pairs(game.Workspace.Live[game.Players.LocalPlayer.Name]:GetDescendants()) do
		if v.Name == "Defense" then
		game.Workspace.Live[game.Players.LocalPlayer.Name].Detection.Disabled = true
        game.Workspace.Live[game.Players.LocalPlayer.Name].Buffs.Defense:Destroy()
		end
		end
		end
		end
)

MiscSettings:Cheat(
	"Checkbox", -- Type
	"No Attack CD Enabled", -- Name
	function(NoCD) -- Callback function
		Spam8 = NoCD
		while Spam8 do wait()
		for i,v in pairs(game.Workspace.Live[game.Players.LocalPlayer.Name]:GetChildren()) do
if v.Name == "Combo" and v.Value == 4 then
    v.Value = 1
end
end
   end
end
)

MiscSettings:Cheat(
	"Checkbox", -- Type
	"No Starve Enabled", -- Name
	function(Starve) -- Callback function
		Spam10 = Starve
		while Spam10 do wait()
		for _,v in pairs(game.Players.LocalPlayer.PlayerGui.HUDGui:GetChildren()) do
		if v.Name == "HungerScript" then
        game.Players.LocalPlayer.PlayerGui.HUDGui.HungerScript:Destroy()
		end
		end
		end
		end
)

MiscSettings:Cheat(
	"Checkbox", -- Type
	"Infinite 2x EXP Enabled", -- Name
	function(InfEXP) -- Callback function
		Spam11 = InfEXP
		while Spam11 do wait()
		for _,v in pairs(game.Players.LocalPlayer.PlayerGui.HUDGui:GetChildren()) do
		if v.Name == "LocalScript" then
        game.Players.LocalPlayer.PlayerGui.HUDGui.LocalScript.Disabled = true
		end
		end
		end
		end
)

MiscSettings:Cheat("Button", "Purchase Apple $4", function()
fireclickdetector(game.Workspace.NPC["Demons cannot buy this!"]["Apple $4"]:FindFirstChild("ClickDetector"))
end)

MiscSettings:Cheat("Button", "Purchase Meat $28", function()
fireclickdetector(game.Workspace["Meat $28"]:FindFirstChild("ClickDetector"))
end)

ReExecuteSettings:Cheat("Button", "ReExecute The GUI?", function()
for _,v in pairs(game.CoreGui:GetDescendants()) do
if v.Name == "FinityUI" then
game.CoreGui.FinityUI:Destroy()
wait(1.35)
loadstring(game:HttpGet("https://raw.githubusercontent.com/HDTerebi/DSRPG2/master/Shitty%20GUI.lua"))()
end
end
end)

MiscSettings:Cheat("Dropdown", "Gender Wanted:", function(Option)
game.ReplicatedStorage.All.Events.System:FireServer("GenderDecide", Option)
end, {
	options = {
		"Male",
		"Female"
	}
})

MiscSettings:Cheat("Textbox", "Run Speed:", function(Value8)
for _,v in pairs(game.Workspace.Live[game.Players.LocalPlayer.Name]:GetDescendants()) do
		if v.Name == "Speed" then
		game.Workspace.Live[game.Players.LocalPlayer.Name].Buffs.Speed.Value = Value8
		end
		end
end, {
	placeholder = "10"
	})
	
loadstring(game:HttpGet("https://raw.githubusercontent.com/chimnguu/ngu/master/dsrpg2.lua"))()

game.StarterGui:SetCore("SendNotification", {
Title = "DSRPG 2 Gui";
Text = "Made By Terebi#0001",
Icon = "rbxassetid://5472203252";
Duration = 6;
})

game.Lighting.FogEnd = 1000000
for i,v in pairs(game.Lighting:GetDescendants()) do
	v:Destroy()
	end
