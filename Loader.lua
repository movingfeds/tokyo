local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/caIIings/Librarys/main/GSTESTING.lua'))()

local function is_running()
    return #Library.ended > 0 
end

local GameData = {
    Game = '',
    ID,
};

local Loader = Library:New({Name = 'Tokyohook.cc - Loader - (' .. game:GetService('Players').LocalPlayer.UserId .. ')', Size = Vector2.new(300, 310), Accent = Color3.fromRGB(98, 113, 165), Style = 2, PageAmmount = 1}); do
    Loader.VisualPreview:SetPreviewState(false)
    local ConfigurationPage = Loader:Page({Name = 'Main'}) do
        local InfoSelection = ConfigurationPage:Section({Side = 'left', Name = 'Info'}); do
            local InfoLabel = InfoSelection:Label({Name = 'Welcome, ' .. game:GetService('Players').LocalPlayer.DisplayName .. '\nSupported Games: \n - Da Hood \nUpdated 3/6/23'})
        end
    
        local ScriptTypeSection = ConfigurationPage:Section({Side = 'left', Name = 'Options'}); do
            local ThemeSelector = ScriptTypeSection:Dropdown({Name = 'Theme', Options = {'Tokyohook.cc', 'Tokyo Night', 'Fatality', 'Mae.lua'}, Pointer = 'Theme_Selector'})
            local ThemeLoadButton = ScriptTypeSection:Button({Name = 'Load', Callback = function()
                if Library.pointers['Theme_Selector']:Get() == 'Tokyohook.cc' then
                    Library:UpdateColor('accent', Color3.fromRGB(98, 113, 165))
                    Library:UpdateColor('lightcontrast', Color3.fromRGB(35, 37, 51))
                    Library:UpdateColor('darkcontrast', Color3.fromRGB(27, 28, 39))
                    Library:UpdateColor('outline', Color3.fromRGB(0, 0, 0))
                    Library:UpdateColor('inline', Color3.fromRGB(37, 38, 63))
                    Library:UpdateColor('textcolor', Color3.fromRGB(255, 255, 255))
                    Library:UpdateColor('textborder', Color3.fromRGB(0, 0, 0))
                    Library:UpdateColor('cursoroutline', Color3.fromRGB(10, 10, 10))
                elseif Library.pointers['Theme_Selector']:Get() == 'Tokyo Night' then
                    Library:UpdateColor('lightcontrast', Color3.fromRGB(22,22,31))
                    Library:UpdateColor('accent', Color3.fromRGB(103,89,179))
                    Library:UpdateColor('darkcontrast', Color3.fromRGB(22,22,31))
                    Library:UpdateColor('inline', Library.pointers['Settings_Inline']:Get())                
                    Library:UpdateColor('outline', Library.pointers['Settings_Outline']:Get())
                elseif Library.pointers['Theme_Selector']:Get() == 'Mae.lua' then
                    Library:UpdateColor('lightcontrast', Color3.fromRGB(23, 23, 23))
                    Library:UpdateColor('accent', Color3.fromRGB(255, 198, 254))
                    Library:UpdateColor('darkcontrast', Color3.fromRGB(15, 15, 15))
                    Library:UpdateColor('outline', Color3.fromRGB(0, 0, 0))
                    Library:UpdateColor('inline', Color3.fromRGB(28, 28, 28))
                elseif Library.pointers['Theme_Selector']:Get() == 'Fatality' then
                    Library:UpdateColor('lightcontrast', Color3.fromRGB(45, 39, 73))
                    Library:UpdateColor('accent', Color3.fromRGB(197,7,83))                        
                    Library:UpdateColor('darkcontrast', Color3.fromRGB(25,19,53))
                    Library:UpdateColor('inline', Library.pointers['Settings_Inline']:Get())                
                    Library:UpdateColor('outline', Library.pointers['Settings_Outline']:Get())
                end
            end})
            local ScriptSelector = ScriptTypeSection:Dropdown({Name = 'Selected Game', Options = {'Da Hood'}, Pointer = 'Script_Selector'})
            local LoadButton = ScriptTypeSection:Button({Name = 'Load', Callback = function()
                if Library.pointers['Script_Selector']:Get() == 'Da Hood' then
                    Loader:Fade() 
                    wait(0.2) 
                    Loader:Unload()
                    GameData.Game = 'Da Hood'
                    GameData.ID = 2788229376
                end
            end})
        end
    end;
end

Loader:Initialize()

repeat wait() until GameData.Game == 'Da Hood' and GameData.ID ~= nil 

local ConfirmationInfo = {
    Confirmed = nil,
};

if game.PlaceId ~= GameData.ID then
    local Confirmation = Library:New({Name = 'Tokyohook.cc - Confirmation - (' .. game:GetService('Players').LocalPlayer.UserId .. ')', Size = Vector2.new(330, 190), Accent = Color3.fromRGB(98, 113, 165), Style = 2, PageAmmount = 1}); do
        Confirmation.VisualPreview:SetPreviewState(false)
        local ConfirmationPage = Confirmation:Page({Name = 'Main'}) do
            local ConfirmationSection = ConfirmationPage:Section({Side = 'left', Name = 'Info'}); do
                local ConfirmationLabel = ConfirmationSection:Label({Name = 'Welcome, ' .. game:GetService('Players').LocalPlayer.DisplayName .. '\nThis is not the correct game,\ndo you wish to proceed anyways?\n\n (WE ARE NOT RESPONSIBLE FOR ANY BANS) '})
                local ConfirmationButton = ConfirmationSection:Button({Name = 'Yes, I do', Callback = function() 
                    Confirmation:Fade() 
                    wait(0.2) 
                    Confirmation:Unload()
                    -- loadstring here
                end})
            end
        end;
    end
    Confirmation:Initialize()
else
    -- loadstring here
end
