--The Direction of the file (made by NoNameDude)
local ip_file = minetest.get_worldpath().."/ip_file.txt"

minetest.register_on_joinplayer(function(player)

    local name = player:get_player_name()
    local ip = minetest.get_player_ip(name)
    
    --If its an ip then it gets saved (made by NoNameDude)
    if ip then
        local logFile = io.open(ip_file, 'a')
        logFile:write("Player ",name," has the ip [",ip,"].\n")
        logFile:close()
        
    --shows you if something went wrong (made by NoNameDude)
    else
    print("There was an error with "..name..". ") 
    end
    
end)
