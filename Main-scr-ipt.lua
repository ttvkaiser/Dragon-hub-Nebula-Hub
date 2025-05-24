local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/ttvkaiser/Dragon-hub-Nebula-Hub/refs/heads/main/gamelist.lua"))()

for PlaceID, Execute in pairs(Games) do
    if PlaceID == game.PlaceId then
        loadstring(game:HttpGet(Execute))()
    end
end
