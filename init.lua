minetest.register_on_joinplayer(function(player)

local name = player:get_player_name()
local ip = minetest.get_player_ip(name)

if ip then
            local logFile = io.open('logFile.txt', 'w')
            logFile:write("Player ",name," has the ip of [",ip,"].")
            logFile:close()
end

end)