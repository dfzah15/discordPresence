--------------------------------[ informasi ]---------------------------------------------------------------------

RegisterNetEvent('discord:client:setPresence')
AddEventHandler('discord:client:setPresence', function(_playerName)
	playerName = _playerName
   	SetRichPresence('ID:' .. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. ' | ' .. playerName .. ' | ' ..' '.. Config.PlayerText ..' ' .. #GetActivePlayers() .. '/' .. tostring(Config.PlayerCount))
end)

Citizen.CreateThread(function()

    while true do
        local player = GetPlayerPed(-1)
        Citizen.Wait(5*1000)

        SetDiscordAppId(--[[ your discord bot id--]] )  ---required

--[[	name = GetPlayerName(PlayerId())
    	id = GetPlayerServerId(PlayerId())
--]]

        SetDiscordRichPresenceAsset("-- Name image ---") -- required
        SetDiscordRichPresenceAssetText("-- Name your Server " .. GetPlayerName(source)) --required
	-- SetDiscordRichPresenceAssetText("ID: "..id.." | "..name.." ")

        SetDiscordRichPresenceAssetSmall("-- name image --") --required
      SetDiscordRichPresenceAssetSmallText(" your description")
    end
end)

---------------------------------[ button ]-------------------------------------------------------

 --       SetDiscordRichPresenceAction(0, "💠 button 1", "fivem://connect/localhost:30120")
  --      SetDiscordRichPresenceAction(1, "🚀 button 2", "https://discord.gg/")
