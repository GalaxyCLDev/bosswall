local playerStorage = 20005
local wallID = 9486
local wallsToRemove = {
    {x = 300, y = 1530, z = 9},
    {x = 301, y = 1530, z = 9},
    {x = 302, y = 1530, z = 9},
    {x = 300, y = 1532, z = 9},
    {x = 301, y = 1532, z = 9},
    {x = 302, y = 1532, z = 9}
}

function onDeath(cid, corpse, killer, mostDamage, unjustified, mostDamageUnjustified)
    if not isPlayer(cid) then
        return true
    end

    setPlayerStorageValue(cid, playerStorage, -1) -- Reinicia el valor de la quest cuando el jugador muere

    for _, pos in ipairs(wallsToRemove) do
        local wallItem = getTileItemById(pos, wallID)
        if wallItem then
            doRemoveItem(wallItem.uid) -- Elimina la pared si se encuentra en la posición
        end
    end

    local rashidNpc = getCreatureByName("Rashid The Protector")
    if rashidNpc then
        doRemoveCreature(rashidNpc) -- Elimina el NPC "Rashid The Protector" cuando el jugador muere
    end
end


---- esta version no esta probada pero deberia funcionar normal.
