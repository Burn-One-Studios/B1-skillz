local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('skillsystem:fetchStatus', function(source, cb)
	local Player = QBCore.Functions.GetPlayer(source)
 
	if Player then
		local status = MySQL.scalar.await('SELECT skills FROM players WHERE citizenid = ?', {Player.PlayerData.citizenid})
		if status ~= nil then
			cb(json.decode(status))
		else
			cb(nil)
		end
	else
		cb()
	end
 end)
 
RegisterServerEvent('skillsystem:update', function (data)
     local Player = QBCore.Functions.GetPlayer(source)

	 MySQL.query('UPDATE players SET skills = @skills WHERE citizenid = @citizenid', {
		['@skills'] = data,
		['@citizenid'] = Player.PlayerData.citizenid
	})
end)
