
function Notification(title, text, duration)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = title ;
Text = text ;
Duration = duration ;})
end

--plugin area
--loadstring(game:HttpGet("https://paste.ee/r/EYXKb",true))()
--
Notification("LTAK System", "LTAK 2.0.0 has successfully loaded! Press F9 to see a list of commands!", 5)

local Player = game.Players.LocalPlayer
spam = false
print("LTAK Rewrite 1.0.6")
print("open source")
warn("actually not")
warn("plugin support broken")
print([[in case the game has GUI detection, here are the commands:
/e kill --You die
/e invis --Invisibility
/e fly --It's how it sounds
/e tgod (GUI) --A god GUI with on and off switches
/e spam  --It's actually chat troll, i mislabeled it
/e mergelimbs --Merges everything you have to your torso
/e noclip --Walk through walls
/e dab --I hope you die when you use THIS
/e clicktp --Gives you a tool to teleport where you click
/e btools --It's how it sounds
/e enableinv --Enables your inventory, useful for games that disable it or have a custom one
/e drophats --Removes your hats
/e thirdperson --Allows you to see third person, useful for games that force first person
/e respawn --Respawns you
/e creeper --Makes you look like MiNeCrAfT
/e refresh --Similar to respawn, just some stuff done differently
/e shutdown --Lags the game to shutdown
/e help (Help GUI) --A list of commands, not updated though
/e dex (GUI, Instance Caching required) --Just your standard explorer
/e naked --Makes you look like a porn star
/e thickbody --ThIcC lEgS gIrL
/e sit --You sit like you do 24/7 in front of your PC
/e barrel --A shitty barrel roll animation
/e blockhats --Your hats turn into blocks
/e cripple --Your legs vamoose into the ground
/e faceless --You lose your face, it wasn't pretty anyway
/e shake --Epilepsy?
/e esp (Toggle is J, Instance Caching required) --Wallhacks aka. ESP
/e animas --Animation GUI
/e exec --In-Game executor GUI 
/e oof --Plays a ton of sounds
/e hypertotal --An FE gui made by illremember
/e freeze --Broken
/e flood  --Floods the map with water
/e danims --Disables animations from the commands
]])
--print("Loaded plugins:",plist)
Player.Chatted:connect(function(Command)
	function Kill()
local Target = Command:sub(7)
		 game.Players.LocalPlayer.Character.Humanoid.Name = 1 
		 local l = game.Players.LocalPlayer.Character["1"]:Clone() 
		 l.Parent = game.Players.LocalPlayer.Character l.Name = "Humanoid" 
		 wait(0.1) 
		 game.Players.LocalPlayer.Character["1"]:Destroy() 
		 game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character 
		 wait(0.1) 
		 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame * CFrame.new(-1.5,0,0) wait(0.1) 
		 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame * CFrame.new(-1.5,0,0) wait(0.2) 
		 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10000,0,0)
	end
	
	
	function SendChat(String)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = '[LTAK]: ' .. String
    })
    end
	
	function Dex()
loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
end
	function Refresh()
	game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
wait()
Location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
local prt = Instance.new("Model", workspace);
Instance.new("Part", prt).Name="Torso";
Instance.new("Part", prt).Name="Head";
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt
wait(6)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Location
end
	
	function Creeper()
	    game.Players.LocalPlayer.Character.Head.Mesh:Remove()
    game.Players.LocalPlayer.Character.Shirt:Remove()
    game.Players.LocalPlayer.Character.Pants:Remove()
    game.Players.LocalPlayer.Character.Humanoid:RemoveAccessories()
    game.Players.LocalPlayer.Character["Left Arm"]:Remove()
    game.Players.LocalPlayer.Character["Right Arm"]:Remove()
end



    function UnFirst()
	game.Players.LocalPlayer.CameraMaxZoomDistance = 600
    end
	
	function Blockhats()
	for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if (v:IsA("Accessory")) then
v.Handle.Mesh:remove()
end
end
end
	function Fly()
		repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "l" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end
	
	function God()
	loadstring(game:HttpGet("https://pastebin.com/raw/Gb6WWaWL",true))()
	end
	
	function Lmerge()
	for i,v in pairs(game.Players:GetChildren()) do
a = Instance.new("Weld", v.Character.Torso)
a.Part0 = game.Players.LocalPlayer.Character.Torso
a.Part1 = game.Players.LocalPlayer.Character.Head
a = Instance.new("Weld", v.Character.Torso)
a.Part0 = game.Players.LocalPlayer.Character.Head
a.Part1 = game.Players.LocalPlayer.Character["Left Leg"]
a = Instance.new("Weld", v.Character.Torso)
a.Part0 = game.Players.LocalPlayer.Character.Torso
a.Part1 = game.Players.LocalPlayer.Character["Right Leg"]
a = Instance.new("Weld", v.Character.Torso)
a.Part0 = game.Players.LocalPlayer.Character.Torso
a.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
a = Instance.new("Weld", v.Character.Torso)
a.Part0 = game.Players.LocalPlayer.Character.Torso
a.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
end
end

    function NoClip()
	game:getService("RunService"):BindToRenderStep("",0,function()
if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
if game:getService("UserInputService"):IsKeyDown(Enum.KeyCode.K) then
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
end)
Notification("LTAK System", "Hold K to NoClip", 5)
end
	function Spam()
		local Action = game.Players:GetPlayers()
  for i = 1,#Action do
Action[i].Chatted:connect(function(Message)
 if spam == true then
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("".."["..Action[i].Name.."]".." "..Message, "All")
end
  end)
end
	end

	
function Dab()
	AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end

function Respawn()
local LocalPlayer = game:GetService("Players").LocalPlayer
LocalPlayer.Character:ClearAllChildren()
local char = Instance.new("Model", workspace)
char.Name = "character"
Instance.new("Part", char).Name = "Torso";
Instance.new("Part", char).Name = "Head";
Instance.new("Humanoid", char).Name = "Humanoid";
LocalPlayer.Character = char
end



    function ClickTP()
	mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end

    function BTools()
local LocalPlayer = game:GetService("Players").LocalPlayer
local mouse = LocalPlayer:GetMouse()
local movetool = Instance.new("Tool", LocalPlayer.Backpack)
local deletetool = Instance.new("Tool", LocalPlayer.Backpack)
local undotool = Instance.new("Tool", LocalPlayer.Backpack)
local identifytool = Instance.new("Tool", LocalPlayer.Backpack)
local movedetect = false
local movingpart = nil
local movetransparency = 0
if editedparts == nil then
    editedparts = {}
    parentfix = {}
    positionfix = {}
end
deletetool.Name = "Delete"
undotool.Name = "Undo"
identifytool.Name = "Identify"
movetool.Name = "Move"
undotool.CanBeDropped = false
deletetool.CanBeDropped = false
identifytool.CanBeDropped = false
movetool.CanBeDropped = false
undotool.RequiresHandle = false
deletetool.RequiresHandle = false
identifytool.RequiresHandle = false
movetool.RequiresHandle = false
local function createnotification(title, text)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = 1;
    })
end
deletetool.Activated:Connect(function()
    createnotification("Delete Tool", "You have deleted "..mouse.Target.Name)
    table.insert(editedparts, mouse.Target)
    table.insert(parentfix, mouse.Target.Parent)
    table.insert(positionfix, mouse.Target.CFrame)
    spawn(function()
        local deletedpart = mouse.Target
        repeat
            deletedpart.Anchored = true
            deletedpart.CFrame = CFrame.new(1000000000, 1000000000, 1000000000)
            wait()
        until deletedpart.CFrame ~= CFrame.new(1000000000, 1000000000, 1000000000)
    end)
end)
undotool.Activated:Connect(function()
    createnotification("Undo Tool", "You have undone "..editedparts[#editedparts].Name)
    editedparts[#editedparts].Parent = parentfix[#parentfix]
    editedparts[#editedparts].CFrame = positionfix[#positionfix]
    table.remove(positionfix, #positionfix)
    table.remove(editedparts, #editedparts)
    table.remove(parentfix, #parentfix)
end)
identifytool.Activated:Connect(function()
    createnotification("Identify Tool", "Instance: "..mouse.Target.ClassName.."\nName: "..mouse.Target.Name)
end)
movetool.Activated:Connect(function()
    createnotification("Move Tool", "You are moving: "..mouse.Target.Name)
    movingpart = mouse.Target
    movedetect = true
    movingpart.CanCollide = false
    movetransparency = movingpart.Transparency
    movingpart.Transparency = 0.5
    mouse.TargetFilter = movingpart
    table.insert(editedparts, movingpart)
    table.insert(parentfix, movingpart.Parent)
    table.insert(positionfix, movingpart.CFrame)
    movingpart.Transparency = movingpart.Transparency / 2
    repeat
        mouse.Move:Wait()
        movingpart.CFrame = CFrame.new(mouse.Hit.p)
    until movedetect == false
end)
movetool.Deactivated:Connect(function()
    createnotification("Move Tool", "You have stopped moving: "..mouse.Target.Name)
    movingpart.CanCollide = true
    movedetect = false
    mouse.TargetFilter = nil
    movingpart.Transparency = movetransparenc
end)
end
    
	function EnableInv()
	game.StarterGui:SetCoreGuiEnabled(2, true)
    end
	
	function Help()
-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local TextLabel_9 = Instance.new("TextLabel")
local TextLabel_10 = Instance.new("TextLabel")
local TextLabel_11 = Instance.new("TextLabel")
local TextLabel_12 = Instance.new("TextLabel")
local TextLabel_13 = Instance.new("TextLabel")
local TextLabel_14 = Instance.new("TextLabel")
local TextLabel_15 = Instance.new("TextLabel")
local TextLabel_16 = Instance.new("TextLabel")
local TextLabel_17 = Instance.new("TextLabel")
local TextLabel_18 = Instance.new("TextLabel")
local TextLabel_19 = Instance.new("TextLabel")
local TextLabel_20 = Instance.new("TextLabel")
local TextLabel_21 = Instance.new("TextLabel")
local TextLabel_22 = Instance.new("TextLabel")
local TextLabel_23 = Instance.new("TextLabel")
local TextLabel_24 = Instance.new("TextLabel")
local TextLabel_25 = Instance.new("TextLabel")
local TextLabel_26 = Instance.new("TextLabel")
local TextLabel_27 = Instance.new("TextLabel")
local TextLabel_28 = Instance.new("TextLabel")
local TextLabel_29 = Instance.new("TextLabel")
local TextLabel_30 = Instance.new("TextLabel")
local TextLabel_31 = Instance.new("TextLabel")
local TextLabel_32 = Instance.new("TextLabel")
local TextLabel_33 = Instance.new("TextLabel")
local TextLabel_34 = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.69999998807907
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.741176426, 0, 0.527520716, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 345, 0, 384)

TextButton.Parent = Frame
TextButton.Active = false
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BackgroundTransparency = 0.69999998807907
TextButton.Position = UDim2.new(0.838951051, 0, -0.00555042364, 0)
TextButton.Size = UDim2.new(0, 55, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.new(1, 0, 0)
TextButton.TextSize = 40
TextButton.TextWrapped = true

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BackgroundTransparency = 0.69999998807907
ScrollingFrame.Position = UDim2.new(-0.00293234107, 0, 0.12403103, 0)
ScrollingFrame.Size = UDim2.new(0, 347, 0, 338)
ScrollingFrame.CanvasPosition = Vector2.new(0, 676)
ScrollingFrame.CanvasSize = UDim2.new(1, 0, 3, 0)
ScrollingFrame.ScrollBarThickness = 13

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 61, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "1. Fly"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_2.Parent = ScrollingFrame
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0, 0, 0.0720687956, 0)
TextLabel_2.Size = UDim2.new(0, 61, 0, 28)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "4. Dab"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_3.Parent = ScrollingFrame
TextLabel_3.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0.0145265553, 0, 0.0480458699, 0)
TextLabel_3.Size = UDim2.new(0, 72, 0, 28)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "3.  Mergelimbs"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_4.Parent = ScrollingFrame
TextLabel_4.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(0, 0, 0.024022935, 0)
TextLabel_4.Size = UDim2.new(0, 61, 0, 28)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "2. Tgod"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_5.Parent = ScrollingFrame
TextLabel_5.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.Position = UDim2.new(0.00581400283, 0, 0.0960917249, 0)
TextLabel_5.Size = UDim2.new(0, 61, 0, 28)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "5. Noclip"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_6.Parent = ScrollingFrame
TextLabel_6.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.Position = UDim2.new(0.0144927539, 0, 0.120114662, 0)
TextLabel_6.Size = UDim2.new(0, 61, 0, 28)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "6. ClickTP"
TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_7.Parent = ScrollingFrame
TextLabel_7.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.Position = UDim2.new(0.0145772593, 0, 0.144137621, 0)
TextLabel_7.Size = UDim2.new(0, 61, 0, 28)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "7. Drophats"
TextLabel_7.TextColor3 = Color3.new(1, 1, 1)
TextLabel_7.TextSize = 14
TextLabel_7.TextWrapped = true
TextLabel_7.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_8.Parent = ScrollingFrame
TextLabel_8.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_8.BackgroundTransparency = 1
TextLabel_8.Position = UDim2.new(-0.00581400283, 0, 0.167938828, 0)
TextLabel_8.Size = UDim2.new(0, 72, 0, 28)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "8. Enableinv"
TextLabel_8.TextColor3 = Color3.new(1, 1, 1)
TextLabel_8.TextSize = 14
TextLabel_8.TextWrapped = true
TextLabel_8.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_9.Parent = ScrollingFrame
TextLabel_9.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_9.BackgroundTransparency = 1
TextLabel_9.Position = UDim2.new(0.0145772593, 0, 0.191759527, 0)
TextLabel_9.Size = UDim2.new(0, 61, 0, 28)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "9.  Spam"
TextLabel_9.TextColor3 = Color3.new(1, 1, 1)
TextLabel_9.TextSize = 14
TextLabel_9.TextWrapped = true
TextLabel_9.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_10.Parent = ScrollingFrame
TextLabel_10.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_10.BackgroundTransparency = 1
TextLabel_10.Position = UDim2.new(0.011712512, 0, 0.215782404, 0)
TextLabel_10.Size = UDim2.new(0, 61, 0, 28)
TextLabel_10.Font = Enum.Font.SourceSans
TextLabel_10.Text = "10. Invis"
TextLabel_10.TextColor3 = Color3.new(1, 1, 1)
TextLabel_10.TextSize = 14
TextLabel_10.TextWrapped = true
TextLabel_10.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_11.Parent = ScrollingFrame
TextLabel_11.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_11.BackgroundTransparency = 1
TextLabel_11.Position = UDim2.new(0.0145772565, 0, 0.239381462, 0)
TextLabel_11.Size = UDim2.new(0, 61, 0, 28)
TextLabel_11.Font = Enum.Font.SourceSans
TextLabel_11.Text = "11. TP"
TextLabel_11.TextColor3 = Color3.new(1, 1, 1)
TextLabel_11.TextSize = 14
TextLabel_11.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_12.Parent = ScrollingFrame
TextLabel_12.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_12.BackgroundTransparency = 1
TextLabel_12.Position = UDim2.new(0.0233405083, 0, 0.263498098, 0)
TextLabel_12.Size = UDim2.new(0, 61, 0, 28)
TextLabel_12.Font = Enum.Font.SourceSans
TextLabel_12.Text = "12. Respawn"
TextLabel_12.TextColor3 = Color3.new(1, 1, 1)
TextLabel_12.TextSize = 14
TextLabel_12.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_13.Parent = ScrollingFrame
TextLabel_13.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_13.BackgroundTransparency = 1
TextLabel_13.Position = UDim2.new(0.017576823, 0, 0.286746711, 0)
TextLabel_13.Size = UDim2.new(0, 61, 0, 28)
TextLabel_13.Font = Enum.Font.SourceSans
TextLabel_13.Text = "13. Thirdperson"
TextLabel_13.TextColor3 = Color3.new(1, 1, 1)
TextLabel_13.TextSize = 14
TextLabel_13.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_14.Parent = ScrollingFrame
TextLabel_14.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_14.BackgroundTransparency = 1
TextLabel_14.Position = UDim2.new(0.0290874932, 0, 0.332816601, 0)
TextLabel_14.Size = UDim2.new(0, 61, 0, 28)
TextLabel_14.Font = Enum.Font.SourceSans
TextLabel_14.Text = "15. Creeper"
TextLabel_14.TextColor3 = Color3.new(1, 1, 1)
TextLabel_14.TextSize = 14
TextLabel_14.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_15.Parent = ScrollingFrame
TextLabel_15.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_15.BackgroundTransparency = 1
TextLabel_15.Position = UDim2.new(0.0435802452, 0, 0.31043607, 0)
TextLabel_15.Size = UDim2.new(0, 61, 0, 28)
TextLabel_15.Font = Enum.Font.SourceSans
TextLabel_15.Text = "14. Refresh"
TextLabel_15.TextColor3 = Color3.new(1, 1, 1)
TextLabel_15.TextSize = 14
TextLabel_15.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_16.Parent = ScrollingFrame
TextLabel_16.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_16.BackgroundTransparency = 1
TextLabel_16.Position = UDim2.new(0.0175099969, 0, 0.356933236, 0)
TextLabel_16.Size = UDim2.new(0, 61, 0, 28)
TextLabel_16.Font = Enum.Font.SourceSans
TextLabel_16.Text = "16. Shutdown"
TextLabel_16.TextColor3 = Color3.new(1, 1, 1)
TextLabel_16.TextSize = 14
TextLabel_16.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_17.Parent = ScrollingFrame
TextLabel_17.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_17.BackgroundTransparency = 1
TextLabel_17.Position = UDim2.new(0.664120674, 0, 0.356933236, 0)
TextLabel_17.Size = UDim2.new(0, 61, 0, 28)
TextLabel_17.Font = Enum.Font.SourceSans
TextLabel_17.Text = "Can crash the game!"
TextLabel_17.TextColor3 = Color3.new(1, 1, 1)
TextLabel_17.TextSize = 14

TextLabel_18.Parent = ScrollingFrame
TextLabel_18.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_18.BackgroundTransparency = 1
TextLabel_18.Position = UDim2.new(-0.0029148683, 0, 0.380511135, 0)
TextLabel_18.Size = UDim2.new(0, 72, 0, 28)
TextLabel_18.Font = Enum.Font.SourceSans
TextLabel_18.Text = "17. Dex"
TextLabel_18.TextColor3 = Color3.new(1, 1, 1)
TextLabel_18.TextSize = 14
TextLabel_18.TextWrapped = true
TextLabel_18.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_19.Parent = ScrollingFrame
TextLabel_19.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_19.BackgroundTransparency = 1
TextLabel_19.Position = UDim2.new(-1.63186342e-05, 0, 0.403948635, 0)
TextLabel_19.Size = UDim2.new(0, 72, 0, 28)
TextLabel_19.Font = Enum.Font.SourceSans
TextLabel_19.Text = "18. Kill"
TextLabel_19.TextColor3 = Color3.new(1, 1, 1)
TextLabel_19.TextSize = 14
TextLabel_19.TextWrapped = true
TextLabel_19.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_20.Parent = ScrollingFrame
TextLabel_20.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_20.BackgroundTransparency = 1
TextLabel_20.Position = UDim2.new(-0.00291486923, 0, 0.428254187, 0)
TextLabel_20.Size = UDim2.new(0, 72, 0, 28)
TextLabel_20.Font = Enum.Font.SourceSans
TextLabel_20.Text = "19. Btools"
TextLabel_20.TextColor3 = Color3.new(1, 1, 1)
TextLabel_20.TextSize = 14
TextLabel_20.TextWrapped = true
TextLabel_20.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_21.Parent = ScrollingFrame
TextLabel_21.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_21.BackgroundTransparency = 1
TextLabel_21.Position = UDim2.new(0.00867933407, 0, 0.451691747, 0)
TextLabel_21.Size = UDim2.new(0, 72, 0, 28)
TextLabel_21.Font = Enum.Font.SourceSans
TextLabel_21.Text = "20. Naked"
TextLabel_21.TextColor3 = Color3.new(1, 1, 1)
TextLabel_21.TextSize = 14
TextLabel_21.TextWrapped = true
TextLabel_21.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_22.Parent = ScrollingFrame
TextLabel_22.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_22.BackgroundTransparency = 1
TextLabel_22.Position = UDim2.new(0.0144764092, 0, 0.473435313, 0)
TextLabel_22.Size = UDim2.new(0, 72, 0, 24)
TextLabel_22.Font = Enum.Font.SourceSans
TextLabel_22.Text = "21. Thickbody"
TextLabel_22.TextColor3 = Color3.new(1, 1, 1)
TextLabel_22.TextSize = 14
TextLabel_22.TextWrapped = true
TextLabel_22.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_23.Parent = ScrollingFrame
TextLabel_23.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_23.BackgroundTransparency = 1
TextLabel_23.Position = UDim2.new(0.00291564525, 0, 0.494226426, 0)
TextLabel_23.Size = UDim2.new(0, 72, 0, 28)
TextLabel_23.Font = Enum.Font.SourceSans
TextLabel_23.Text = "22. Sit"
TextLabel_23.TextColor3 = Color3.new(1, 1, 1)
TextLabel_23.TextSize = 14
TextLabel_23.TextWrapped = true
TextLabel_23.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_24.Parent = ScrollingFrame
TextLabel_24.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_24.BackgroundTransparency = 1
TextLabel_24.Position = UDim2.new(0.0145098474, 0, 0.515927792, 0)
TextLabel_24.Size = UDim2.new(0, 72, 0, 28)
TextLabel_24.Font = Enum.Font.SourceSans
TextLabel_24.Text = "23. Barrel"
TextLabel_24.TextColor3 = Color3.new(1, 1, 1)
TextLabel_24.TextSize = 14
TextLabel_24.TextWrapped = true
TextLabel_24.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_25.Parent = ScrollingFrame
TextLabel_25.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_25.BackgroundTransparency = 1
TextLabel_25.Position = UDim2.new(0.023172088, 0, 0.538063169, 0)
TextLabel_25.Size = UDim2.new(0, 72, 0, 28)
TextLabel_25.Font = Enum.Font.SourceSans
TextLabel_25.Text = "24. Blockhats"
TextLabel_25.TextColor3 = Color3.new(1, 1, 1)
TextLabel_25.TextSize = 14
TextLabel_25.TextWrapped = true
TextLabel_25.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_26.Parent = ScrollingFrame
TextLabel_26.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_26.BackgroundTransparency = 1
TextLabel_26.Position = UDim2.new(0.0144764362, 0, 0.56193471, 0)
TextLabel_26.Size = UDim2.new(0, 72, 0, 28)
TextLabel_26.Font = Enum.Font.SourceSans
TextLabel_26.Text = "25. Cripple"
TextLabel_26.TextColor3 = Color3.new(1, 1, 1)
TextLabel_26.TextSize = 14
TextLabel_26.TextWrapped = true
TextLabel_26.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_27.Parent = ScrollingFrame
TextLabel_27.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_27.BackgroundTransparency = 1
TextLabel_27.Position = UDim2.new(0.0145098474, 0, 0.58580631, 0)
TextLabel_27.Size = UDim2.new(0, 72, 0, 28)
TextLabel_27.Font = Enum.Font.SourceSans
TextLabel_27.Text = "26. Faceless"
TextLabel_27.TextColor3 = Color3.new(1, 1, 1)
TextLabel_27.TextSize = 14
TextLabel_27.TextWrapped = true
TextLabel_27.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_28.Parent = ScrollingFrame
TextLabel_28.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_28.BackgroundTransparency = 1
TextLabel_28.Position = UDim2.new(0.023172088, 0, 0.609677792, 0)
TextLabel_28.Size = UDim2.new(0, 72, 0, 28)
TextLabel_28.Font = Enum.Font.SourceSans
TextLabel_28.Text = "27. Shake"
TextLabel_28.TextColor3 = Color3.new(1, 1, 1)
TextLabel_28.TextSize = 14
TextLabel_28.TextWrapped = true
TextLabel_28.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_29.Parent = ScrollingFrame
TextLabel_29.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_29.BackgroundTransparency = 1
TextLabel_29.Position = UDim2.new(0.0144764353, 0, 0.633983374, 0)
TextLabel_29.Size = UDim2.new(0, 72, 0, 28)
TextLabel_29.Font = Enum.Font.SourceSans
TextLabel_29.Text = "28. ESP"
TextLabel_29.TextColor3 = Color3.new(1, 1, 1)
TextLabel_29.TextSize = 14
TextLabel_29.TextWrapped = true
TextLabel_29.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_30.Parent = ScrollingFrame
TextLabel_30.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_30.BackgroundTransparency = 1
TextLabel_30.Position = UDim2.new(0.00578078348, 0, 0.658288956, 0)
TextLabel_30.Size = UDim2.new(0, 72, 0, 28)
TextLabel_30.Font = Enum.Font.SourceSans
TextLabel_30.Text = "29. Animas"
TextLabel_30.TextColor3 = Color3.new(1, 1, 1)
TextLabel_30.TextSize = 14
TextLabel_30.TextWrapped = true
TextLabel_30.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_31.Parent = ScrollingFrame
TextLabel_31.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_31.BackgroundTransparency = 1
TextLabel_31.Position = UDim2.new(0.0144764353, 0, 0.633983374, 0)
TextLabel_31.Size = UDim2.new(0, 72, 0, 28)
TextLabel_31.Font = Enum.Font.SourceSans
TextLabel_31.Text = "28. ESP"
TextLabel_31.TextColor3 = Color3.new(1, 1, 1)
TextLabel_31.TextSize = 14
TextLabel_31.TextWrapped = true
TextLabel_31.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_32.Parent = ScrollingFrame
TextLabel_32.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_32.BackgroundTransparency = 1
TextLabel_32.Position = UDim2.new(0.0144764353, 0, 0.682594538, 0)
TextLabel_32.Size = UDim2.new(0, 72, 0, 28)
TextLabel_32.Font = Enum.Font.SourceSans
TextLabel_32.Text = "30. Exec"
TextLabel_32.TextColor3 = Color3.new(1, 1, 1)
TextLabel_32.TextSize = 14
TextLabel_32.TextWrapped = true
TextLabel_32.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_33.Parent = Frame
TextLabel_33.Active = true
TextLabel_33.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_33.BackgroundTransparency = 0.69999998807907
TextLabel_33.Position = UDim2.new(0.00572085148, 0, -0.00294645573, 0)
TextLabel_33.Size = UDim2.new(0, 292, 0, 49)
TextLabel_33.Font = Enum.Font.Arcade
TextLabel_33.Text = "LTAK"
TextLabel_33.TextColor3 = Color3.new(1, 1, 1)
TextLabel_33.TextSize = 30
TextLabel_33.TextWrapped = true

TextLabel_34.Parent = Frame
TextLabel_34.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_34.BackgroundTransparency = 1
TextLabel_34.Position = UDim2.new(0.0118977865, 0, 0.936668217, 0)
TextLabel_34.Size = UDim2.new(0, 320, 0, 24)
TextLabel_34.Font = Enum.Font.Arcade
TextLabel_34.Text = "Prefix is /e"
TextLabel_34.TextColor3 = Color3.new(1, 1, 1)
TextLabel_34.TextScaled = true
TextLabel_34.TextSize = 14
TextLabel_34.TextWrapped = true
-- Scripts:
function SCRIPT_KEGO88_FAKESCRIPT() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton
	script.Parent.Parent.TextButton.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.Frame.Visible=false end)

end
coroutine.resume(coroutine.create(SCRIPT_KEGO88_FAKESCRIPT))
end
	function Drophats()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if (v:IsA("Accessory")) then
v.Parent = workspace
end
end
end
	function Invisible()
    local player = game.Players.LocalPlayer
position     = player.Character.HumanoidRootPart.Position
wait(0.1)
player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
wait(0.1)
humanoidrootpart = player.Character.HumanoidRootPart:clone()
wait(0.1)
player.Character.HumanoidRootPart:Destroy()
humanoidrootpart.Parent = player.Character
player.Character:MoveTo(position)
wait()
game.Players.LocalPlayer.Character.Torso.Transparency = 1
game.Players.LocalPlayer.Character.Head.Transparency  = 1
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
game.Players.LocalPlayer.Character.Humanoid:RemoveAccessories()
game.Players.LocalPlayer.Character.Head.face:Remove()
end

function Shutdown()
local lag_strength = 100

local LocalPlayer = game:GetService("Players").LocalPlayer
while game:GetService("RunService").RenderStepped:Wait() do
    for i = 1, lag_strength do
        local anim = Instance.new("Animation")
        anim.AnimationId = "CYCLICALLY IS THE BEST\n"..math.random()
        LocalPlayer.Character.Humanoid:LoadAnimation(anim):Play()
        anim:Destroy()
    end
end
end

function Naked() 
	game.Players.LocalPlayer.Character.Shirt:Remove()
game.Players.LocalPlayer.Character.Pants:Remove()
end

function Thicc()
game.Players.LocalPlayer.Character.CharacterMesh:Remove()
game.Players.LocalPlayer.Character.CharacterMesh:Remove()
game.Players.LocalPlayer.Character.CharacterMesh:Remove()
game.Players.LocalPlayer.Character.CharacterMesh:Remove()
game.Players.LocalPlayer.Character.CharacterMesh:Remove()
end

function Sit()
 game.Players.LocalPlayer.Character.Humanoid.Sit = true
 end
 
 function Barrel()
 AnimationId = "136801964"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
wait(1)
k:Destroy()
end

function Cripple()
game.Players.LocalPlayer.Character.Humanoid.HipHeight = -2
end

function Facerem()
for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
if (v:IsA("Decal")) then
v:Destroy()
end
end
end

function Awtoosim()
repeat
game.Players.LocalPlayer.Character.Humanoid:ChangeState(2)
wait()
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end

function ESP()
local ESPToggle = Enum.KeyCode.J


local Player = game:GetService('Players').LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = Player:GetMouse()
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local RenderStepped = RunService.RenderStepped
local Folder = Instance.new('Folder')
local Effects = Instance.new('Folder')
local Handles = Instance.new('Folder')
local Enabled, Debounce = false, true
local Limbs = {'Left Arm', 'Right Arm', 'Left Leg', 'Right Leg', 'Torso', 'Head'}
Blur = Instance.new('BlurEffect')
ColorCorrection = Instance.new('ColorCorrectionEffect')
Blur.Size = 0
Folder.Name = 'PlayerVision'
Effects.Name = 'Effects'
Handles.Name = 'Handles'
Effects.Parent, Handles.Parent = Folder, Folder

function isTagged(Part)
for i, Tag in pairs(Handles:GetChildren()) do
if Tag.Adornee == Part then
return true
end
end
return false
end

function canSee(Part)
local ray = Ray.new(Camera.CFrame.p, (Part.CFrame.p - Camera.CFrame.p).unit * 1000)
local hit, pos = workspace:FindPartOnRay(ray, Player.Character)
return hit == Part
end

function TagPlayer(Plr)
if Plr.Character ~= nil then
local Character = Plr.Character
for i, Limb in pairs(Limbs) do
local Part = Character:FindFirstChild(Limb)
if Part and not isTagged(Part) then
local BBG = Instance.new('BillboardGui')
local Image = Instance.new('ImageLabel')
Image.Image = 'rbxassetid://695499751'
Image.BackgroundTransparency = 1
Image.ImageColor3 = Color3.new(1,0,0)
Image.ImageTransparency = 0.3
Image.Size = UDim2.new(1,0,1,0)
Image.Parent = BBG
BBG.AlwaysOnTop = true
BBG.Adornee = Part
BBG.Name = Part.Name
local Width, Height = 1, Part.Size.Y
if Limb == 'Torso' then Width = 2 elseif Limb == 'Head' then Width = 1.5 Height = 1.5 end
BBG.Size = UDim2.new(Width,0,Height,0)
BBG.Parent = Handles
if Limb == 'Head' then
local NameDisp = Instance.new('BillboardGui')
NameDisp.Size = UDim2.new(12,0,1,0)
NameDisp.StudsOffset = Vector3.new(0,2,0)
NameDisp.Name = 'Name Label'
NameDisp.Adornee = Part
NameDisp.AlwaysOnTop = true
local Label = Instance.new('TextLabel')
Label.BackgroundTransparency = 1
Label.Size = UDim2.new(1,0,1,0)
Label.TextColor3 = Color3.new(1,1,1)
Label.TextStrokeColor3 = Color3.fromRGB(27,42,53)
Label.Font = 'SourceSans'
Label.TextStrokeTransparency = .6
Label.TextScaled = true
Label.Text = Character.Name
Label.Parent = NameDisp
spawn(function()
while Label.Parent ~= nil and wait(0.1) do
Label.Visible = not canSee(Part)
end
end)
NameDisp.Parent = Handles
end
RenderStepped:wait()
end
end
end
end

function EnableVision()
if not Enabled and not Debounce then
repeat wait() until Debounce
end
if not Enabled and Debounce then
Debounce = false
Enabled = true
Blur.Parent = Camera
ColorCorrection.Parent = Camera
Handles:ClearAllChildren()
Folder.Parent = Camera
for i = 0, 1, 0.05 do
Blur.Size = (i*5)
ColorCorrection.Saturation = -i
RenderStepped:wait()
end
spawn(function()
while Enabled do
for i, Plr in pairs(game:GetService('Players'):GetPlayers()) do
if Plr ~= Player then
TagPlayer(Plr)
end
end
wait(1)
end
end)
Debounce = true
end
end

function DisableVision()
if Enabled and not Debounce then
repeat wait() until Debounce
end
if Enabled and Debounce then
Debounce = false
Enabled = false
for i = 1, 0, -0.05 do
Blur.Size = (i*5)
ColorCorrection.Saturation = -i
RenderStepped:wait()
end
Handles:ClearAllChildren()
Folder.Parent = nil
Debounce = true
end
end

function onInputBegan(Input, GameProcessed)
if not GameProcessed and Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode == ESPToggle then
if not Enabled and Debounce then
EnableVision()
elseif Enabled and Debounce then
DisableVision()
end
end
end

UserInputService.InputBegan:connect(onInputBegan)
end

function Arosia()
loadstring(game:HttpGet("https://pastebin.com/raw/qBVz7Zud",true))()
end

function Exec()
-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.Position = UDim2.new(0.33611533, 0, 0.285012275, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 446, 0, 304)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.69999998807907
TextLabel.Size = UDim2.new(0, 389, 0, 40)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "LTAK Script Executor"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 30
TextLabel.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BackgroundTransparency = 0.69999998807907
TextBox.Position = UDim2.new(0, 0, 0.131578952, 0)
TextBox.Size = UDim2.new(0, 445, 0, 222)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.MultiLine = true
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextSize = 14
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BackgroundTransparency = 0.5
TextButton.Position = UDim2.new(0, 0, 0.861842096, 0)
TextButton.Size = UDim2.new(0, 225, 0, 42)
TextButton.Font = Enum.Font.Arcade
TextButton.Text = "Execute"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 30

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton_2.BackgroundTransparency = 0.5
TextButton_2.Position = UDim2.new(0.505282104, 0, 0.861842096, 0)
TextButton_2.Size = UDim2.new(0, 220, 0, 42)
TextButton_2.Font = Enum.Font.Arcade
TextButton_2.Text = "Clear"
TextButton_2.TextColor3 = Color3.new(1, 1, 1)
TextButton_2.TextSize = 30
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton_3.BackgroundTransparency = 0.69999998807907
TextButton_3.Position = UDim2.new(0.874515533, 0, -0.00117196538, 0)
TextButton_3.Size = UDim2.new(0, 55, 0, 40)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.new(1, 0, 0)
TextButton_3.TextSize = 40
TextButton_3.TextWrapped = true
-- Scripts:
function SCRIPT_QMBV81_FAKESCRIPT() -- TextButton.LocalScript 
	getfenv().script = Instance.new('LocalScript', TextButton)

	local TextBox = script.Parent.Parent.TextBox
	script.Parent.MouseButton1Click:Connect(function()
	loadstring(TextBox.Text)()
	 end)

end
coroutine.resume(coroutine.create(SCRIPT_QMBV81_FAKESCRIPT))
function SCRIPT_QGWS77_FAKESCRIPT() -- TextButton_2.LocalScript 
	getfenv().script = Instance.new('LocalScript', TextButton_2)

	local TextBox = script.Parent.Parent.TextBox
	script.Parent.MouseButton1Click:Connect(function()
	TextBox.Text = ""
	 end)

end
coroutine.resume(coroutine.create(SCRIPT_QGWS77_FAKESCRIPT))
function SCRIPT_CSPZ90_FAKESCRIPT() -- TextButton_3.LocalScript 
	getfenv().script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Visible=false end)

end
coroutine.resume(coroutine.create(SCRIPT_CSPZ90_FAKESCRIPT))
function SCRIPT_DYKB86_FAKESCRIPT() -- Frame.LocalScript 
	getfenv().script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_DYKB86_FAKESCRIPT))
end

function Oof()
while wait() do
   for i,v in pairs(game:GetService'Players':GetPlayers()) do
       if v.Character ~= nil and v.Character:FindFirstChild'Head' then
           for _,x in pairs(v.Character.Head:GetChildren()) do
               if x:IsA'Sound' then x.Playing = true end
           end
       end
   end
end
while wait() do
   for i,v in pairs(game:GetService'Players':GetPlayers()) do
       if v.Character ~= nil and v.Character:FindFirstChild'Head' then
           for _,x in pairs(v.Character.Head:GetChildren()) do
               if x:IsA'Sound' then x.Playing = false end
           end
       end
   end
end
end

function Hypertotal()
-- Credit to Timeless/xFunnieuss for the partial names/short names

-- Objects

local HyperTotal = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local EnterUsername = Instance.new("TextBox")
local CloseGUI = Instance.new("TextButton")
local CreditTXT = Instance.new("TextLabel")
local Sections = Instance.new("Frame")
local INTRO = Instance.new("Frame")
local FE_CHECK = Instance.new("TextLabel")
local Guide1 = Instance.new("TextLabel")
local Guide2 = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local RocketPropulsion = Instance.new("Frame")
local ROCKETPROPULSIONGUIDE = Instance.new("TextLabel")
local Push = Instance.new("TextButton")
local Flatten = Instance.new("TextButton")
local Float = Instance.new("TextButton")
local Max = Instance.new("TextButton")
local AimHead = Instance.new("TextButton")
local SlowAttract = Instance.new("TextButton")
local Experimental = Instance.new("TextButton")
local Multiple = Instance.new("TextButton")
local Teleportation = Instance.new("Frame")
local TELEPORTATIONGUIDE = Instance.new("TextLabel")
local TeleportTo = Instance.new("TextButton")
local LockOn = Instance.new("TextButton")
local LockArm = Instance.new("TextButton")
local LockLeg = Instance.new("TextButton")
local LockHead = Instance.new("TextButton")
local LockMax = Instance.new("TextButton")
local LockAbove = Instance.new("TextButton")
local Trail = Instance.new("TextButton")
local Tools = Instance.new("Frame")
local TOOLSGUIDE = Instance.new("TextLabel")
local Kill = Instance.new("TextButton")
local KillSurvive = Instance.new("TextButton")
local Attach = Instance.new("TextButton")
local Bring = Instance.new("TextButton")
local SuperSpin = Instance.new("TextButton")
local FreeFall = Instance.new("TextButton")
local AttachExperimental = Instance.new("TextButton")
local GiveTool = Instance.new("TextButton")
local Basic = Instance.new("Frame")
local BASICGUIDE = Instance.new("TextLabel")
local Speed = Instance.new("TextButton")
local JumpHeight = Instance.new("TextButton")
local Chat = Instance.new("TextButton")
local Spam = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local HipHeight = Instance.new("TextButton")
local STATCHANGE = Instance.new("TextBox")
local CHATBOX = Instance.new("TextBox")
local Local_Player = Instance.new("Frame")
local Local_PlayerGUIDE = Instance.new("TextLabel")
local CrazySpin = Instance.new("TextButton")
local CrouchRocket = Instance.new("TextButton")
local Haunted = Instance.new("TextButton")
local CloneIllusion = Instance.new("TextButton")
local Levitate = Instance.new("TextButton")
local Dinosaur = Instance.new("TextButton")
local Glitchy = Instance.new("TextButton")
local NoLimbs = Instance.new("TextButton")
local Animations = Instance.new("Frame")
local ANIMATIONSGUIDE = Instance.new("TextLabel")
local _18 = Instance.new("TextButton")
local Hide = Instance.new("TextButton")
local PushLock = Instance.new("TextButton")
local SlamOn = Instance.new("TextButton")
local LevitateOn = Instance.new("TextButton")
local Dance = Instance.new("TextButton")
local ExperimentalAnimation = Instance.new("TextButton")
local Carpet = Instance.new("TextButton")
local Extra = Instance.new("Frame")
local EXTRAGUIDE = Instance.new("TextLabel")
local Sit = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local PlatformStand = Instance.new("TextButton")
local Freeze = Instance.new("TextButton")
local Insane = Instance.new("TextButton")
local TPVoid = Instance.new("TextButton")
local Unknown = Instance.new("TextButton")
local Reset = Instance.new("TextButton")
local SelectTabs = Instance.new("ScrollingFrame")
local RocketPropulsionTAB = Instance.new("TextButton")
local TeleportationTAB = Instance.new("TextButton")
local ToolsTAB = Instance.new("TextButton")
local AnimationsTAB = Instance.new("TextButton")
local BasicTAB = Instance.new("TextButton")
local Local_PlayerTAB = Instance.new("TextButton")
local ExtraTAB = Instance.new("TextButton")
local SideTopFrame = Instance.new("Frame")
local SideTitle = Instance.new("TextLabel")
local OpenGUI = Instance.new("TextButton")
local SideCreditTXT = Instance.new("TextLabel")
local SideFrame = Instance.new("Frame")
local BrickFrame = Instance.new("Frame")

-- Properties

HyperTotal.Name = "HyperTotal"
HyperTotal.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = HyperTotal
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.348623842, 0, 1, 0)
MainFrame.Size = UDim2.new(0, 350, 0, 270)

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainFrame
TopFrame.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
TopFrame.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
TopFrame.BorderSizePixel = 2
TopFrame.Position = UDim2.new(-0.286500663, 0, 0, 0)
TopFrame.Size = UDim2.new(0, 450, 0, 40)
TopFrame.ZIndex = 9

Title.Name = "Title"
Title.Parent = TopFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.356534153, 0, 0, 0)
Title.Size = UDim2.new(0, 150, 0, 40)
Title.ZIndex = 10
Title.Font = Enum.Font.SourceSansItalic
Title.FontSize = Enum.FontSize.Size36
Title.Text = "HyperTotal"
Title.TextColor3 = Color3.new(0.933333, 0.670588, 0.0509804)
Title.TextSize = 35
Title.TextWrapped = true

EnterUsername.Name = "EnterUsername"
EnterUsername.Parent = TopFrame
EnterUsername.BackgroundColor3 = Color3.new(1, 1, 1)
EnterUsername.BorderColor3 = Color3.new(0.968628, 0.698039, 0.0588235)
EnterUsername.BorderSizePixel = 2
EnterUsername.Position = UDim2.new(0.0199999996, 0, 0.200000003, 0)
EnterUsername.Size = UDim2.new(0, 120, 0, 24)
EnterUsername.ZIndex = 10
EnterUsername.Font = Enum.Font.SourceSans
EnterUsername.FontSize = Enum.FontSize.Size14
EnterUsername.Text = ""
EnterUsername.TextScaled = true
EnterUsername.TextSize = 14
EnterUsername.TextWrapped = true

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = TopFrame
CloseGUI.BackgroundColor3 = Color3.new(1, 1, 1)
CloseGUI.BackgroundTransparency = 1
CloseGUI.Position = UDim2.new(0.913618803, 0, 0, 0)
CloseGUI.Size = UDim2.new(0, 40, 0, 40)
CloseGUI.ZIndex = 10
CloseGUI.Font = Enum.Font.SourceSansBold
CloseGUI.FontSize = Enum.FontSize.Size60
CloseGUI.Text = "X"
CloseGUI.TextColor3 = Color3.new(1, 0.631373, 0.109804)
CloseGUI.TextSize = 50
CloseGUI.TextWrapped = true

CreditTXT.Name = "CreditTXT"
CreditTXT.Parent = TopFrame
CreditTXT.BackgroundColor3 = Color3.new(1, 1, 1)
CreditTXT.BackgroundTransparency = 1
CreditTXT.Position = UDim2.new(0.690784931, 0, 0.250416666, 0)
CreditTXT.Rotation = -17
CreditTXT.Size = UDim2.new(0, 90, 0, 20)
CreditTXT.ZIndex = 10
CreditTXT.Font = Enum.Font.SourceSansItalic
CreditTXT.FontSize = Enum.FontSize.Size24
CreditTXT.Text = "illremember"
CreditTXT.TextColor3 = Color3.new(0.933333, 0.819608, 0.737255)
CreditTXT.TextSize = 20
CreditTXT.TextWrapped = true

Sections.Name = "Sections"
Sections.Parent = MainFrame
Sections.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Sections.BackgroundTransparency = 1
Sections.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Sections.BorderSizePixel = 2
Sections.Position = UDim2.new(0, 0, 0.148395061, 0)
Sections.Size = UDim2.new(0, 350, 0, 230)

INTRO.Name = "INTRO"
INTRO.Parent = Sections
INTRO.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
INTRO.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
INTRO.BorderSizePixel = 2
INTRO.Size = UDim2.new(0, 350, 0, 230)

FE_CHECK.Name = "FE_CHECK"
FE_CHECK.Parent = INTRO
FE_CHECK.BackgroundColor3 = Color3.new(1, 1, 1)
FE_CHECK.BackgroundTransparency = 1
FE_CHECK.Position = UDim2.new(0.0286500659, 0, 0.0435507223, 0)
FE_CHECK.Size = UDim2.new(0, 332, 0, 50)
FE_CHECK.Font = Enum.Font.ArialBold
FE_CHECK.FontSize = Enum.FontSize.Size14
FE_CHECK.Text = "Error loading FE Checker"
FE_CHECK.TextScaled = true
FE_CHECK.TextSize = 14
FE_CHECK.TextWrapped = true

Guide1.Name = "Guide1"
Guide1.Parent = INTRO
Guide1.BackgroundColor3 = Color3.new(1, 1, 1)
Guide1.BackgroundTransparency = 1
Guide1.Position = UDim2.new(0.0286500659, 0, 0.653260887, 0)
Guide1.Size = UDim2.new(0, 332, 0, 80)
Guide1.Font = Enum.Font.ArialBold
Guide1.FontSize = Enum.FontSize.Size14
Guide1.Text = "Click on one of the sections to the left to begin exploiting FE Sections! Enter a name in the textbox (top left) to affect that player. You don't have to write their full username."
Guide1.TextScaled = true
Guide1.TextSize = 14
Guide1.TextStrokeColor3 = Color3.new(0.831373, 0.831373, 0.831373)
Guide1.TextStrokeTransparency = 0.5
Guide1.TextWrapped = true

Guide2.Name = "Guide2"
Guide2.Parent = INTRO
Guide2.BackgroundColor3 = Color3.new(1, 1, 1)
Guide2.BackgroundTransparency = 1
Guide2.Position = UDim2.new(0.0286500659, 0, 0.217753619, 0)
Guide2.Size = UDim2.new(0, 332, 0, 50)
Guide2.Font = Enum.Font.ArialBold
Guide2.FontSize = Enum.FontSize.Size14
Guide2.Text = "This GUI is dedicated to exploiting FE Sections, affecting yourself and others"
Guide2.TextScaled = true
Guide2.TextSize = 14
Guide2.TextStrokeColor3 = Color3.new(1, 0.658824, 0.0666667)
Guide2.TextStrokeTransparency = 0
Guide2.TextWrapped = true

Credit.Name = "Credit"
Credit.Parent = INTRO
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.0286500659, 0, 0.435507238, 0)
Credit.Size = UDim2.new(0, 332, 0, 50)
Credit.Font = Enum.Font.ArialBold
Credit.FontSize = Enum.FontSize.Size14
Credit.Text = "By illremember"
Credit.TextColor3 = Color3.new(0.92549, 0.607843, 0.0901961)
Credit.TextScaled = true
Credit.TextSize = 14
Credit.TextStrokeColor3 = Color3.new(1, 0.658824, 0.0666667)
Credit.TextWrapped = true

RocketPropulsion.Name = "RocketPropulsion"
RocketPropulsion.Parent = Sections
RocketPropulsion.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
RocketPropulsion.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
RocketPropulsion.BorderSizePixel = 2
RocketPropulsion.Size = UDim2.new(0, 350, 0, 230)
RocketPropulsion.Visible = false

ROCKETPROPULSIONGUIDE.Name = "ROCKETPROPULSIONGUIDE"
ROCKETPROPULSIONGUIDE.Parent = RocketPropulsion
ROCKETPROPULSIONGUIDE.BackgroundColor3 = Color3.new(1, 1, 1)
ROCKETPROPULSIONGUIDE.BackgroundTransparency = 1
ROCKETPROPULSIONGUIDE.Position = UDim2.new(0.0286500659, 0, 0.0435507223, 0)
ROCKETPROPULSIONGUIDE.Size = UDim2.new(0, 332, 0, 35)
ROCKETPROPULSIONGUIDE.Font = Enum.Font.ArialBold
ROCKETPROPULSIONGUIDE.FontSize = Enum.FontSize.Size14
ROCKETPROPULSIONGUIDE.Text = "Fling and push others, works best in a group of people."
ROCKETPROPULSIONGUIDE.TextScaled = true
ROCKETPROPULSIONGUIDE.TextSize = 14
ROCKETPROPULSIONGUIDE.TextStrokeColor3 = Color3.new(1, 0.658824, 0.0666667)
ROCKETPROPULSIONGUIDE.TextStrokeTransparency = 0
ROCKETPROPULSIONGUIDE.TextWrapped = true

Push.Name = "Push"
Push.Parent = RocketPropulsion
Push.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Push.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Push.Position = UDim2.new(0.0286500659, 0, 0.261304349, 0)
Push.Size = UDim2.new(0, 140, 0, 25)
Push.Font = Enum.Font.SourceSans
Push.FontSize = Enum.FontSize.Size14
Push.Text = "Push"
Push.TextScaled = true
Push.TextSize = 14
Push.TextWrapped = true

Flatten.Name = "Flatten"
Flatten.Parent = RocketPropulsion
Flatten.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Flatten.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Flatten.Position = UDim2.new(0.54435122, 0, 0.261304349, 0)
Flatten.Size = UDim2.new(0, 140, 0, 25)
Flatten.Font = Enum.Font.SourceSans
Flatten.FontSize = Enum.FontSize.Size14
Flatten.Text = "Flatten"
Flatten.TextScaled = true
Flatten.TextSize = 14
Flatten.TextWrapped = true

Float.Name = "Float"
Float.Parent = RocketPropulsion
Float.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Float.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Float.Position = UDim2.new(0.54435122, 0, 0.435507238, 0)
Float.Size = UDim2.new(0, 140, 0, 25)
Float.Font = Enum.Font.SourceSans
Float.FontSize = Enum.FontSize.Size14
Float.Text = "Float"
Float.TextScaled = true
Float.TextSize = 14
Float.TextWrapped = true

Max.Name = "Max"
Max.Parent = RocketPropulsion
Max.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Max.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Max.Position = UDim2.new(0.0286500659, 0, 0.435507238, 0)
Max.Size = UDim2.new(0, 140, 0, 25)
Max.Font = Enum.Font.SourceSans
Max.FontSize = Enum.FontSize.Size14
Max.Text = "Max"
Max.TextScaled = true
Max.TextSize = 14
Max.TextWrapped = true

AimHead.Name = "AimHead"
AimHead.Parent = RocketPropulsion
AimHead.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
AimHead.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
AimHead.Position = UDim2.new(0.0286500659, 0, 0.609710157, 0)
AimHead.Size = UDim2.new(0, 140, 0, 25)
AimHead.Font = Enum.Font.SourceSans
AimHead.FontSize = Enum.FontSize.Size14
AimHead.Text = "AimHead"
AimHead.TextScaled = true
AimHead.TextSize = 14
AimHead.TextWrapped = true

SlowAttract.Name = "SlowAttract"
SlowAttract.Parent = RocketPropulsion
SlowAttract.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
SlowAttract.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
SlowAttract.Position = UDim2.new(0.54435122, 0, 0.609710157, 0)
SlowAttract.Size = UDim2.new(0, 140, 0, 25)
SlowAttract.Font = Enum.Font.SourceSans
SlowAttract.FontSize = Enum.FontSize.Size14
SlowAttract.Text = "SlowAttract"
SlowAttract.TextScaled = true
SlowAttract.TextSize = 14
SlowAttract.TextWrapped = true

Experimental.Name = "Experimental"
Experimental.Parent = RocketPropulsion
Experimental.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Experimental.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Experimental.Position = UDim2.new(0.54435122, 0, 0.783913076, 0)
Experimental.Size = UDim2.new(0, 140, 0, 25)
Experimental.Font = Enum.Font.SourceSans
Experimental.FontSize = Enum.FontSize.Size14
Experimental.Text = "Experimental"
Experimental.TextScaled = true
Experimental.TextSize = 14
Experimental.TextWrapped = true

Multiple.Name = "Multiple"
Multiple.Parent = RocketPropulsion
Multiple.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Multiple.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Multiple.Position = UDim2.new(0.0286500659, 0, 0.783913076, 0)
Multiple.Size = UDim2.new(0, 140, 0, 25)
Multiple.Font = Enum.Font.SourceSans
Multiple.FontSize = Enum.FontSize.Size14
Multiple.Text = "Multiple"
Multiple.TextScaled = true
Multiple.TextSize = 14
Multiple.TextWrapped = true

Teleportation.Name = "Teleportation"
Teleportation.Parent = Sections
Teleportation.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Teleportation.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Teleportation.BorderSizePixel = 2
Teleportation.Size = UDim2.new(0, 350, 0, 230)
Teleportation.Visible = false

TELEPORTATIONGUIDE.Name = "TELEPORTATIONGUIDE"
TELEPORTATIONGUIDE.Parent = Teleportation
TELEPORTATIONGUIDE.BackgroundColor3 = Color3.new(1, 1, 1)
TELEPORTATIONGUIDE.BackgroundTransparency = 1
TELEPORTATIONGUIDE.Position = UDim2.new(0.0286500659, 0, 0.0435507223, 0)
TELEPORTATIONGUIDE.Size = UDim2.new(0, 332, 0, 35)
TELEPORTATIONGUIDE.Font = Enum.Font.ArialBold
TELEPORTATIONGUIDE.FontSize = Enum.FontSize.Size14
TELEPORTATIONGUIDE.Text = "Teleport to and annoy other players."
TELEPORTATIONGUIDE.TextScaled = true
TELEPORTATIONGUIDE.TextSize = 14
TELEPORTATIONGUIDE.TextStrokeColor3 = Color3.new(1, 0.658824, 0.0666667)
TELEPORTATIONGUIDE.TextStrokeTransparency = 0
TELEPORTATIONGUIDE.TextWrapped = true

TeleportTo.Name = "TeleportTo"
TeleportTo.Parent = Teleportation
TeleportTo.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
TeleportTo.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
TeleportTo.Position = UDim2.new(0.0286500659, 0, 0.261304349, 0)
TeleportTo.Size = UDim2.new(0, 140, 0, 25)
TeleportTo.Font = Enum.Font.SourceSans
TeleportTo.FontSize = Enum.FontSize.Size14
TeleportTo.Text = "Teleport To"
TeleportTo.TextScaled = true
TeleportTo.TextSize = 14
TeleportTo.TextWrapped = true

LockOn.Name = "LockOn"
LockOn.Parent = Teleportation
LockOn.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
LockOn.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
LockOn.Position = UDim2.new(0.54435122, 0, 0.261304349, 0)
LockOn.Size = UDim2.new(0, 140, 0, 25)
LockOn.Font = Enum.Font.SourceSans
LockOn.FontSize = Enum.FontSize.Size14
LockOn.Text = "Lock On"
LockOn.TextScaled = true
LockOn.TextSize = 14
LockOn.TextWrapped = true

LockArm.Name = "LockArm"
LockArm.Parent = Teleportation
LockArm.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
LockArm.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
LockArm.Position = UDim2.new(0.54435122, 0, 0.435507238, 0)
LockArm.Size = UDim2.new(0, 140, 0, 25)
LockArm.Font = Enum.Font.SourceSans
LockArm.FontSize = Enum.FontSize.Size14
LockArm.Text = "Lock Arm"
LockArm.TextScaled = true
LockArm.TextSize = 14
LockArm.TextWrapped = true

LockLeg.Name = "LockLeg"
LockLeg.Parent = Teleportation
LockLeg.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
LockLeg.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
LockLeg.Position = UDim2.new(0.0286500659, 0, 0.435507238, 0)
LockLeg.Size = UDim2.new(0, 140, 0, 25)
LockLeg.Font = Enum.Font.SourceSans
LockLeg.FontSize = Enum.FontSize.Size14
LockLeg.Text = "Lock Leg"
LockLeg.TextScaled = true
LockLeg.TextSize = 14
LockLeg.TextWrapped = true

LockHead.Name = "LockHead"
LockHead.Parent = Teleportation
LockHead.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
LockHead.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
LockHead.Position = UDim2.new(0.0286500659, 0, 0.609710157, 0)
LockHead.Size = UDim2.new(0, 140, 0, 25)
LockHead.Font = Enum.Font.SourceSans
LockHead.FontSize = Enum.FontSize.Size14
LockHead.Text = "LockHead"
LockHead.TextScaled = true
LockHead.TextSize = 14
LockHead.TextWrapped = true

LockMax.Name = "LockMax"
LockMax.Parent = Teleportation
LockMax.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
LockMax.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
LockMax.Position = UDim2.new(0.54435122, 0, 0.609710157, 0)
LockMax.Size = UDim2.new(0, 140, 0, 25)
LockMax.Font = Enum.Font.SourceSans
LockMax.FontSize = Enum.FontSize.Size14
LockMax.Text = "Lock Max"
LockMax.TextScaled = true
LockMax.TextSize = 14
LockMax.TextWrapped = true

LockAbove.Name = "LockAbove"
LockAbove.Parent = Teleportation
LockAbove.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
LockAbove.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
LockAbove.Position = UDim2.new(0.54435122, 0, 0.783913076, 0)
LockAbove.Size = UDim2.new(0, 140, 0, 25)
LockAbove.Font = Enum.Font.SourceSans
LockAbove.FontSize = Enum.FontSize.Size14
LockAbove.Text = "Lock Above"
LockAbove.TextScaled = true
LockAbove.TextSize = 14
LockAbove.TextWrapped = true

Trail.Name = "Trail"
Trail.Parent = Teleportation
Trail.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Trail.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Trail.Position = UDim2.new(0.0286500659, 0, 0.783913076, 0)
Trail.Size = UDim2.new(0, 140, 0, 25)
Trail.Font = Enum.Font.SourceSans
Trail.FontSize = Enum.FontSize.Size14
Trail.Text = "Trail"
Trail.TextScaled = true
Trail.TextSize = 14
Trail.TextWrapped = true

Tools.Name = "Tools"
Tools.Parent = Sections
Tools.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Tools.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Tools.BorderSizePixel = 2
Tools.Size = UDim2.new(0, 350, 0, 230)
Tools.Visible = false

TOOLSGUIDE.Name = "TOOLSGUIDE"
TOOLSGUIDE.Parent = Tools
TOOLSGUIDE.BackgroundColor3 = Color3.new(1, 1, 1)
TOOLSGUIDE.BackgroundTransparency = 1
TOOLSGUIDE.Position = UDim2.new(0.0286500659, 0, 0.0435507223, 0)
TOOLSGUIDE.Size = UDim2.new(0, 332, 0, 35)
TOOLSGUIDE.Font = Enum.Font.ArialBold
TOOLSGUIDE.FontSize = Enum.FontSize.Size14
TOOLSGUIDE.Text = "Do cool commands on others, as long as you have tools in your inventory."
TOOLSGUIDE.TextScaled = true
TOOLSGUIDE.TextSize = 14
TOOLSGUIDE.TextStrokeColor3 = Color3.new(1, 0.658824, 0.0666667)
TOOLSGUIDE.TextStrokeTransparency = 0
TOOLSGUIDE.TextWrapped = true

Kill.Name = "Kill"
Kill.Parent = Tools
Kill.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Kill.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Kill.Position = UDim2.new(0.0286500659, 0, 0.261304349, 0)
Kill.Size = UDim2.new(0, 140, 0, 25)
Kill.Font = Enum.Font.SourceSans
Kill.FontSize = Enum.FontSize.Size14
Kill.Text = "Kill"
Kill.TextScaled = true
Kill.TextSize = 14
Kill.TextWrapped = true

KillSurvive.Name = "KillSurvive"
KillSurvive.Parent = Tools
KillSurvive.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
KillSurvive.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
KillSurvive.Position = UDim2.new(0.54435122, 0, 0.261304349, 0)
KillSurvive.Size = UDim2.new(0, 140, 0, 25)
KillSurvive.Font = Enum.Font.SourceSans
KillSurvive.FontSize = Enum.FontSize.Size14
KillSurvive.Text = "Kill Survive"
KillSurvive.TextScaled = true
KillSurvive.TextSize = 14
KillSurvive.TextWrapped = true

Attach.Name = "Attach"
Attach.Parent = Tools
Attach.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Attach.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Attach.Position = UDim2.new(0.54435122, 0, 0.435507238, 0)
Attach.Size = UDim2.new(0, 140, 0, 25)
Attach.Font = Enum.Font.SourceSans
Attach.FontSize = Enum.FontSize.Size14
Attach.Text = "Attach"
Attach.TextScaled = true
Attach.TextSize = 14
Attach.TextWrapped = true

Bring.Name = "Bring"
Bring.Parent = Tools
Bring.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Bring.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Bring.Position = UDim2.new(0.0286500659, 0, 0.435507238, 0)
Bring.Size = UDim2.new(0, 140, 0, 25)
Bring.Font = Enum.Font.SourceSans
Bring.FontSize = Enum.FontSize.Size14
Bring.Text = "Bring"
Bring.TextScaled = true
Bring.TextSize = 14
Bring.TextWrapped = true

SuperSpin.Name = "SuperSpin"
SuperSpin.Parent = Tools
SuperSpin.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
SuperSpin.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
SuperSpin.Position = UDim2.new(0.0286500659, 0, 0.609710157, 0)
SuperSpin.Size = UDim2.new(0, 140, 0, 25)
SuperSpin.Font = Enum.Font.SourceSans
SuperSpin.FontSize = Enum.FontSize.Size14
SuperSpin.Text = "Super Spin"
SuperSpin.TextScaled = true
SuperSpin.TextSize = 14
SuperSpin.TextWrapped = true

FreeFall.Name = "FreeFall"
FreeFall.Parent = Tools
FreeFall.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
FreeFall.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
FreeFall.Position = UDim2.new(0.54435122, 0, 0.609710157, 0)
FreeFall.Size = UDim2.new(0, 140, 0, 25)
FreeFall.Font = Enum.Font.SourceSans
FreeFall.FontSize = Enum.FontSize.Size14
FreeFall.Text = "Free Fall"
FreeFall.TextScaled = true
FreeFall.TextSize = 14
FreeFall.TextWrapped = true

AttachExperimental.Name = "AttachExperimental"
AttachExperimental.Parent = Tools
AttachExperimental.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
AttachExperimental.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
AttachExperimental.Position = UDim2.new(0.54435122, 0, 0.783913076, 0)
AttachExperimental.Size = UDim2.new(0, 140, 0, 25)
AttachExperimental.Font = Enum.Font.SourceSans
AttachExperimental.FontSize = Enum.FontSize.Size14
AttachExperimental.Text = "Attach Experimental"
AttachExperimental.TextScaled = true
AttachExperimental.TextSize = 14
AttachExperimental.TextWrapped = true

GiveTool.Name = "GiveTool"
GiveTool.Parent = Tools
GiveTool.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
GiveTool.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
GiveTool.Position = UDim2.new(0.0286500659, 0, 0.783913076, 0)
GiveTool.Size = UDim2.new(0, 140, 0, 25)
GiveTool.Font = Enum.Font.SourceSans
GiveTool.FontSize = Enum.FontSize.Size14
GiveTool.Text = "Give Tool"
GiveTool.TextScaled = true
GiveTool.TextSize = 14
GiveTool.TextWrapped = true

Basic.Name = "Basic"
Basic.Parent = Sections
Basic.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Basic.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Basic.BorderSizePixel = 2
Basic.Size = UDim2.new(0, 350, 0, 230)
Basic.Visible = false

BASICGUIDE.Name = "BASICGUIDE"
BASICGUIDE.Parent = Basic
BASICGUIDE.BackgroundColor3 = Color3.new(1, 1, 1)
BASICGUIDE.BackgroundTransparency = 1
BASICGUIDE.Position = UDim2.new(0.0286500659, 0, 0.0435507223, 0)
BASICGUIDE.Size = UDim2.new(0, 332, 0, 35)
BASICGUIDE.Font = Enum.Font.ArialBold
BASICGUIDE.FontSize = Enum.FontSize.Size14
BASICGUIDE.Text = "Change/alter your own player."
BASICGUIDE.TextScaled = true
BASICGUIDE.TextSize = 14
BASICGUIDE.TextStrokeColor3 = Color3.new(1, 0.658824, 0.0666667)
BASICGUIDE.TextStrokeTransparency = 0
BASICGUIDE.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = Basic
Speed.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Speed.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Speed.Position = UDim2.new(0.0286500659, 0, 0.348405778, 0)
Speed.Size = UDim2.new(0, 100, 0, 25)
Speed.Font = Enum.Font.SourceSans
Speed.FontSize = Enum.FontSize.Size14
Speed.Text = "Speed"
Speed.TextScaled = true
Speed.TextSize = 14
Speed.TextWrapped = true

JumpHeight.Name = "JumpHeight"
JumpHeight.Parent = Basic
JumpHeight.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
JumpHeight.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
JumpHeight.Position = UDim2.new(0.343800783, 0, 0.348405778, 0)
JumpHeight.Size = UDim2.new(0, 100, 0, 25)
JumpHeight.Font = Enum.Font.SourceSans
JumpHeight.FontSize = Enum.FontSize.Size14
JumpHeight.Text = "JumpHeight"
JumpHeight.TextScaled = true
JumpHeight.TextSize = 14
JumpHeight.TextWrapped = true

Chat.Name = "Chat"
Chat.Parent = Basic
Chat.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Chat.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Chat.Position = UDim2.new(0.0286500659, 0, 0.653260887, 0)
Chat.Size = UDim2.new(0, 140, 0, 25)
Chat.Font = Enum.Font.SourceSans
Chat.FontSize = Enum.FontSize.Size14
Chat.Text = "Chat"
Chat.TextScaled = true
Chat.TextSize = 14
Chat.TextWrapped = true

Spam.Name = "Spam"
Spam.Parent = Basic
Spam.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Spam.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Spam.Position = UDim2.new(0.54435122, 0, 0.653260887, 0)
Spam.Size = UDim2.new(0, 140, 0, 25)
Spam.Font = Enum.Font.SourceSans
Spam.FontSize = Enum.FontSize.Size14
Spam.Text = "Spam"
Spam.TextScaled = true
Spam.TextSize = 14
Spam.TextWrapped = true

Fly.Name = "Fly"
Fly.Parent = Basic
Fly.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Fly.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Fly.Position = UDim2.new(0.54435122, 0, 0.827463746, 0)
Fly.Size = UDim2.new(0, 140, 0, 25)
Fly.Font = Enum.Font.SourceSans
Fly.FontSize = Enum.FontSize.Size14
Fly.Text = "Fly"
Fly.TextScaled = true
Fly.TextSize = 14
Fly.TextWrapped = true

Noclip.Name = "Noclip"
Noclip.Parent = Basic
Noclip.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Noclip.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Noclip.Position = UDim2.new(0.0286500659, 0, 0.827463746, 0)
Noclip.Size = UDim2.new(0, 140, 0, 25)
Noclip.Font = Enum.Font.SourceSans
Noclip.FontSize = Enum.FontSize.Size14
Noclip.Text = "Noclip"
Noclip.TextScaled = true
Noclip.TextSize = 14
Noclip.TextWrapped = true

HipHeight.Name = "HipHeight"
HipHeight.Parent = Basic
HipHeight.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
HipHeight.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
HipHeight.Position = UDim2.new(0.658951521, 0, 0.348405778, 0)
HipHeight.Size = UDim2.new(0, 100, 0, 25)
HipHeight.Font = Enum.Font.SourceSans
HipHeight.FontSize = Enum.FontSize.Size14
HipHeight.Text = "HipHeight"
HipHeight.TextScaled = true
HipHeight.TextSize = 14
HipHeight.TextWrapped = true

STATCHANGE.Name = "STATCHANGE"
STATCHANGE.Parent = Basic
STATCHANGE.BackgroundColor3 = Color3.new(1, 1, 1)
STATCHANGE.BorderColor3 = Color3.new(0.968628, 0.698039, 0.0588235)
STATCHANGE.BorderSizePixel = 2
STATCHANGE.Position = UDim2.new(0.315150708, 0, 0.217753619, 0)
STATCHANGE.Size = UDim2.new(0, 120, 0, 18)
STATCHANGE.ZIndex = 3
STATCHANGE.Font = Enum.Font.SourceSans
STATCHANGE.FontSize = Enum.FontSize.Size14
STATCHANGE.Text = ""
STATCHANGE.TextScaled = true
STATCHANGE.TextSize = 14
STATCHANGE.TextWrapped = true

CHATBOX.Name = "CHATBOX"
CHATBOX.Parent = Basic
CHATBOX.BackgroundColor3 = Color3.new(1, 1, 1)
CHATBOX.BorderColor3 = Color3.new(0.968628, 0.698039, 0.0588235)
CHATBOX.BorderSizePixel = 2
CHATBOX.Position = UDim2.new(0.143250331, 0, 0.522608697, 0)
CHATBOX.Size = UDim2.new(0, 240, 0, 18)
CHATBOX.ZIndex = 3
CHATBOX.Font = Enum.Font.SourceSans
CHATBOX.FontSize = Enum.FontSize.Size14
CHATBOX.Text = ""
CHATBOX.TextScaled = true
CHATBOX.TextSize = 14
CHATBOX.TextWrapped = true

Local_Player.Name = "Local_Player"
Local_Player.Parent = Sections
Local_Player.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Local_Player.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Local_Player.BorderSizePixel = 2
Local_Player.Size = UDim2.new(0, 350, 0, 230)
Local_Player.Visible = false

Local_PlayerGUIDE.Name = "Local_PlayerGUIDE"
Local_PlayerGUIDE.Parent = Local_Player
Local_PlayerGUIDE.BackgroundColor3 = Color3.new(1, 1, 1)
Local_PlayerGUIDE.BackgroundTransparency = 1
Local_PlayerGUIDE.Position = UDim2.new(0.0286500659, 0, 0.0435507223, 0)
Local_PlayerGUIDE.Size = UDim2.new(0, 332, 0, 35)
Local_PlayerGUIDE.Font = Enum.Font.ArialBold
Local_PlayerGUIDE.FontSize = Enum.FontSize.Size14
Local_PlayerGUIDE.Text = "Perform cool tricks on yourself."
Local_PlayerGUIDE.TextScaled = true
Local_PlayerGUIDE.TextSize = 14
Local_PlayerGUIDE.TextStrokeColor3 = Color3.new(1, 0.658824, 0.0666667)
Local_PlayerGUIDE.TextStrokeTransparency = 0
Local_PlayerGUIDE.TextWrapped = true

CrazySpin.Name = "CrazySpin"
CrazySpin.Parent = Local_Player
CrazySpin.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
CrazySpin.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
CrazySpin.Position = UDim2.new(0.0286500659, 0, 0.261304349, 0)
CrazySpin.Size = UDim2.new(0, 140, 0, 25)
CrazySpin.Font = Enum.Font.SourceSans
CrazySpin.FontSize = Enum.FontSize.Size14
CrazySpin.Text = "Crazy Spin"
CrazySpin.TextScaled = true
CrazySpin.TextSize = 14
CrazySpin.TextWrapped = true

CrouchRocket.Name = "CrouchRocket"
CrouchRocket.Parent = Local_Player
CrouchRocket.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
CrouchRocket.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
CrouchRocket.Position = UDim2.new(0.54435122, 0, 0.261304349, 0)
CrouchRocket.Size = UDim2.new(0, 140, 0, 25)
CrouchRocket.Font = Enum.Font.SourceSans
CrouchRocket.FontSize = Enum.FontSize.Size14
CrouchRocket.Text = "Crouch Rocket"
CrouchRocket.TextScaled = true
CrouchRocket.TextSize = 14
CrouchRocket.TextWrapped = true

Haunted.Name = "Haunted"
Haunted.Parent = Local_Player
Haunted.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Haunted.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Haunted.Position = UDim2.new(0.54435122, 0, 0.435507238, 0)
Haunted.Size = UDim2.new(0, 140, 0, 25)
Haunted.Font = Enum.Font.SourceSans
Haunted.FontSize = Enum.FontSize.Size14
Haunted.Text = "Haunted"
Haunted.TextScaled = true
Haunted.TextSize = 14
Haunted.TextWrapped = true

CloneIllusion.Name = "CloneIllusion"
CloneIllusion.Parent = Local_Player
CloneIllusion.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
CloneIllusion.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
CloneIllusion.Position = UDim2.new(0.0286500659, 0, 0.435507238, 0)
CloneIllusion.Size = UDim2.new(0, 140, 0, 25)
CloneIllusion.Font = Enum.Font.SourceSans
CloneIllusion.FontSize = Enum.FontSize.Size14
CloneIllusion.Text = "Clone Illusion"
CloneIllusion.TextScaled = true
CloneIllusion.TextSize = 14
CloneIllusion.TextWrapped = true

Levitate.Name = "Levitate"
Levitate.Parent = Local_Player
Levitate.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Levitate.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Levitate.Position = UDim2.new(0.0286500659, 0, 0.609710157, 0)
Levitate.Size = UDim2.new(0, 140, 0, 25)
Levitate.Font = Enum.Font.SourceSans
Levitate.FontSize = Enum.FontSize.Size14
Levitate.Text = "Levitate"
Levitate.TextScaled = true
Levitate.TextSize = 14
Levitate.TextWrapped = true

Dinosaur.Name = "Dinosaur"
Dinosaur.Parent = Local_Player
Dinosaur.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Dinosaur.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Dinosaur.Position = UDim2.new(0.54435122, 0, 0.609710157, 0)
Dinosaur.Size = UDim2.new(0, 140, 0, 25)
Dinosaur.Font = Enum.Font.SourceSans
Dinosaur.FontSize = Enum.FontSize.Size14
Dinosaur.Text = "Dinosaur"
Dinosaur.TextScaled = true
Dinosaur.TextSize = 14
Dinosaur.TextWrapped = true

Glitchy.Name = "Glitchy"
Glitchy.Parent = Local_Player
Glitchy.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Glitchy.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Glitchy.Position = UDim2.new(0.54435122, 0, 0.783913076, 0)
Glitchy.Size = UDim2.new(0, 140, 0, 25)
Glitchy.Font = Enum.Font.SourceSans
Glitchy.FontSize = Enum.FontSize.Size14
Glitchy.Text = "Glitchy"
Glitchy.TextScaled = true
Glitchy.TextSize = 14
Glitchy.TextWrapped = true

NoLimbs.Name = "NoLimbs"
NoLimbs.Parent = Local_Player
NoLimbs.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
NoLimbs.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
NoLimbs.Position = UDim2.new(0.0286500659, 0, 0.783913076, 0)
NoLimbs.Size = UDim2.new(0, 140, 0, 25)
NoLimbs.Font = Enum.Font.SourceSans
NoLimbs.FontSize = Enum.FontSize.Size14
NoLimbs.Text = "No Limbs"
NoLimbs.TextScaled = true
NoLimbs.TextSize = 14
NoLimbs.TextWrapped = true

Animations.Name = "Animations"
Animations.Parent = Sections
Animations.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Animations.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Animations.BorderSizePixel = 2
Animations.Size = UDim2.new(0, 350, 0, 230)
Animations.Visible = false

ANIMATIONSGUIDE.Name = "ANIMATIONSGUIDE"
ANIMATIONSGUIDE.Parent = Animations
ANIMATIONSGUIDE.BackgroundColor3 = Color3.new(1, 1, 1)
ANIMATIONSGUIDE.BackgroundTransparency = 1
ANIMATIONSGUIDE.Position = UDim2.new(0.0286500659, 0, 0.0435507223, 0)
ANIMATIONSGUIDE.Size = UDim2.new(0, 332, 0, 35)
ANIMATIONSGUIDE.Font = Enum.Font.ArialBold
ANIMATIONSGUIDE.FontSize = Enum.FontSize.Size14
ANIMATIONSGUIDE.Text = "Do cool commands with animations on others."
ANIMATIONSGUIDE.TextScaled = true
ANIMATIONSGUIDE.TextSize = 14
ANIMATIONSGUIDE.TextStrokeColor3 = Color3.new(1, 0.658824, 0.0666667)
ANIMATIONSGUIDE.TextStrokeTransparency = 0
ANIMATIONSGUIDE.TextWrapped = true

_18.Name = "18+"
_18.Parent = Animations
_18.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
_18.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
_18.Position = UDim2.new(0.0286500659, 0, 0.261304349, 0)
_18.Size = UDim2.new(0, 140, 0, 25)
_18.Font = Enum.Font.SourceSans
_18.FontSize = Enum.FontSize.Size14
_18.Text = "18+"
_18.TextScaled = true
_18.TextSize = 14
_18.TextWrapped = true

Hide.Name = "Hide"
Hide.Parent = Animations
Hide.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Hide.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Hide.Position = UDim2.new(0.54435122, 0, 0.261304349, 0)
Hide.Size = UDim2.new(0, 140, 0, 25)
Hide.Font = Enum.Font.SourceSans
Hide.FontSize = Enum.FontSize.Size14
Hide.Text = "Hide"
Hide.TextScaled = true
Hide.TextSize = 14
Hide.TextWrapped = true

PushLock.Name = "PushLock"
PushLock.Parent = Animations
PushLock.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
PushLock.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
PushLock.Position = UDim2.new(0.54435122, 0, 0.435507238, 0)
PushLock.Size = UDim2.new(0, 140, 0, 25)
PushLock.Font = Enum.Font.SourceSans
PushLock.FontSize = Enum.FontSize.Size14
PushLock.Text = "Push Lock"
PushLock.TextScaled = true
PushLock.TextSize = 14
PushLock.TextWrapped = true

SlamOn.Name = "SlamOn"
SlamOn.Parent = Animations
SlamOn.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
SlamOn.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
SlamOn.Position = UDim2.new(0.0286500659, 0, 0.435507238, 0)
SlamOn.Size = UDim2.new(0, 140, 0, 25)
SlamOn.Font = Enum.Font.SourceSans
SlamOn.FontSize = Enum.FontSize.Size14
SlamOn.Text = "Slam On"
SlamOn.TextScaled = true
SlamOn.TextSize = 14
SlamOn.TextWrapped = true

LevitateOn.Name = "LevitateOn"
LevitateOn.Parent = Animations
LevitateOn.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
LevitateOn.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
LevitateOn.Position = UDim2.new(0.0286500659, 0, 0.609710157, 0)
LevitateOn.Size = UDim2.new(0, 140, 0, 25)
LevitateOn.Font = Enum.Font.SourceSans
LevitateOn.FontSize = Enum.FontSize.Size14
LevitateOn.Text = "Levitate On"
LevitateOn.TextScaled = true
LevitateOn.TextSize = 14
LevitateOn.TextWrapped = true

Dance.Name = "Dance"
Dance.Parent = Animations
Dance.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Dance.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Dance.Position = UDim2.new(0.54435122, 0, 0.609710157, 0)
Dance.Size = UDim2.new(0, 140, 0, 25)
Dance.Font = Enum.Font.SourceSans
Dance.FontSize = Enum.FontSize.Size14
Dance.Text = "Dance"
Dance.TextScaled = true
Dance.TextSize = 14
Dance.TextWrapped = true

ExperimentalAnimation.Name = "ExperimentalAnimation"
ExperimentalAnimation.Parent = Animations
ExperimentalAnimation.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
ExperimentalAnimation.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
ExperimentalAnimation.Position = UDim2.new(0.54435122, 0, 0.783913076, 0)
ExperimentalAnimation.Size = UDim2.new(0, 140, 0, 25)
ExperimentalAnimation.Font = Enum.Font.SourceSans
ExperimentalAnimation.FontSize = Enum.FontSize.Size14
ExperimentalAnimation.Text = "Experimental Animation"
ExperimentalAnimation.TextScaled = true
ExperimentalAnimation.TextSize = 14
ExperimentalAnimation.TextWrapped = true

Carpet.Name = "Carpet"
Carpet.Parent = Animations
Carpet.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Carpet.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Carpet.Position = UDim2.new(0.0286500659, 0, 0.783913076, 0)
Carpet.Size = UDim2.new(0, 140, 0, 25)
Carpet.Font = Enum.Font.SourceSans
Carpet.FontSize = Enum.FontSize.Size14
Carpet.Text = "Carpet"
Carpet.TextScaled = true
Carpet.TextSize = 14
Carpet.TextWrapped = true

Extra.Name = "Extra"
Extra.Parent = Sections
Extra.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Extra.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Extra.BorderSizePixel = 2
Extra.Size = UDim2.new(0, 350, 0, 230)
Extra.Visible = false

EXTRAGUIDE.Name = "EXTRAGUIDE"
EXTRAGUIDE.Parent = Extra
EXTRAGUIDE.BackgroundColor3 = Color3.new(1, 1, 1)
EXTRAGUIDE.BackgroundTransparency = 1
EXTRAGUIDE.Position = UDim2.new(0.0286500659, 0, 0.0435507223, 0)
EXTRAGUIDE.Size = UDim2.new(0, 332, 0, 35)
EXTRAGUIDE.Font = Enum.Font.ArialBold
EXTRAGUIDE.FontSize = Enum.FontSize.Size14
EXTRAGUIDE.Text = "Extra commands for yourself."
EXTRAGUIDE.TextScaled = true
EXTRAGUIDE.TextSize = 14
EXTRAGUIDE.TextStrokeColor3 = Color3.new(1, 0.658824, 0.0666667)
EXTRAGUIDE.TextStrokeTransparency = 0
EXTRAGUIDE.TextWrapped = true

Sit.Name = "Sit"
Sit.Parent = Extra
Sit.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Sit.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Sit.Position = UDim2.new(0.0286500659, 0, 0.261304349, 0)
Sit.Size = UDim2.new(0, 140, 0, 25)
Sit.Font = Enum.Font.SourceSans
Sit.FontSize = Enum.FontSize.Size14
Sit.Text = "Sit"
Sit.TextScaled = true
Sit.TextSize = 14
Sit.TextWrapped = true

Jump.Name = "Jump"
Jump.Parent = Extra
Jump.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Jump.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Jump.Position = UDim2.new(0.54435122, 0, 0.261304349, 0)
Jump.Size = UDim2.new(0, 140, 0, 25)
Jump.Font = Enum.Font.SourceSans
Jump.FontSize = Enum.FontSize.Size14
Jump.Text = "Jump"
Jump.TextScaled = true
Jump.TextSize = 14
Jump.TextWrapped = true

PlatformStand.Name = "PlatformStand"
PlatformStand.Parent = Extra
PlatformStand.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
PlatformStand.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
PlatformStand.Position = UDim2.new(0.54435122, 0, 0.435507238, 0)
PlatformStand.Size = UDim2.new(0, 140, 0, 25)
PlatformStand.Font = Enum.Font.SourceSans
PlatformStand.FontSize = Enum.FontSize.Size14
PlatformStand.Text = "Platform Stand"
PlatformStand.TextScaled = true
PlatformStand.TextSize = 14
PlatformStand.TextWrapped = true

Freeze.Name = "Freeze"
Freeze.Parent = Extra
Freeze.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Freeze.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Freeze.Position = UDim2.new(0.0286500659, 0, 0.435507238, 0)
Freeze.Size = UDim2.new(0, 140, 0, 25)
Freeze.Font = Enum.Font.SourceSans
Freeze.FontSize = Enum.FontSize.Size14
Freeze.Text = "Freeze"
Freeze.TextScaled = true
Freeze.TextSize = 14
Freeze.TextWrapped = true

Insane.Name = "Insane"
Insane.Parent = Extra
Insane.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Insane.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Insane.Position = UDim2.new(0.0286500659, 0, 0.609710157, 0)
Insane.Size = UDim2.new(0, 140, 0, 25)
Insane.Font = Enum.Font.SourceSans
Insane.FontSize = Enum.FontSize.Size14
Insane.Text = "Insane"
Insane.TextScaled = true
Insane.TextSize = 14
Insane.TextWrapped = true

TPVoid.Name = "TPVoid"
TPVoid.Parent = Extra
TPVoid.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
TPVoid.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
TPVoid.Position = UDim2.new(0.54435122, 0, 0.609710157, 0)
TPVoid.Size = UDim2.new(0, 140, 0, 25)
TPVoid.Font = Enum.Font.SourceSans
TPVoid.FontSize = Enum.FontSize.Size14
TPVoid.Text = "TP Void"
TPVoid.TextScaled = true
TPVoid.TextSize = 14
TPVoid.TextWrapped = true

Unknown.Name = "Unknown"
Unknown.Parent = Extra
Unknown.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Unknown.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Unknown.Position = UDim2.new(0.54435122, 0, 0.783913076, 0)
Unknown.Size = UDim2.new(0, 140, 0, 25)
Unknown.Font = Enum.Font.SourceSans
Unknown.FontSize = Enum.FontSize.Size14
Unknown.Text = "Unknown"
Unknown.TextScaled = true
Unknown.TextSize = 14
Unknown.TextWrapped = true

Reset.Name = "Reset"
Reset.Parent = Extra
Reset.BackgroundColor3 = Color3.new(0.854902, 0.854902, 0.854902)
Reset.BorderColor3 = Color3.new(0.941177, 0.701961, 0.133333)
Reset.Position = UDim2.new(0.0286500659, 0, 0.783913076, 0)
Reset.Size = UDim2.new(0, 140, 0, 25)
Reset.Font = Enum.Font.SourceSans
Reset.FontSize = Enum.FontSize.Size14
Reset.Text = "Reset"
Reset.TextScaled = true
Reset.TextSize = 14
Reset.TextWrapped = true

SelectTabs.Name = "SelectTabs"
SelectTabs.Parent = MainFrame
SelectTabs.BackgroundColor3 = Color3.new(0.435294, 0.435294, 0.435294)
SelectTabs.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
SelectTabs.BorderSizePixel = 2
SelectTabs.Position = UDim2.new(-0.286500663, 0, 0.148395061, 0)
SelectTabs.Size = UDim2.new(0, 98, 0, 230)
SelectTabs.CanvasSize = UDim2.new(0, 0, 1.20000005, 0)

RocketPropulsionTAB.Name = "RocketPropulsionTAB"
RocketPropulsionTAB.Parent = SelectTabs
RocketPropulsionTAB.BackgroundColor3 = Color3.new(1, 1, 1)
RocketPropulsionTAB.BackgroundTransparency = 1
RocketPropulsionTAB.Position = UDim2.new(0, 0, 0.00999999978, 0)
RocketPropulsionTAB.Size = UDim2.new(0, 82, 0, 40)
RocketPropulsionTAB.Font = Enum.Font.SourceSansLight
RocketPropulsionTAB.FontSize = Enum.FontSize.Size18
RocketPropulsionTAB.Text = "Rocket Propulsion"
RocketPropulsionTAB.TextSize = 18
RocketPropulsionTAB.TextWrapped = true

TeleportationTAB.Name = "TeleportationTAB"
TeleportationTAB.Parent = SelectTabs
TeleportationTAB.BackgroundColor3 = Color3.new(1, 1, 1)
TeleportationTAB.BackgroundTransparency = 1
TeleportationTAB.Position = UDim2.new(0, 0, 0.150000006, 0)
TeleportationTAB.Size = UDim2.new(0, 82, 0, 40)
TeleportationTAB.Font = Enum.Font.SourceSansLight
TeleportationTAB.FontSize = Enum.FontSize.Size18
TeleportationTAB.Text = "Teleportation"
TeleportationTAB.TextSize = 17
TeleportationTAB.TextWrapped = true

ToolsTAB.Name = "ToolsTAB"
ToolsTAB.Parent = SelectTabs
ToolsTAB.BackgroundColor3 = Color3.new(1, 1, 1)
ToolsTAB.BackgroundTransparency = 1
ToolsTAB.Position = UDim2.new(0, 0, 0.289999992, 0)
ToolsTAB.Size = UDim2.new(0, 82, 0, 40)
ToolsTAB.Font = Enum.Font.SourceSansLight
ToolsTAB.FontSize = Enum.FontSize.Size24
ToolsTAB.Text = "Tools"
ToolsTAB.TextSize = 20
ToolsTAB.TextWrapped = true

AnimationsTAB.Name = "AnimationsTAB"
AnimationsTAB.Parent = SelectTabs
AnimationsTAB.BackgroundColor3 = Color3.new(1, 1, 1)
AnimationsTAB.BackgroundTransparency = 1
AnimationsTAB.Position = UDim2.new(0, 0, 0.569999993, 0)
AnimationsTAB.Size = UDim2.new(0, 82, 0, 40)
AnimationsTAB.Font = Enum.Font.SourceSansLight
AnimationsTAB.FontSize = Enum.FontSize.Size24
AnimationsTAB.Text = "Animations"
AnimationsTAB.TextSize = 20
AnimationsTAB.TextWrapped = true

BasicTAB.Name = "BasicTAB"
BasicTAB.Parent = SelectTabs
BasicTAB.BackgroundColor3 = Color3.new(1, 1, 1)
BasicTAB.BackgroundTransparency = 1
BasicTAB.Position = UDim2.new(0, 0, 0.430000007, 0)
BasicTAB.Size = UDim2.new(0, 82, 0, 40)
BasicTAB.Font = Enum.Font.SourceSansLight
BasicTAB.FontSize = Enum.FontSize.Size24
BasicTAB.Text = "Basic"
BasicTAB.TextSize = 20
BasicTAB.TextWrapped = true

Local_PlayerTAB.Name = "Local_PlayerTAB"
Local_PlayerTAB.Parent = SelectTabs
Local_PlayerTAB.BackgroundColor3 = Color3.new(1, 1, 1)
Local_PlayerTAB.BackgroundTransparency = 1
Local_PlayerTAB.Position = UDim2.new(0, 0, 0.709999979, 0)
Local_PlayerTAB.Size = UDim2.new(0, 82, 0, 40)
Local_PlayerTAB.Font = Enum.Font.SourceSansLight
Local_PlayerTAB.FontSize = Enum.FontSize.Size24
Local_PlayerTAB.Text = "Local Player"
Local_PlayerTAB.TextSize = 20
Local_PlayerTAB.TextWrapped = true

ExtraTAB.Name = "ExtraTAB"
ExtraTAB.Parent = SelectTabs
ExtraTAB.BackgroundColor3 = Color3.new(1, 1, 1)
ExtraTAB.BackgroundTransparency = 1
ExtraTAB.Position = UDim2.new(0, 0, 0.850000024, 0)
ExtraTAB.Size = UDim2.new(0, 82, 0, 40)
ExtraTAB.Font = Enum.Font.SourceSansLight
ExtraTAB.FontSize = Enum.FontSize.Size24
ExtraTAB.Text = "Extra"
ExtraTAB.TextSize = 20
ExtraTAB.TextWrapped = true

SideFrame.Name = "SideFrame"
SideFrame.Parent = HyperTotal
SideFrame.Active = true
SideFrame.BackgroundColor3 = Color3.new(1, 1, 1)
SideFrame.BackgroundTransparency = 1
SideFrame.Draggable = true
SideFrame.Position = UDim2.new(0.349, 0, 0.25, 0)
SideFrame.Size = UDim2.new(0, 350, 0, 40)
SideFrame.Visible = false

SideTopFrame.Name = "SideTopFrame"
SideTopFrame.Parent = SideFrame
SideTopFrame.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
SideTopFrame.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
SideTopFrame.BorderSizePixel = 2
SideTopFrame.Position = UDim2.new(-0.287, 0, 0, 0)
SideTopFrame.Size = UDim2.new(0, 450, 0, 270)
SideTopFrame.ZIndex = 9

SideTitle.Name = "SideTitle"
SideTitle.Parent = SideTopFrame
SideTitle.BackgroundColor3 = Color3.new(1, 1, 1)
SideTitle.BackgroundTransparency = 1
SideTitle.Position = UDim2.new(0.356534153, 0, 0, 0)
SideTitle.Size = UDim2.new(0, 150, 0, 40)
SideTitle.ZIndex = 10
SideTitle.Font = Enum.Font.SourceSansItalic
SideTitle.FontSize = Enum.FontSize.Size36
SideTitle.Text = "HyperTotal"
SideTitle.TextColor3 = Color3.new(0.933333, 0.670588, 0.0509804)
SideTitle.TextSize = 35
SideTitle.TextWrapped = true

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = SideTopFrame
OpenGUI.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGUI.BackgroundTransparency = 1
OpenGUI.Position = UDim2.new(0.913618803, 0, 0, 0)
OpenGUI.Size = UDim2.new(0, 40, 0, 40)
OpenGUI.ZIndex = 10
OpenGUI.Font = Enum.Font.SourceSansBold
OpenGUI.FontSize = Enum.FontSize.Size60
OpenGUI.Text = "X"
OpenGUI.TextColor3 = Color3.new(1, 0.631373, 0.109804)
OpenGUI.TextSize = 50
OpenGUI.TextWrapped = true

SideCreditTXT.Name = "SideCreditTXT"
SideCreditTXT.Parent = SideTopFrame
SideCreditTXT.BackgroundColor3 = Color3.new(1, 1, 1)
SideCreditTXT.BackgroundTransparency = 1
SideCreditTXT.Position = UDim2.new(0.690784931, 0, 0.250416666, 0)
SideCreditTXT.Rotation = -17
SideCreditTXT.Size = UDim2.new(0, 90, 0, 20)
SideCreditTXT.ZIndex = 10
SideCreditTXT.Font = Enum.Font.SourceSansItalic
SideCreditTXT.FontSize = Enum.FontSize.Size24
SideCreditTXT.Text = "illremember"
SideCreditTXT.TextColor3 = Color3.new(0.933333, 0.819608, 0.737255)
SideCreditTXT.TextSize = 20
SideCreditTXT.TextWrapped = true

BrickFrame.Name = "BrickFrame"
BrickFrame.Parent = MainFrame
BrickFrame.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
BrickFrame.BorderColor3 = Color3.new(0.121569, 0.121569, 0.121569)
BrickFrame.BorderSizePixel = 0
BrickFrame.Position = UDim2.new(0, 0, 0.148395061, 0)
BrickFrame.Size = UDim2.new(0, 0, 0, 230)
BrickFrame.ZIndex = 4

-- Buttons

col = Color3.new(0.854902, 0.854902, 0.854902)
loc = Color3.new(0.65, 0.90, 0.65)

wait(1)
MainFrame:TweenPosition(UDim2.new(0.348623842, 0, 0.25, 0), "Out", "Bounce", 2)

if game.Workspace.FilteringEnabled == false then
	FE_CHECK.Text = "FE is disabled"
	FE_CHECK.TextColor3 = Color3.fromRGB(200,10,10)
else
	FE_CHECK.Text = "FE is enabled"
	FE_CHECK.TextColor3 = Color3.fromRGB(10,200,10)
end

CloseGUI.MouseButton1Click:connect(function()
CloseGUI.Visible = false
EnterUsername.Visible = false
TopFrame:TweenSize(UDim2.new(0, 450, 0, 270), "Out", "Sine", 1)
wait(1)
SideFrame.Position = MainFrame.Position
MainFrame.Visible = false
SideFrame.Visible = true
SideTopFrame:TweenSize(UDim2.new(0, 450, 0, 40), "Out", "Sine", 1)
OpenGUI.Visible = false
wait(1)
OpenGUI.Visible = true
end)

OpenGUI.MouseButton1Click:connect(function()
OpenGUI.Visible = false
SideTopFrame:TweenSize(UDim2.new(0, 450, 0, 270), "Out", "Sine", 1)
wait(1)
MainFrame.Position = SideFrame.Position
SideFrame.Visible = false
MainFrame.Visible = true
CloseGUI.Visible = false
TopFrame:TweenSize(UDim2.new(0, 450, 0, 40), "Out", "Sine", 1)
wait(1)
EnterUsername.Visible = true
CloseGUI.Visible = true
end)

AnimationsTAB.MouseButton1Click:connect(function()
	BrickFrame:TweenSize(UDim2.new(0, 350, 0, 230), "Out", "Sine", 0.5)
	wait(0.5)
	Animations.Visible = true
	Basic.Visible = false
	Extra.Visible = false
	INTRO.Visible = false
	Local_Player.Visible = false
	RocketPropulsion.Visible = false
	Teleportation.Visible = false
	Tools.Visible = false
	AnimationsTAB.Font = "SourceSansBold"
	BasicTAB.Font = "SourceSansLight"
	ExtraTAB.Font = "SourceSansLight"
	Local_PlayerTAB.Font = "SourceSansLight"
	RocketPropulsionTAB.Font = "SourceSansLight"
	TeleportationTAB.Font = "SourceSansLight"
	ToolsTAB.Font = "SourceSansLight"
	AnimationsTAB.TextSize = 17
	TeleportationTAB.TextSize = 17
	BrickFrame:TweenSize(UDim2.new(0, 0, 0, 230), "Out", "Sine", 0.5)
end)

BasicTAB.MouseButton1Click:connect(function()
	BrickFrame:TweenSize(UDim2.new(0, 350, 0, 230), "Out", "Sine", 0.5)
	wait(0.5)
	Animations.Visible = false
	Basic.Visible = true
	Extra.Visible = false
	INTRO.Visible = false
	Local_Player.Visible = false
	RocketPropulsion.Visible = false
	Teleportation.Visible = false
	Tools.Visible = false
	AnimationsTAB.Font = "SourceSansLight"
	BasicTAB.Font = "SourceSansBold"
	ExtraTAB.Font = "SourceSansLight"
	Local_PlayerTAB.Font = "SourceSansLight"
	RocketPropulsionTAB.Font = "SourceSansLight"
	TeleportationTAB.Font = "SourceSansLight"
	ToolsTAB.Font = "SourceSansLight"
	AnimationsTAB.TextSize = 20
	TeleportationTAB.TextSize = 17
	BrickFrame:TweenSize(UDim2.new(0, 0, 0, 230), "Out", "Sine", 0.5)
end)

ExtraTAB.MouseButton1Click:connect(function()
	BrickFrame:TweenSize(UDim2.new(0, 350, 0, 230), "Out", "Sine", 0.5)
	wait(0.5)
	Animations.Visible = false
	Basic.Visible = false
	Extra.Visible = true
	INTRO.Visible = false
	Local_Player.Visible = false
	RocketPropulsion.Visible = false
	Teleportation.Visible = false
	Tools.Visible = false
	AnimationsTAB.Font = "SourceSansLight"
	BasicTAB.Font = "SourceSansLight"
	ExtraTAB.Font = "SourceSansBold"
	Local_PlayerTAB.Font = "SourceSansLight"
	RocketPropulsionTAB.Font = "SourceSansLight"
	TeleportationTAB.Font = "SourceSansLight"
	ToolsTAB.Font = "SourceSansLight"
	AnimationsTAB.TextSize = 20
	TeleportationTAB.TextSize = 17
	BrickFrame:TweenSize(UDim2.new(0, 0, 0, 230), "Out", "Sine", 0.5)
end)

Local_PlayerTAB.MouseButton1Click:connect(function()
	BrickFrame:TweenSize(UDim2.new(0, 350, 0, 230), "Out", "Sine", 0.5)
	wait(0.5)
	Animations.Visible = false
	Basic.Visible = false
	Extra.Visible = false
	INTRO.Visible = false
	Local_Player.Visible = true
	RocketPropulsion.Visible = false
	Teleportation.Visible = false
	Tools.Visible = false
	AnimationsTAB.Font = "SourceSansLight"
	BasicTAB.Font = "SourceSansLight"
	ExtraTAB.Font = "SourceSansLight"
	Local_PlayerTAB.Font = "SourceSansBold"
	RocketPropulsionTAB.Font = "SourceSansLight"
	TeleportationTAB.Font = "SourceSansLight"
	ToolsTAB.Font = "SourceSansLight"
	AnimationsTAB.TextSize = 20
	TeleportationTAB.TextSize = 17
	BrickFrame:TweenSize(UDim2.new(0, 0, 0, 230), "Out", "Sine", 0.5)
end)

RocketPropulsionTAB.MouseButton1Click:connect(function()
	BrickFrame:TweenSize(UDim2.new(0, 350, 0, 230), "Out", "Sine", 0.5)
	wait(0.5)
	Animations.Visible = false
	Basic.Visible = false
	Extra.Visible = false
	INTRO.Visible = false
	Local_Player.Visible = false
	RocketPropulsion.Visible = true
	Teleportation.Visible = false
	Tools.Visible = false
	AnimationsTAB.Font = "SourceSansLight"
	BasicTAB.Font = "SourceSansLight"
	ExtraTAB.Font = "SourceSansLight"
	Local_PlayerTAB.Font = "SourceSansLight"
	RocketPropulsionTAB.Font = "SourceSansBold"
	TeleportationTAB.Font = "SourceSansLight"
	ToolsTAB.Font = "SourceSansLight"
	AnimationsTAB.TextSize = 20
	TeleportationTAB.TextSize = 17
	BrickFrame:TweenSize(UDim2.new(0, 0, 0, 230), "Out", "Sine", 0.5)
end)

TeleportationTAB.MouseButton1Click:connect(function()
	BrickFrame:TweenSize(UDim2.new(0, 350, 0, 230), "Out", "Sine", 0.5)
	wait(0.5)
	Animations.Visible = false
	Basic.Visible = false
	Extra.Visible = false
	INTRO.Visible = false
	Local_Player.Visible = false
	RocketPropulsion.Visible = false
	Teleportation.Visible = true
	Tools.Visible = false
	AnimationsTAB.Font = "SourceSansLight"
	BasicTAB.Font = "SourceSansLight"
	ExtraTAB.Font = "SourceSansLight"
	Local_PlayerTAB.Font = "SourceSansLight"
	RocketPropulsionTAB.Font = "SourceSansLight"
	TeleportationTAB.Font = "SourceSansBold"
	ToolsTAB.Font = "SourceSansLight"
	AnimationsTAB.TextSize = 20
	TeleportationTAB.TextSize = 15
	BrickFrame:TweenSize(UDim2.new(0, 0, 0, 230), "Out", "Sine", 0.5)
end)

ToolsTAB.MouseButton1Click:connect(function()
	BrickFrame:TweenSize(UDim2.new(0, 350, 0, 230), "Out", "Sine", 0.5)
	wait(0.5)
	Animations.Visible = false
	Basic.Visible = false
	Extra.Visible = false
	INTRO.Visible = false
	Local_Player.Visible = false
	RocketPropulsion.Visible = false
	Teleportation.Visible = false
	Tools.Visible = true
	AnimationsTAB.Font = "SourceSansLight"
	BasicTAB.Font = "SourceSansLight"
	ExtraTAB.Font = "SourceSansLight"
	Local_PlayerTAB.Font = "SourceSansLight"
	RocketPropulsionTAB.Font = "SourceSansLight"
	TeleportationTAB.Font = "SourceSansLight"
	ToolsTAB.Font = "SourceSansBold"
	AnimationsTAB.TextSize = 20
	TeleportationTAB.TextSize = 17
	BrickFrame:TweenSize(UDim2.new(0, 0, 0, 230), "Out", "Sine", 0.5)
end)

------ ANIMATIONS -------------------------------------------------------------------------
------ ANIMATIONS -------------------------------------------------------------------------
------ ANIMATIONS -------------------------------------------------------------------------
------ ANIMATIONS -------------------------------------------------------------------------

function GetPlayer(String) -- Credit to Timeless/xFunnieuss
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game.Players:GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                table.insert(Found,v)
            end
        end    
    else
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end

AnimationId = "148840371"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
_18active = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    _18active = false
end)
_18.MouseButton1Click:connect(function()
	_18active = not _18active
	if _18active then
		_18.BackgroundColor3 = loc
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			track:Play()
			game:GetService('RunService').Stepped:connect(function()
				if _18active then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				end
			end)
		end
	else
		track:Stop()
		_18.BackgroundColor3 = col
	end
end)

AnimationId = "282574440"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
CarpetActive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    CarpetActive = false
end)
Carpet.MouseButton1Click:connect(function()
	CarpetActive = not CarpetActive
	if CarpetActive then
		Carpet.BackgroundColor3 = loc
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			track:Play()
			game:GetService('RunService').Stepped:connect(function()
				if CarpetActive then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				end
			end)
		end
	else
		track:Stop()
		Carpet.BackgroundColor3 = col
	end
end)

AnimationId = "215384594"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
ExperimentalAnimationActive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    ExperimentalAnimationActive = false
end)
ExperimentalAnimation.MouseButton1Click:connect(function()
	ExperimentalAnimationActive = not ExperimentalAnimationActive
	if ExperimentalAnimationActive then
		ExperimentalAnimation.BackgroundColor3 = loc
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			track:Play(0.1, 1, 5)
			game:GetService('RunService').Stepped:connect(function()
				if ExperimentalAnimationActive then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				end
			end)
		end
	else
		track:Stop()
		ExperimentalAnimation.BackgroundColor3 = col
	end
end)

AnimationId = "429703734"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
DanceActive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    DanceActive = false
end)
Dance.MouseButton1Click:connect(function()
	DanceActive = not DanceActive
	if DanceActive then
		Dance.BackgroundColor3 = loc
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			track:Play()
			game:GetService('RunService').Stepped:connect(function()
				if DanceActive then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				end
			end)
		end
	else
		track:Stop()
		Dance.BackgroundColor3 = col
	end
end)

AnimationId = "282574440"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
HideActive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    HideActive = false
end)
Hide.MouseButton1Click:connect(function()
	HideActive = not HideActive
	if HideActive then
		Hide.BackgroundColor3 = loc
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			track:Play()
			game:GetService('RunService').Stepped:connect(function()
				if HideActive then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.Head.CFrame
				end
			end)
		end
	else
		track:Stop()
		Hide.BackgroundColor3 = col
	end
end)

AnimationId = "313762630"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
LevitateOnActive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    LevitateOnActive = false
end)
LevitateOn.MouseButton1Click:connect(function()
	LevitateOnActive = not LevitateOnActive
	if LevitateOnActive then
		LevitateOn.BackgroundColor3 = loc
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			track:Play()
			game:GetService('RunService').Stepped:connect(function()
				if LevitateOnActive then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				end
			end)
		end
	else
		track:Stop()
		LevitateOn.BackgroundColor3 = col
	end
end)

AnimationId = "215384594"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
PushLockActive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    PushLockActive = false
end)
PushLock.MouseButton1Click:connect(function()
	PushLockActive = not PushLockActive
	if PushLockActive then
		PushLock.BackgroundColor3 = loc
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			track:Play()
			game:GetService('RunService').Stepped:connect(function()
				if PushLockActive then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				end
			end)
		end
	else
		track:Stop()
		PushLock.BackgroundColor3 = col
	end
end)

AnimationId = "184574340"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
SlamOnActive = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    SlamOnActive = false
end)
SlamOn.MouseButton1Click:connect(function()
	SlamOnActive = not SlamOnActive
	if SlamOnActive then
		SlamOn.BackgroundColor3 = loc
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			track:Play()
			game:GetService('RunService').Stepped:connect(function()
				if SlamOnActive then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				end
			end)
		end
	else
		track:Stop()
		SlamOn.BackgroundColor3 = col
	end
end)

------ BASIC -------------------------------------------------------------------------
------ BASIC -------------------------------------------------------------------------
------ BASIC -------------------------------------------------------------------------
------ BASIC -------------------------------------------------------------------------

HipHeight.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = STATCHANGE.Text
end)
JumpHeight.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = STATCHANGE.Text
end)
Speed.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = STATCHANGE.Text
end)
Chat.MouseButton1Click:connect(function()
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(CHATBOX.Text, "All")
end)
keepspam = false
Spam.MouseButton1Click:connect(function()
	keepspam = not keepspam
	if keepspam then
		Spam.BackgroundColor3 = loc
	else
		Spam.BackgroundColor3 = col
	end
	while wait(0.5) do
		if keepspam then
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(CHATBOX.Text, "All")
		end
	end
end)
clip = true
Noclip.MouseButton1Click:connect(function()
	clip = not clip
	game:GetService('RunService').Stepped:connect(function()
		if not clip then
			Noclip.BackgroundColor3 = loc
			game.Players.LocalPlayer.Character.Head.CanCollide = false
			game.Players.LocalPlayer.Character.Torso.CanCollide = false
			game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
			game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
		else
			Noclip.BackgroundColor3 = col
		end
	end)
end)
local flying = false
Fly.MouseButton1Click:connect(function()
flying = not flying
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 70
local speed = 0
if flying then
	Fly.BackgroundColor3 = loc
else
	Fly.BackgroundColor3 = col
end
 
function FlyFunction()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
FlyFunction()
end)

------ EXTRA -------------------------------------------------------------------------
------ EXTRA -------------------------------------------------------------------------
------ EXTRA -------------------------------------------------------------------------
------ EXTRA -------------------------------------------------------------------------

frost = false
Freeze.MouseButton1Click:connect(function()
	frost = not frost
	if frost then
		game.Players.LocalPlayer.Character.Torso.Anchored = true
		game.Players.LocalPlayer.Character.Head.Anchored = true
		game.Players.LocalPlayer.Character["Left Leg"].Anchored = true
		game.Players.LocalPlayer.Character["Left Arm"].Anchored = true
		game.Players.LocalPlayer.Character["Right Leg"].Anchored = true
		game.Players.LocalPlayer.Character["Right Arm"].Anchored = true
		Freeze.BackgroundColor3 = loc
	else
		game.Players.LocalPlayer.Character.Torso.Anchored = false
		game.Players.LocalPlayer.Character.Head.Anchored = false
		game.Players.LocalPlayer.Character["Left Leg"].Anchored = false
		game.Players.LocalPlayer.Character["Left Arm"].Anchored = false
		game.Players.LocalPlayer.Character["Right Leg"].Anchored = false
		game.Players.LocalPlayer.Character["Right Arm"].Anchored = false
		Freeze.BackgroundColor3 = col
	end
end)
insanity = false
local Anim = Instance.new("Animation")
AnimationId = "33796059"
Anim.AnimationId = "rbxassetid://"..AnimationId
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    insanity = false
end)
Insane.MouseButton1Down:connect(function()
	insanity = not insanity
	if insanity then
		track:Play(0.1, 1, 999)
		Insane.BackgroundColor3 = loc
	else
		track:Stop()
		Insane.BackgroundColor3 = col
	end
end)
Sit.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Sit = true
end)
Jump.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)
platform = false
PlatformStand.MouseButton1Click:connect(function()
	platform = not platform
	if platform then
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
		PlatformStand.BackgroundColor3 = loc
	else
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		PlatformStand.BackgroundColor3 = col
	end
end)
TPVoid.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(math.huge, math.huge, math.huge)
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204295235"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
question = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    question = false
end)
Unknown.MouseButton1Click:connect(function()
	question = not question
	if question then
		Unknown.BackgroundColor3 = loc
		while wait do
			if track.IsPlaying == false then
				if question then
					track:Play(0.1, 1, 1e5)
				end
			end
		end
	else
		Unknown.BackgroundColor3 = col
		track:Stop()
	end
end)

Reset.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Head:Destroy()
end)

------ LOCALPLAYER -------------------------------------------------------------------------
------ LOCALPLAYER -------------------------------------------------------------------------
------ LOCALPLAYER -------------------------------------------------------------------------
------ LOCALPLAYER -------------------------------------------------------------------------

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://215384594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CloneIllusionACTIVE = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    CloneIllusionACTIVE = false
end)
CloneIllusion.MouseButton1Click:connect(function()
	CloneIllusionACTIVE = not CloneIllusionACTIVE
	if CloneIllusionACTIVE then
		track:Play(.5, 1, 1e7)
		CloneIllusion.BackgroundColor3 = loc
	else
		track:Stop()
		CloneIllusion.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204328711"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local DinoWalkACTIVE = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    DinoWalkACTIVE = false
end)
Dinosaur.MouseButton1Click:connect(function()
	DinoWalkACTIVE = not DinoWalkACTIVE
	if DinoWalkACTIVE then
		track:Play(.1, 1, 1)
		Dinosaur.BackgroundColor3 = loc
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
		game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 200
	else
		track:Stop()
		Dinosaur.BackgroundColor3 = col
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 50
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://313762630"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local GlitchLevitateACTIVE = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    GlitchLevitateACTIVE = false
end)
Glitchy.MouseButton1Click:connect(function()
	GlitchLevitateACTIVE = not GlitchLevitateACTIVE
	if GlitchLevitateACTIVE then
		track:Play(.5, 1, 1e7)
		Glitchy.BackgroundColor3 = loc
	else
		track:Stop()
		Glitchy.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://313762630"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LevitateACTIVE = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    LevitateACTIVE = false
end)
Levitate.MouseButton1Click:connect(function()
	LevitateACTIVE = not LevitateACTIVE
	if LevitateACTIVE then
		track:Play(.1, 1, 1)
		Levitate.BackgroundColor3 = loc
	else
		track:Stop()
		Levitate.BackgroundColor3 = col
	end
end)

NoLimbs.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character["Left Leg"]:Destroy()
	game.Players.LocalPlayer.Character["Left Arm"]:Destroy()
	game.Players.LocalPlayer.Character["Right Leg"]:Destroy()
	game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://180612465"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ScaredACTIVE = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
    ScaredACTIVE = false
end)
CrouchRocket.MouseButton1Click:connect(function()
	ScaredACTIVE = not ScaredACTIVE
	if ScaredACTIVE then
		local u = Instance.new("RocketPropulsion")
		u.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		u.Name = "CrouchRocket"
		u.Target = game.Players.LocalPlayer.Character.Head
		u:Fire()
		CrouchRocket.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if ScaredACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		CrouchRocket.BackgroundColor3 = col
		game.Players.LocalPlayer.Character.HumanoidRootPart.CrouchRocket:Destroy()
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://313762630"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local Anim2 = Instance.new("Animation")
Anim2.AnimationId = "rbxassetid://35154961"
local track2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim2)
local Anim3 = Instance.new("Animation")
Anim3.AnimationId = "rbxassetid://33169583"
local track3 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim3)
haunting = false
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    track = character:WaitForChild("Humanoid"):LoadAnimation(Anim)
	track2 = character:WaitForChild("Humanoid"):LoadAnimation(Anim2)
	track3 = character:WaitForChild("Humanoid"):LoadAnimation(Anim3)
    haunting = false
end)
Haunted.MouseButton1Click:connect(function()
	haunting = not haunting
	if haunting then
		while true do
			if track3.IsPlaying == false then
				if haunting then
					track:Play()
					track2:Play(0.1,1,1000)
					track3:Play(0.1,1,1000)
				end
			end
		end
	else
		track:Stop()
		track2:Stop()
		track3:Stop()
	end
end)

spinning = false
CrazySpin.MouseButton1Click:connect(function()
	spinning = not spinning
	if spinning then
		local p = Instance.new("RocketPropulsion")
		p.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		p.Name = "CrazySpin"
		p.Target = game.Players.LocalPlayer.Character["Left Arm"]
		p:Fire()
		CrazySpin.BackgroundColor3 = loc
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.CrazySpin:Destroy()
		CrazySpin.BackgroundColor3 = col
	end
end)

------ ROCKETPROPULSION -------------------------------------------------------------------------
------ ROCKETPROPULSION -------------------------------------------------------------------------
------ ROCKETPROPULSION -------------------------------------------------------------------------
------ ROCKETPROPULSION -------------------------------------------------------------------------

floating = false
Float.MouseButton1Click:connect(function()
	floating = not floating
	if floating then
		Float.BackgroundColor3 = loc
		local y = Instance.new("RocketPropulsion")
		y.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		y.CartoonFactor = 1
		y.MaxThrust = 50000
		y.MaxSpeed = 1000
		y.ThrustP = 50000
		y.Name = "Float"
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			y.Target = game.Players[v.Name].Character.Head
			y:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if floating then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
			while wait(0.3) do
				if floating then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Left Leg"].CFrame
				end
			end
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Float:Destroy()
		Float.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://282574440"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
flattening = false
Flatten.MouseButton1Click:connect(function()
	flattening = not flattening
	if flattening then
		Flatten.BackgroundColor3 = loc
		local y = Instance.new("RocketPropulsion")
		y.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		y.CartoonFactor = 1
		y.MaxThrust = 50000
		y.MaxSpeed = 1000
		y.ThrustP = 50000
		y.Name = "Flatten"
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			y.Target = game.Players[v.name].Character["Left Leg"]
			y:Fire()
			track:Play(.1, 1, 1)
			game:GetService('RunService').Stepped:connect(function()
				if flattening then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
			while wait(0.3) do
				if flattening then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
				end
			end
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Flatten:Destroy()
		track:Stop()
		Flatten.BackgroundColor3 = col
	end
end)

pushing = false
Push.MouseButton1Click:connect(function()
	pushing = not pushing
	if pushing then
		Push.BackgroundColor3 = loc
		local b = Instance.new("RocketPropulsion")
		b.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		b.TurnP = 2500
		b.MaxThrust = 50000
		b.MaxSpeed = 1000
		b.ThrustP = 50000
		b.CartoonFactor = 1
		b.Name = "Push"
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			b.Target = game.Players[v.Name].Character.HumanoidRootPart
			b:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if pushing then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Push:Destroy()
		Push.BackgroundColor3 = col
	end
end)

SlowAttracting = false
SlowAttract.MouseButton1Click:connect(function()
	SlowAttracting = not SlowAttracting
	if SlowAttracting then
		SlowAttract.BackgroundColor3 = loc
		local b = Instance.new("RocketPropulsion")
		b.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		b.TurnD = 5000
		b.MaxThrust = 5000
		b.MaxSpeed = 200
		b.ThrustP = 5000
		b.CartoonFactor = 1
		b.Name = "SlowAttract"
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			b.Target = game.Players[v.Name].Character.HumanoidRootPart
			b:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if SlowAttracting then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.SlowAttract:Destroy()
		SlowAttract.BackgroundColor3 = col
	end
end)

Maxing = false
Max.MouseButton1Click:connect(function()
	Maxing = not Maxing
	if Maxing then
		Max.BackgroundColor3 = loc
		local t1 = Instance.new("RocketPropulsion")
		t1.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		t1.TurnP = 100000
		t1.MaxThrust = 100000
		t1.MaxSpeed = 5000
		t1.ThrustP = 100000
		t1.CartoonFactor = 1
		t1.Name = "one"
		local t2 = Instance.new("RocketPropulsion")
		t2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		t2.TurnP = 100000
		t2.MaxThrust = 100000
		t2.MaxSpeed = 5000
		t2.ThrustP = 100000
		t2.CartoonFactor = 1
		t2.Name = "two"
		local t3 = Instance.new("RocketPropulsion")
		t3.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		t3.TurnP = 100000
		t3.MaxThrust = 100000
		t3.MaxSpeed = 5000
		t3.ThrustP = 100000
		t3.CartoonFactor = 1
		t3.Name = "three"
		local t4 = Instance.new("RocketPropulsion")
		t4.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		t4.TurnP = 100000
		t4.MaxThrust = 100000
		t4.MaxSpeed = 5000
		t4.ThrustP = 100000
		t4.CartoonFactor = 1
		t4.Name = "four"
		local t5 = Instance.new("RocketPropulsion")
		t5.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		t5.TurnP = 100000
		t5.MaxThrust = 100000
		t5.MaxSpeed = 5000
		t5.ThrustP = 100000
		t5.CartoonFactor = 1
		t5.Name = "five"
		local t6 = Instance.new("RocketPropulsion")
		t6.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		t6.TurnP = 100000
		t6.MaxThrust = 100000
		t6.MaxSpeed = 5000
		t6.ThrustP = 100000
		t6.CartoonFactor = 1
		t6.Name = "six"
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			t1.Target = game.Players[v.Name].Character.Torso
			t1:Fire()
			t2.Target = game.Players[v.Name].Character["Right Leg"]
			t2:Fire()
			t3.Target = game.Players[v.Name].Character["Left Arm"]
			t3:Fire()
			t4.Target = game.Players[v.Name].Character["Left Leg"]
			t4:Fire()
			t5.Target = game.Players[v.Name].Character["Right Arm"]
			t5:Fire()
			t6.Target = game.Players[v.Name].Character.Head
			t6:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if Maxing then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.one:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.two:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.three:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.four:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.five:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.six:Destroy()
		Max.BackgroundColor3 = col
	end
end)

AimHeading = false
AimHead.MouseButton1Click:connect(function()
	AimHeading = not AimHeading
	if AimHeading then
		AimHead.BackgroundColor3 = loc
		local b = Instance.new("RocketPropulsion")
		b.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		b.TurnP = 2500
		b.MaxThrust = 50000
		b.MaxSpeed = 1000
		b.ThrustP = 50000
		b.CartoonFactor = 1
		b.Name = "AimHead"
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			b.Target = game.Players[v.Name].Character.Head
			b:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if AimHeading then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.AimHead:Destroy()
		AimHead.BackgroundColor3 = col
	end
end)

Experimentaling = false
Experimental.MouseButton1Click:connect(function()
	Experimentaling = not Experimentaling
	if Experimentaling then
		Experimental.BackgroundColor3 = loc
		local b = Instance.new("RocketPropulsion")
		b.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		b.TurnP = 15000
		b.MaxThrust = 25000
		b.MaxSpeed = 15000
		b.ThrustP = 10000
		b.CartoonFactor = 1
		b.Name = "Experimental"
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			game.Workspace.CurrentCamera.CameraSubject = game.Players[v.Name].Character.Head
			b.Target = game.Players[v.Name].Character.Torso
			b:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if Experimentaling then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Experimental:Destroy()
		Experimental.BackgroundColor3 = col
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Head
	end
end)

Multipleing = false
Multiple.MouseButton1Click:connect(function()
	Multipleing = not Multipleing
	if Multipleing then
		Multiple.BackgroundColor3 = loc
		local t1 = Instance.new("RocketPropulsion")
		t1.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		t1.TurnP = 30000
		t1.MaxThrust = 30000
		t1.MaxSpeed = 1000
		t1.ThrustP = 30000
		t1.CartoonFactor = 1
		t1.Name = "one"
		local t2 = Instance.new("RocketPropulsion")
		t2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		t2.TurnP = 30000
		t2.MaxThrust = 30000
		t2.MaxSpeed = 1000
		t2.ThrustP = 30000
		t2.CartoonFactor = 1
		t2.Name = "two"
		local t3 = Instance.new("RocketPropulsion")
		t3.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		t3.TurnP = 30000
		t3.MaxThrust = 30000
		t3.MaxSpeed = 1000
		t3.ThrustP = 30000
		t3.CartoonFactor = 1
		t3.Name = "three"
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			t1.Target = game.Players[v.Name].Character.Torso
			t1:Fire()
			t2.Target = game.Players[v.Name].Character["Right Leg"]
			t2:Fire()
			t3.Target = game.Players[v.Name].Character["Left Arm"]
			t3:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if Multipleing then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.one:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.two:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.three:Destroy()
		Multiple.BackgroundColor3 = col
	end
end)

------ TELEPORTATION -------------------------------------------------------------------------
------ TELEPORTATION -------------------------------------------------------------------------
------ TELEPORTATION -------------------------------------------------------------------------
------ TELEPORTATION -------------------------------------------------------------------------

LockOnACTIVE = false
LockOn.MouseButton1Click:connect(function()
	LockOnACTIVE = not LockOnACTIVE
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game:GetService('RunService').Stepped:connect(function()
			if LockOnACTIVE then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				LockOn.BackgroundColor3 = loc
				game:GetService('RunService').Stepped:connect(function()
					if LockOnACTIVE then
						game.Players.LocalPlayer.Character.Head.CanCollide = false
						game.Players.LocalPlayer.Character.Torso.CanCollide = false
						game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
						game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
					end
				end)
			else
				LockOn.BackgroundColor3 = col
			end
		end)
	end
end)

LockLegACTIVE = false
LockLeg.MouseButton1Click:connect(function()
	LockLegACTIVE = not LockLegACTIVE
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game:GetService('RunService').Stepped:connect(function()
			if LockLegACTIVE then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Left Leg"].CFrame
				LockLeg.BackgroundColor3 = loc
				game:GetService('RunService').Stepped:connect(function()
					if LockLegACTIVE then
						game.Players.LocalPlayer.Character.Head.CanCollide = false
						game.Players.LocalPlayer.Character.Torso.CanCollide = false
						game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
						game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
					end
				end)
			else
				LockLeg.BackgroundColor3 = col
			end
		end)
	end
end)

LockArmACTIVE = false
LockArm.MouseButton1Click:connect(function()
	LockArmACTIVE = not LockArmACTIVE
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game:GetService('RunService').Stepped:connect(function()
			if LockArmACTIVE then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Right Arm"].CFrame
				LockArm.BackgroundColor3 = loc
				game:GetService('RunService').Stepped:connect(function()
					if LockArmACTIVE then
						game.Players.LocalPlayer.Character.Head.CanCollide = false
						game.Players.LocalPlayer.Character.Torso.CanCollide = false
						game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
						game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
					end
				end)
			else
				LockArm.BackgroundColor3 = col
			end
		end)
	end
end)

LockHeadACTIVE = false
LockHead.MouseButton1Click:connect(function()
	LockHeadACTIVE = not LockHeadACTIVE
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game:GetService('RunService').Stepped:connect(function()
			if LockHeadACTIVE then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.Head.CFrame
				LockHead.BackgroundColor3 = loc
				game:GetService('RunService').Stepped:connect(function()
					if LockHeadACTIVE then
						game.Players.LocalPlayer.Character.Head.CanCollide = false
						game.Players.LocalPlayer.Character.Torso.CanCollide = false
						game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
						game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
					end
				end)
			else
				LockHead.BackgroundColor3 = col
			end
		end)
	end
end)

LockAboveACTIVE = false
LockAbove.MouseButton1Click:connect(function()
	LockAboveACTIVE = not LockAboveACTIVE
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game:GetService('RunService').Stepped:connect(function()
			if LockAboveACTIVE then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame + Vector3.new(0,4,0)
				LockAbove.BackgroundColor3 = loc
				game:GetService('RunService').Stepped:connect(function()
					if LockAboveACTIVE then
						game.Players.LocalPlayer.Character.Head.CanCollide = false
						game.Players.LocalPlayer.Character.Torso.CanCollide = false
						game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
						game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
					end
				end)
			else
				LockAbove.BackgroundColor3 = col
			end
		end)
	end
end)

LockMaxACTIVE = false
LockMax.MouseButton1Click:connect(function()
	LockMaxACTIVE = not LockMaxACTIVE
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game:GetService('RunService').Stepped:connect(function()
			if LockMaxACTIVE then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.Head.CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Left Leg"].CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Left Arm"].CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Right Leg"].CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Right Arm"].CFrame
				LockMax.BackgroundColor3 = loc
				game:GetService('RunService').Stepped:connect(function()
					if LockMaxACTIVE then
						game.Players.LocalPlayer.Character.Head.CanCollide = false
						game.Players.LocalPlayer.Character.Torso.CanCollide = false
						game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
						game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
					end
				end)
			else
				LockMax.BackgroundColor3 = col
			end
		end)
	end
end)

TrailACTIVE = false
Trail.MouseButton1Click:connect(function()
	TrailACTIVE = not TrailACTIVE
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game:GetService('RunService').Stepped:connect(function()
			if TrailACTIVE then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame + Vector3.new(5,0,0)
				Trail.BackgroundColor3 = loc
				game.Players.LocalPlayer.Character.Head.CanCollide = false
				game.Players.LocalPlayer.Character.Torso.CanCollide = false
				game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
				game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
			else
				Trail.BackgroundColor3 = col
			end
		end)
	end
end)

TeleportTo.MouseButton1Click:connect(function()
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
	end
end)

------ TOOLS -------------------------------------------------------------------------
------ TOOLS -------------------------------------------------------------------------
------ TOOLS -------------------------------------------------------------------------
------ TOOLS -------------------------------------------------------------------------

Attach.MouseButton1Click:connect(function()
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Left Arm"].CFrame
	end
end)

AttachExperimental.MouseButton1Click:connect(function()
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Left Arm"].CFrame
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
	end
end)

Bring.MouseButton1Click:connect(function()
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.6)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
		wait(0.6)
		game.Players.LocalPlayer.Character:MoveTo(game.Players[v.Name].Character.Position)
	end
end)

FreeFall.MouseButton1Click:connect(function()
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.6)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
		wait(0.6)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
	end
end)

GiveTool.MouseButton1Click:connect(function()
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.6)
		game.Players.LocalPlayer.Character:MoveTo(game.Players[v.Name].Character.Position)
	end
end)

KillSurvive.MouseButton1Click:connect(function()
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.4)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(10000, 10000, 10000))
		wait(0.8)
		game.Players.LocalPlayer.Character:MoveTo(game.Players[v.Name].Character.Position)
		wait(0.8)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
	end
end)

Kill.MouseButton1Click:connect(function()
	for i,v in pairs(GetPlayer(EnterUsername.Text))do
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.2)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
		wait(0.4)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(10000, 10000, 10000))
	end
end)

superspinning = false
SuperSpin.MouseButton1Click:connect(function()
	superspinning = not superspinning
	if superspinning then
		SuperSpin.BackgroundColor3 = loc
		for i,v in pairs(GetPlayer(EnterUsername.Text))do
			game.Players.LocalPlayer.Character.Humanoid.Name = 1
			local l = game.Players.LocalPlayer.Character["1"]:Clone()
			l.Parent = game.Players.LocalPlayer.Character
			l.Name = "Humanoid"
			wait(0.1)
			game.Players.LocalPlayer.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			wait(0.1)
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
			for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Left Arm"].CFrame
			wait(1)
			while wait() do
				if superspinning then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				end
			end
		end
	else
		SuperSpin.BackgroundColor3 = col
	end
end)
end

function Freeze()
for i,v in pairs(game.Players:GetChildren()) do
local Target = v.Name
local R_C = Instance.new("BallSocketConstraint")
R_C.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
local hah = Instance.new("Attachment")
hah.Parent = game.Players[Target].Character.HumanoidRootPart
local hah2 = Instance.new("Attachment")
hah2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
R_C.Attachment0 = hah
R_C.Attachment1 = hah2
R_C.Visible = false
wait(0.1)
end
end

function Flood()
local region = Region3.new(Vector3.new(-1250,0,-1250), Vector3.new(1250,18,1250))
region = region:ExpandToGrid(4)
game.Workspace.Terrain:FillRegion(region, 4, Enum.Material.Water)
end

function Danims()
h = game.Players.LocalPlayer.Character.Humanoid
tracks = h:GetPlayingAnimationTracks()
for _,x in pairs(tracks)
do x:Stop()
end
end

	if Command:lower(1,7) == "/e kill" then
		Kill()
	elseif Command:lower(1,8) == "/e invis" then
		Invisible()
	elseif Command:lower(1,6) == "/e fly" then
                Notification("LTAK System", "Press L to toggle fly.", 5)
		Fly()
	elseif Command:lower(1,7) == "/e tgod" then
		God()
	elseif Command:lower(1,7) == "/e spam" then
		Spam()
		spam = not spam
	elseif Command:lower(1,13) == "/e mergelimbs" then
	    Lmerge()
	elseif Command:lower(1,9) == "/e noclip" then
	    NoClip()
	elseif Command:lower(1,6) == "/e dab" then
	    Dab()
	elseif Command:lower(1,10) == "/e clicktp" then
	    ClickTP()
	elseif Command:lower(1,9) == "/e btools" then
	    BTools()
	elseif Command:lower(1,12) == "/e enableinv" then
        EnableInv()
	elseif Command:lower(1,11) == "/e drophats" then
	    Drophats()
	elseif Command:lower(1,14) == "/e thirdperson" then
	    UnFirst()
	elseif Command:lower(1,10) == "/e respawn" then
	    Respawn()
	elseif Command:lower(1,10) == "/e creeper" then
	    Creeper()
	elseif Command:lower(1,10) == "/e refresh" then
	    Refresh()
	elseif Command:lower(1,11) == "/e shutdown" then
	    Shutdown()
	elseif Command:lower(1,7) == "/e help" then
	    Help()
	elseif Command:lower(1,6) == "/e dex" then
	    Dex()
	elseif Command:lower(1,8) == "/e naked" then
	    Naked()
    elseif Command:lower(1,12) == "/e thickbody" then
	    Thicc()
	elseif Command:lower(1,6) == "/e sit" then
	    Sit()
	elseif Command:lower(1,9) == "/e barrel" then
	   Barrel()
	elseif Command:lower(1,12) == "/e blockhats" then
	   Blockhats()
	elseif Command:lower(1,10) == "/e cripple" then
	   Cripple()
	elseif Command:lower(1,11) == "/e faceless" then
	   Facerem()
	elseif Command:lower(1,8) == "/e shake" then
	   Awtoosim()
	elseif Command:lower(1,6) == "/e esp" then
	   ESP()
	elseif Command:lower(1,9) == "/e animas" then
	   Arosia()
	elseif Command:lower(1,7) == "/e exec" then
	   Exec()
	elseif Command:lower(1,6) == "/e oof" then
	   Oof()
	elseif Command:lower(1,13) == "/e hypertotal" then
	   Hypertotal()
	elseif Command:lower(1,9) == "/e freeze" then
	   Freeze()
	elseif Command:lower(1,8) == "/e flood" then
	   Flood()
    elseif Command:lower(1,9) == "/e danims" then
	   Danims()
	end
	
	

end)