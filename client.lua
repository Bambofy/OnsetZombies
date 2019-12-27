AddEvent("OnPackageStart", function()
    print("[CL] Zombies initialized...")
end)

AddEvent("OnNPCStreamIn", function(npc)
    if GetNPCPropertyValue(npc, "IS_ZOMBIE") ~= nil then
        local clothesId = GetNPCPropertyValue(npc, "CLOTHES_ID")
        SetNPCClothingPreset(npc, math.random(21, 22)))
        print("SET NPC CLOTHES", clothesId)
    end
end)