-- ====================================================
--    EMAM123090 - ULTIMATE FAKE ADMIN & EGG HUB
-- ====================================================

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local HRP = Character:WaitForChild("HumanoidRootPart")

-- 1. تاج الملك والأدمن فوق رأسك (رينبو)
local function CreateEmamTitle(char)
    local head = char:WaitForChild("Head", 5)
    if not head or head:FindFirstChild("EmamAdminTag") then return end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "EmamAdminTag"
    billboard.Size = UDim2.new(0, 280, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 3.5, 0)
    billboard.AlwaysOnTop = true
    billboard.Parent = head

    local tagLabel = Instance.new("TextLabel")
    tagLabel.Size = UDim2.new(1, 0, 1, 0)
    tagLabel.BackgroundTransparency = 1
    tagLabel.Text = "👑 [HEAD ADMIN] EMAM123090 👑"
    tagLabel.Font = Enum.Font.FredokaOne
    tagLabel.TextSize = 18
    tagLabel.TextStrokeTransparency = 0.2
    tagLabel.Parent = billboard

    task.spawn(function()
        local hue = 0
        while billboard and billboard.Parent do
            hue = (hue + 2) % 360
            tagLabel.TextColor3 = Color3.fromHSV(hue / 360, 1, 1)
            task.wait(0.03)
        end
    end)
end

CreateEmamTitle(Character)
LocalPlayer.CharacterAdded:Connect(function(nc)
    Character = nc
    Humanoid = nc:WaitForChild("Humanoid")
    HRP = nc:WaitForChild("HumanoidRootPart")
    CreateEmamTitle(nc)
end)

-- 2. واجهة الأدمن الوهمي الكبرى
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "EmamFakeAdminHub"
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 320, 0, 440)
MainFrame.Position = UDim2.new(0.3, 0, 0.15, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 45)
Title.BackgroundTransparency = 1
Title.Text = "⚡ EMAM FAKE ADMIN PANEL ⚡"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(255, 215, 0)
Title.Parent = MainFrame

local Scroll = Instance.new("ScrollingFrame")
Scroll.Size = UDim2.new(0.9, 0, 0.83, 0)
Scroll.Position = UDim2.new(0.05, 0, 0.14, 0)
Scroll.BackgroundTransparency = 1
Scroll.CanvasSize = UDim2.new(0, 0, 2.3, 0)
Scroll.ScrollBarThickness = 4
Scroll.Parent = MainFrame

local UIList = Instance.new("UIListLayout")
UIList.Parent = Scroll
UIList.Padding = UDim.new(0, 8)

local function MakeAdminBtn(txt, color, func)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 40)
    btn.BackgroundColor3 = color
    btn.Text = txt
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 14
    btn.Parent = Scroll
    
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = btn
    
    btn.MouseButton1Click:Connect(func)
    return btn
end

-- ==================== [ مميزات الأدمن الوهمي واختراق الماب ] ====================

-- 1. رسبنة بيض أسطوري في الماب
MakeAdminBtn("🥚 رسبنة بيضة أسطورية (Spawn Egg)", Color3.fromRGB(218, 165, 32), function()
    local fakeEgg = Instance.new("Part")
    fakeEgg.Size = Vector3.new(3.5, 4.5, 3.5)
    fakeEgg.Shape = Enum.PartType.Ball
    fakeEgg.Color = Color3.fromRGB(255, 215, 0)
    fakeEgg.Material = Enum.Material.Neon
    fakeEgg.Position = HRP.Position + (HRP.CFrame.LookVector * 6)
    fakeEgg.Parent = workspace

    local bgui = Instance.new("BillboardGui")
    bgui.Size = UDim2.new(0, 200, 0, 40)
    bgui.StudsOffset = Vector3.new(0, 3, 0)
    bgui.AlwaysOnTop = true
    bgui.Parent = fakeEgg

    local txt = Instance.new("TextLabel")
    txt.Size = UDim2.new(1, 0, 1, 0)
    txt.BackgroundTransparency = 1
    txt.Text = "✨ ADMIN MYTHIC EGG ✨"
    txt.TextColor3 = Color3.fromRGB(255, 255, 0)
    txt.Font = Enum.Font.FredokaOne
    txt.TextSize = 15
    txt.Parent = bgui
end)

-- 2. استدعاء شخصية Ben صاحبة الماب
MakeAdminBtn("👹 استدعاء شخصية صاحب الماب (Ben)", Color3.fromRGB(178, 34, 34), function()
    local benModel = Instance.new("Model")
    benModel.Name = "Ben_Map_Owner"
    
    local part = Instance.new("Part")
    part.Name = "HumanoidRootPart"
    part.Size = Vector3.new(4, 9, 4)
    part.Color = Color3.fromRGB(30, 30, 30)
    part.Position = HRP.Position + (HRP.CFrame.LookVector * 8)
    part.Anchored = true
    part.Parent = benModel
    
    local hum = Instance.new("Humanoid")
    hum.Parent = benModel

    local bgui = Instance.new("BillboardGui")
    bgui.Size = UDim2.new(0, 260, 0, 60)
    bgui.Stud
