local datalar = {}

function dataSet(oyuncu, data, deger, snc)
    if datalar[oyuncu] ~= nil then
        datalar[oyuncu][data] = deger
    else
        datalar[oyuncu] = {}
        datalar[oyuncu][data] = deger
    end

    if snc == true or snc == nil then
        triggerClientEvent(root, "data:snc", root, oyuncu, data, deger)
    end
end

function dataGet(oyuncu, data)
    if datalar[oyuncu] ~= nil and datalar[oyuncu][data] ~= nil then
        return datalar[oyuncu][data]
    else
        return false
    end 
end

addEvent("data:snc", true)
addEventHandler("data:snc", root, function(oyuncu, data, deger)
    dataSet(oyuncu, data, deger, false)
end)

addEventHandler("onPlayerQuit", root, function()
    datalar[source] = nil
    triggerClientEvent(root, "data:sil", root, source)
end)
