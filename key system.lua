local ScreenGui = Instance.new("ScreenGui")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Key System", "DarkTheme")

local Main = Window:NewTab("Check Key")
local Section = Main:NewSection("Key System")

_G.Key = "nothing yet"

Section:NewButton("Get key", "Paste link in browser", function()
    setclipboard("https://larahbanker.wixsite.com/makzinn-hub-site") -- add your key link
end)

local KeyLabel = Section:NewLabel("Key 1 / ".. _G.Key)
local KeyInput = Section:NewTextBox("Key", "Key",
     function(txt)
        KeyLabel:UpdateLabel("Key > " .. txt)
        _G.Key = txt
        CheckKey()
     end)

     _G.CheckKey = false
     local KeyLabel = Section:NewLabel("")
                function CheckKey()
                if _G.CheckedKey == true then
                    return
                end
                local key = game:HttpGet("https://redirect-api.work.ink/tokenValid/" .. _G.Key .. "?linkid=64581")
                if key == 'False' then
                    KeyLabel:UpdateLabel("Key incorrect")
                return
                end

                _G.CheckedKey = true
                if script then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/MagoKazinn/Makzinn_hub/main/Makzinn"))()
                    MakeScriptHub()
                    Destroy()
                    if script then
                        script()
                    else
                        KeyLabel:UpdateLabel("Failed to load")
                    end
                else
                KeyLabel:UpdateLabel("Unsupported game")
                end
end