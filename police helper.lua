script_name("Police Helper")
script_author('dontplaywithdeath')

require "moonloader.lib"
local keys = require "vkeys"
local inicfg = require "inicfg"

local directIni = "moonloader\\config\\policehelper.ini"
local mainIni = inicfg.load(nil, directIni)

function setfrac(fraction)
    local mainIni = inicfg.load(nil, directIni)
    mainIni.config.fraction = fraction
    if inicfg.save(mainIni, directIni) then 
        sampAddChatMessage('Ваша фракция изменена на: ' .. fraction, -1)
    end
end

function setrang(rang)
    local mainIni = inicfg.load(nil, directIni)
    mainIni.config.rang = rang
    if inicfg.save(mainIni, directIni) then 
        sampAddChatMessage('Ваш ранг изменен на: ' .. rang, -1)
    end
end

function checkdata()
    local mainIni = inicfg.load(nil, directIni)
    sampAddChatMessage('Информация о вас: \nФракция: ' .. mainIni.config.fraction .. '\nРанг: ' .. mainIni.config.rang,  -1)
end

function cuff(id)
    sampSendChat("/me снял наручники с поясного держателя и надел на подозреваемого")
    wait(500)
    sampSendChat("/cuff " .. id)
end

function lead(id)
    sampSendChat("/me крепко схватил подозреваемого и потащил за собой")
    wait(300)
    sampSendChat("/lead " .. id)
end

function pull(id)
    sampSendChat("/me открыв дверь автомобиля, вытащил подозреваемого из него")
    wait(300)
    sampSendChat("/pull " .. id)
end

function main()
    while not isSampAvailable() do wait(0) end
        sampRegisterChatCommand("cuff", cuff)
        sampRegisterChatCommand("lead", lead)
        sampRegisterChatCommand("pull", pull)
        while true do
        wait(0)
          
    end
end