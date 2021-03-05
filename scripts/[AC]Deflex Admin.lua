--Made By Deflex Script Version By TheMichalos
hiddenCode = math.random(1, 50000000) --To prevent anti exploit scripts
print(hiddenCode, ' Deflexs_CMDSCRIPT: LOADING SCRIPT DATA..')
local player = game.Players.LocalPlayer
bb = game.CoreGui:FindFirstChild('DEFLEXCMDASSETHOLDER') 
prefix = ";"
if (bb ~= nil) then

else
print(hiddenCode, ' Deflexs_CMDSCRIPT: Creating AssetHolder in CoreGui...')
local assetHolder = Instance.new("Folder")
assetHolder.Name = "DEFLEXCMDASSETHOLDER"
assetHolder.Parent = game.CoreGui
print(hiddenCode, ' Deflexs_CMDSCRIPT: Created AssetHolder...')
print(hiddenCode, ' Deflexs_CMDSCRIPT: Loading Assets...')
assetHolder = Instance.new("Part")
local Fedora = assetHolder:FindFirstChild('Fedora')
if (Fedora ~= nil) then
Fedora.Name = "BlackFedora"
print(hiddenCode, ' Deflexs_CMDSCRIPT: named Fedora to BlackFedora')
end

print(hiddenCode, ' Deflexs_CMDSCRIPT: Loaded Assets successfully.')

print(hiddenCode, ' Deflexs_CMDSCRIPT: loading ui...')
local main = Instance.new("ScreenGui")
main.Parent = game.CoreGui
main.Name = "Deflexcmdscript"

local frame = Instance.new("Frame")

frame.Parent = main

frame.BackgroundColor3 = Color3.new(20/255,20/255,20/255)

frame.BackgroundTransparency = 0.850

frame.Position = UDim2.new(-3,0,0,0)

frame.Size = UDim2.new(3,0,0.1,0)

frame.Visible = true


local textlabel = Instance.new("TextLabel")
textlabel.Parent = frame
textlabel.Size = UDim2.new(1,0,1,0)
textlabel.TextColor3=Color3.new(255/255,255/255,255/255)
textlabel.Text = "Deflex's CmdScript is loading. . ."
textlabel.Position = UDim2.new(0,0,0,0)
textlabel.BackgroundTransparency = 1
textlabel.BackgroundColor3 = Color3.new(255/255,255/255,255/255)
textlabel.TextStrokeColor3 = Color3.new(0/255,0/255,0/255)
textlabel.TextStrokeTransparency = 0
textlabel.FontSize = Enum.FontSize.Size36
while wait(0.005) do
	if (game.CoreGui.Deflexcmdscript.Frame.Position.X.Scale >= -1) then
		wait(2)
		local uu = game.CoreGui:FindFirstChild('DEFLEXCMDASSETHOLDER')
		if (uu ~= nil) then
		game.CoreGui.Deflexcmdscript.Frame.TextLabel.Text = "Successfully Loaded!"
	local player = game.Players.LocalPlayer
--runcmds:
cmdscreated = false
player.Chatted:connect(function(lpmsg)
if string.sub(lpmsg, 1, 3) == ";ff" then
local plr = game.Workspace:FindFirstChild(string.sub(lpmsg, 5))
if (string.sub(lpmsg, 5)) == "me" then
Instance.new("ForceField", player.Character)
else
if (plr ~= nil) then 
Instance.new("ForceField", plr)
else
local findUi = game.CoreGui:FindFirstChild("Deflexcmdscript")
if (findUi ~= nil) then
findUi.Frame.TextLabel.Text = "Error: Could not find player!"
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 0.850
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 0
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 0
wait(3)
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 1
else
print('DeflexCmdScript error: Cant find ui!')
end
end
end
end
if string.sub(lpmsg, 1, 5) == ";fire" then
local plr = game.Workspace:FindFirstChild(string.sub(lpmsg, 7))
if (string.sub(lpmsg, 7)) == "me" then
Instance.new("Fire", player.Character.Torso)
else
if (plr ~= nil) then 
Instance.new("Fire", plr.Torso)
else
local findUi = game.CoreGui:FindFirstChild("Deflexcmdscript")
if (findUi ~= nil) then
findUi.Frame.TextLabel.Text = "Error: Could not find player!"
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 0.850
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 0
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 0
wait(3)
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 1
else
print('DeflexCmdScript error: Cant find ui!')
end
end
end
end
if string.sub(lpmsg, 1, 3) == ";sp" or string.sub(lpmsg, 1, 3) == ";sk" then
local plr = game.Workspace:FindFirstChild(string.sub(lpmsg, 5))
if (string.sub(lpmsg, 5)) == "me" then
Instance.new("Sparkles", player.Character.Torso)
else
if (plr ~= nil) then 
Instance.new("Sparkles", plr.Torso)
else
local findUi = game.CoreGui:FindFirstChild("Deflexcmdscript")
if (findUi ~= nil) then
findUi.Frame.TextLabel.Text = "Error: Could not find player!"
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 0.850
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 0
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 0
wait(3)
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 1
else
print('DeflexCmdScript error: Cant find ui!')
end
end
end
end
if string.sub(lpmsg, 1, 6) == ";smoke" or string.sub(lpmsg, 1, 6) == ";smoke" then
local plr = game.Workspace:FindFirstChild(string.sub(lpmsg, 8))
if (string.sub(lpmsg, 8)) == "me" then
Instance.new("Smoke", player.Character.Torso)
else
if (plr ~= nil) then 
Instance.new("Smoke", plr.Torso)
else
local findUi = game.CoreGui:FindFirstChild("Deflexcmdscript")
if (findUi ~= nil) then
findUi.Frame.TextLabel.Text = "Error: Could not find player!"
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 0.850
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 0
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 0
wait(3)
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 1
else
print('DeflexCmdScript error: Cant find ui!')
end
end
end
end
if string.sub(lpmsg, 1, 6) == ";music" then
local id = string.sub(lpmsg, 8)
local song = Instance.new("Sound")
song.Name = "DeflexAudio"
song.Parent = game.Workspace
song.Volume = 1
song.SoundId = "rbxassetid://"..id
wait(1)
song:Play()
end
if string.sub(lpmsg, 1, 6) == ";stop" then
local shruggy = game.Workspace:FindFirstChild('DeflexAudio')
if (shruggy ~= nil) then
	shruggy:Stop()
	wait(1.5)
	shruggy:remove()
else
	local moar = game.Workspace:FindFirstChild('Musickek')
	if (moar ~= nil) then
		moar:Stop()
		wait(1.5)
		moar:remove()
	else
		local moarz = game.Workspace:FindFirstChild('Sound')
		if (moarz ~= nil) then
			moarz:Stop()
			wait(1.5)
			moarz:remove()
		end
	end
end
end
if string.sub(lpmsg, 1, 9) == ";keemstar" then
local plr = game.Workspace:FindFirstChild(string.sub(lpmsg, 11))
if (string.sub(lpmsg, 11)) == "me" then
local keem = Instance.new("SpecialMesh", player.Character.Torso)
keem.MeshId = "rbxassetid://471652548"
keem.TextureId = "rbxassetid://471652580"
keem.Offset = Vector3.new(0, 2, 0)
local sound = Instance.new("Sound")
sound.Parent = player.Character.Torso
sound.Looped = true
sound.SoundId = "rbxassetid://458221837"
player.Character["Left Arm"].Transparency = 1
player.Character["Right Arm"].Transparency = 1
player.Character["Head"].Transparency = 1
player.Character["Left Leg"].Transparency = 1
player.Character["Right Leg"].Transparency = 1
sound:Play()
else
if (plr ~= nil) then 
local keem = Instance.new("SpecialMesh", plr.Torso)
keem.MeshId = "rbxassetid://471652548"
keem.TextureId = "rbxassetid://471652580"
keem.Offset = Vector3.new(0, 2, 0)
local sound = Instance.new("Sound")
sound.Parent = plr.Torso
sound.SoundId = "rbxassetid://458221837"
sound.Looped = true
plr["Left Arm"].Transparency = 1
plr["Right Arm"].Transparency = 1
plr["Head"].Transparency = 1
plr["Left Leg"].Transparency = 1
plr["Right Leg"].Transparency = 1
sound:Play()
else
local findUi = game.CoreGui:FindFirstChild("Deflexcmdscript")
if (findUi ~= nil) then
findUi.Frame.TextLabel.Text = "Error: Could not find player!"
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 0.850
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 0
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 0
wait(3)
game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = 1
game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = 1
else
print('DeflexCmdScript error: Cant find ui!')
end
end
end
end
if string.sub(lpmsg, 1, 5) == ";cmds" then
	if (cmdscreated == false) then
local kek = Instance.new("ScreenGui")
kek.Parent = game.CoreGui
kek.Name = "cmdui"
local sf = Instance.new("ScrollingFrame")
sf.Parent = kek
sf.BorderSizePixel = 0
sf.BackgroundColor3 = Color3.new(115/255,115/255,115/255)
sf.BackgroundTransparency = 0.5
sf.Position = UDim2.new(0,0,0.4,0)
sf.Size = UDim2.new(0.2,0,0.3,0)
sf.ZIndex = 1
sf.ScrollBarThickness = 3
sf.ScrollingEnabled = true
sf.CanvasSize = UDim2.new(0,0,0,0)
local label = Instance.new("TextLabel")
label.Parent = sf
label.BackgroundTransparency = 1
label.Size = UDim2.new(1,0,1,0)
label.Font = Enum.Font.SourceSans
label.FontSize = Enum.FontSize.Size18
label.TextXAlignment = Enum.TextXAlignment.Left
label.TextYAlignment = Enum.TextYAlignment.Top
label.TextColor3 = Color3.new(255/255,255/255,255/255)
label.Text = "(type ;close to close ui)\n Commands:\nff [p] - give [p] forcefield\nsp/sk - give [p] sparkles.\nfire [p] - give [p] fire.\nsmoke [p] - give [p] smoke\nmusic [id] - Play music with [id]\nstop - stops music\nkeemstar [p] - make [p] keemstar.\n"
cmdscreated = true
	else
		game.CoreGui.cmdui.ScrollingFrame.Visible = true
	end
	
end
if string.sub(lpmsg, 1, 6) == ";close" then
	if (cmdscreated == true) then
		game.CoreGui.cmdui.ScrollingFrame.Visible = false
	end
end
end)
		wait(3)
		game.CoreGui.Deflexcmdscript.Frame.TextLabel.Text = "Use ';' to use commands."
		while wait(0.00000005) do
			if (game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency >= 0.9) then
		
			

			
			else
				game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency = game.CoreGui.Deflexcmdscript.Frame.BackgroundTransparency +0.01
				game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency = game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextTransparency +0.01
				game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency = game.CoreGui.Deflexcmdscript.Frame.TextLabel.TextStrokeTransparency +0.01
				
				
			end
		end
		while wait(0.005) do
			game.CoreGui.Deflexcmdscript.Frame.Position = UDim2.new(game.CoreGui.Deflexcmdscript.Frame.Position.X.Scale+0.01, 0, 0, 0)
		end
		end
	else
game.CoreGui.Deflexcmdscript.Frame.Position = UDim2.new(game.CoreGui.Deflexcmdscript.Frame.Position.X.Scale+0.01, 0, 0, 0)		
	end

end
end