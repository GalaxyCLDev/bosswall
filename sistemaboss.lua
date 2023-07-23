local playerStorage = 20005
local pos1 = {x = 300, y = 1530, z = 9}
local pos2 = {x = 301, y = 1530, z = 9}
local pos3 = {x = 302, y = 1530, z = 9}
local positem = {x = 300, y = 1532, z = 9}
local positem2 = {x = 301, y = 1532, z = 9}
local positem3 = {x = 302, y = 1532, z = 9}
local wall1 = 9486

function onDeath(cid, corpse, killer, mostDamage, unjustified, mostDamageUnjustified)
    if isPlayer(cid) then
        setPlayerStorageValue(cid, playerStorage, -1) -- Reinicia el valor de la quest cuando el jugador muere
        doRemoveItem(getTileItemById(positem, wall1).uid) -- Elimina la primera pared cuando el jugador muere
        doRemoveItem(getTileItemById(positem2, wall1).uid) -- Elimina la segunda pared cuando el jugador muere
        doRemoveItem(getTileItemById(positem3, wall1).uid) -- Elimina la tercera pared cuando el jugador muere
        doRemoveItem(getTileItemById(pos1, wall1).uid) -- Elimina la primera pared cuando el jugador muere
        doRemoveItem(getTileItemById(pos2, wall1).uid) -- Elimina la segunda pared cuando el jugador muere
        doRemoveItem(getTileItemById(pos3, wall1).uid) -- Elimina la tercera pared cuando el jugador muere

        local rashidNpc = getCreatureByName("Rashid The Protector")
        if rashidNpc then
            doRemoveCreature(rashidNpc) -- Elimina el NPC "Rashid The Protector" cuando el jugador muere
        end
    end
end
