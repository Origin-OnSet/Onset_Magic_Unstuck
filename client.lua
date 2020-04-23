AddEvent("OnPlayerEnterWater", function()

    local x, y, z = GetPlayerLocation()
    
    local tryZ = 0
    local maxTry = 60
    local terrain_height = GetTerrainHeight(x, y, tryZ)


    while terrain_height == false or terrain_height <= 100 do
        terrain_height = GetTerrainHeight(x, y, tryZ)
        tryZ = tryZ + 100
        if tryZ > maxTry * 100 then return end
    end

    if terrain_height >= 100 then
        local plyactor = GetPlayerActor(GetPlayerId())
        plyactor:SetActorLocation(FVector(x,y, terrain_height + 100))
    end

end)