YourCore = nil

TriggerEvent('YourCore:GetObject', function(obj) YourCore = obj end)

YourCore.Functions.CreateUseableItem("map", function(source, item)
    local Player = YourCore.Functions.GetPlayer(source)

    TriggerClientEvent("YourPrefix-map:client:UseMap", source, true)
end)