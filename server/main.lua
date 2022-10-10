ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterServerCallback('skillsystem:fetchStatus', function(source, cb)
	local Player = ESX.GetPlayerFromId(source)
 
	if Player then
		local status = MySQL.scalar.await('SELECT skills FROM users WHERE identifier = ?', {Player.identifier})
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
     local Player = ESX.GetPlayerFromId(source)

	 MySQL.query('UPDATE users SET skills = @skills WHERE identifier = @identifier', {
		['@skills'] = data,
		['@identifier'] = Player.identifier
	})
end)