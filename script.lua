-- ====================================================
-- EMAM123090 CUSTOM SCRIPT - 100% ORIGINAL
-- ====================================================

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HRP = Character:WaitForChild("HumanoidRootPart")

-- 1. إضافة تاج الملك واسمك بالرينبو فوق رأسك
local function CreateEmamTag(char)
    local head = char:WaitForChild("Head", 5)
    if not head then return end
    
    if head:FindFirstChild("OriginalEmamTag") then
        head.OriginalEmamTag:Destroy()
    end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "OriginalEmamTag"
    billboard.Size = UDim2.new(0, 220, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 3.2, 0)
    billboard.AlwaysOnTop = true
    billboard.Parent = head

    local tagLabel = Instance.new("TextLabel")
    tagLabel.Size = UDim2.new(1, 0, 1, 0)
    tagLabel.BackgroundTransparency = 1
    tagLabel.Text = "👑 [DEV: EMAM123090] 👑"
    tagLabel.Font = Enum.Font.SourceSansBold
    tagLabel.TextSize = 20
    tagLabel.TextStrokeTransparency = 0.2
    tagLabel.Parent = billboard

    -- تأثير ألوان الرينبو المتحركة
    spawn(function()
        local hue = 0
        while billboard and billboard.Parent do
            hue = (hue + 2) % 360
            tagLabel.TextColor3 = Color3.fromHSV(hue / 360, 1, 1)
            task.wait(0.03)
        end
    end)
end

CreateEmamTag(Character)
LocalPlayer.CharacterAdded:Connect(function(newChar)
    Character = newChar
    Humanoid = newChar:WaitForChild("Humanoid")
    HRP = newChar:WaitForChild("HumanoidRootPart")
    CreateEmamTag(newChar)
end)

-- 2. واجهة تحكم بسيطة ونظيفة خاصة بك وحدك
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "EmamOriginalGui"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 240, 0, 180)
MainFrame.Position = UDim2.new(0.05, 0, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "EMAM123090 HUB"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = MainFrame

-- زر زيادة السرعة (بدون برامج خارجية)
local SpeedBtn = Instance.new("TextButton")
SpeedBtn.Size = UDim2.new(0.85, 0, 0, 45)
SpeedBtn.Position = UDim2.new(0.075, 0, 0.35, 0)
SpeedBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
SpeedBtn.Text = "⚡ سرعة خارقة: [OFF]"
SpeedBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedBtn.Font = Enum.Font.SourceSansBold
SpeedBtn.TextSize = 15
SpeedBtn.Parent = MainFrame

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 6)
BtnCorner.Parent = SpeedBtn

SpeedBtn.MouseButton1Click:Connect(function()
    if Humanoid.WalkSpeed == 16 then
        Humanoid.WalkSpeed = 70
        SpeedBtn.Text = "⚡ سرعة خارقة: [ON]"
        SpeedBtn.BackgroundColor3 = Color3.fromRGB(46, 139, 87)
    else
        Humanoid.WalkSpeed = 16
        SpeedBtn.Text = "⚡ سرعة خارقة: [OFF]"
        SpeedBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    end
end)

print("تم تشغيل سكربت EMAM123090 الأصلي والنظيف بنجاح!")
