-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "LinuxKeyboardGUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 900, 0, 350)
frame.Position = UDim2.new(0.5, -450, 0.5, -175)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 2
frame.Parent = gui

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "Linux Keyboard"
title.Font = Enum.Font.Code
title.TextSize = 26
title.TextColor3 = Color3.fromRGB(0, 255, 0)
title.Parent = frame

-- Функция для создания кнопок
local function createKey(name, x, y, w, h)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, w, 0, h)
    btn.Position = UDim2.new(0, x, 0, y)
    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    btn.Text = name
    btn.Font = Enum.Font.Code
    btn.TextSize = 18
    btn.TextColor3 = Color3.fromRGB(200, 200, 200)
    btn.Parent = frame

    -- Эффект нажатия
    btn.MouseButton1Click:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        task.wait(0.1)
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end)
end

-- Верхний ряд: F1-F12
local offsetX = 10
for i = 1, 12 do
    createKey("F"..i, offsetX, 50, 55, 40)
    offsetX = offsetX + 60
end

-- Ряд 1: Цифры
local numbers = {"1","2","3","4","5","6","7","8","9","0","-","="}
offsetX = 10
for _,num in ipairs(numbers) do
    createKey(num, offsetX, 100, 55, 40)
    offsetX = offsetX + 60
end

-- Ряд 2: QWERTY
local qwerty = {"Q","W","E","R","T","Y","U","I","O","P","[","]"}
offsetX = 40
for _,letter in ipairs(qwerty) do
    createKey(letter, offsetX, 150, 55, 40)
    offsetX = offsetX + 60
end

-- Ряд 3: ASDF
local asdf = {"A","S","D","F","G","H","J","K","L",";","'"}
offsetX = 70
for _,letter in ipairs(asdf) do
    createKey(letter, offsetX, 200, 55, 40)
    offsetX = offsetX + 60
end

-- Ряд 4: ZXCV
local zxcv = {"Z","X","C","V","B","N","M",",",".","/"}
offsetX = 100
for _,letter in ipairs(zxcv) do
    createKey(letter, offsetX, 250, 55, 40)
    offsetX = offsetX + 60
end

-- Пробел
createKey("Space", 250, 300, 400, 40)

-- Доп. клавиши
createKey("Shift", 10, 250, 80, 40)
createKey("Enter", 750, 200, 120, 40)
createKey("Ctrl", 10, 300, 80, 40)
createKey("Alt", 100, 300, 80, 40)
createKey("Tab", 10, 150, 55, 40)
