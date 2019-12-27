AddEvent("OnPackageStart", function()
    print("[CL] Zombies initialized...")
end)

AddEvent("OnNPCStreamIn", function(npc)
    if GetNPCPropertyValue(npc, "IS_ZOMBIE") ~= nil then
        SetNPCClothingPreset(npc, 21)
    end
end)