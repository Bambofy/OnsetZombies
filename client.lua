ZOMBIES = {}
ZOMBIES.CLOTHESLIST = {
    21,
    22
}

AddEvent("OnPackageStart", function()
    print("[CL] Zombies initialized...")
end)

AddEvent("OnNPCStreamIn", function(npc)
    if GetNPCPropertyValue(npc, "IS_ZOMBIE") ~= nil then
        local clothesId = ZOMBIES.CLOTHESLIST[math.random(1, #ZOMBIES.CLOTHESLIST)]
        SetNPCClothingPreset(npc, clothesId)
    end
end