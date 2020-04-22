AddRemoteEvent("UnstuckPlayer", function ( _player, _terrain_height )
	local x,y,z = GetPlayerLocation(_player)
	SetPlayerLocation(_player, x,y, _terrain_height + 100)
end)