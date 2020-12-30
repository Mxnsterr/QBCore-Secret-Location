YourCore = nil

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if YourCore == nil then
            TriggerEvent('YourCore:GetObject', function(obj) YourCore = obj end)
            Citizen.Wait(200)
        end
    end
end)

function blipWeg()
    Citizen.Wait(Config.Duurtijd)
    RemoveBlip(radiusLoc)
end

function mapUsage()
    local maploc = {}
    maploc.x = Config.Locaties["secret"].coords.x
    maploc.y = Config.Locaties["secret"].coords.y
    maploc.z = Config.Locaties["secret"].coords.z


    YourCore.Functions.Notify("De geheime locatie is zichtbaar!")
    radiusLoc = AddBlipForRadius(maploc.x, maploc.y, maploc.z, 100.0)
      
      SetBlipRotation(radiusLoc, 0)
      SetBlipColour(radiusLoc, 59)
      print("Ayay piraat! - Made by Mxsterr")
      blipWeg()
end

RegisterNetEvent('YourPrefix-map:client:UseMap')
AddEventHandler('YourPrefix-map:client:UseMap', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"map"})
    YourCore.Functions.Progressbar("use_map", "Map inspecteren..", 5000, false, true, {}, {
        TriggerEvent('animations:client:EmoteCommandStart', {"map"}) -- Map opbergen omdat soms glitched
    }, {}, {}, function() -- Einde
        mapUsage() -- Gebruik map
    end)
end)
