local datalar = {}

function dataEkle(oyuncu, data, deger, snc)
    if datalar[oyuncu] ~= nil then
        datalar[oyuncu][data] = deger
    else
        datalar[oyuncu] = {}
        datalar[oyuncu][data] = deger
    end

    if snc == true or snc == nil then
        triggerServerEvent("data:snc", localPlayer, oyuncu, data, deger)
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
    dataEkle(oyuncu, data, deger, false)
end)

addEvent("data:sil", true)
addEventHandler("data:sil", root, function(oyuncu)
    datalar[oyuncu] = nil
end)