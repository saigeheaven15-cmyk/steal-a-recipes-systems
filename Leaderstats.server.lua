
--[[
    STEAL A RECIPES!
    System: Player Leaderstats
    Language: Luau
    Description: Creates a Coins leaderboard
    when a player joins the game.
]]

local Players = game:GetService("Players")

local STARTING_COINS = 0

local function setupPlayer(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Value = STARTING_COINS
    coins.Parent = leaderstats
end

Players.PlayerAdded:Connect(setupPlayer)
