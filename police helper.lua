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
        sampAddChatMessage('���� ������� �������� ��: ' .. fraction, -1)
    end
end

function setrang(rang)
    local mainIni = inicfg.load(nil, directIni)
    mainIni.config.rang = rang
    if inicfg.save(mainIni, directIni) then 
        sampAddChatMessage('��� ���� ������� ��: ' .. rang, -1)
    end
end

function checkdata()
    local mainIni = inicfg.load(nil, directIni)
    sampAddChatMessage('���������� � ���: \n�������: ' .. mainIni.config.fraction .. '\n����: ' .. mainIni.config.rang,  -1)
end

function cuff(id)
    sampSendChat("/me ���� ��������� � �������� ��������� � ����� �� ��������������")
    wait(500)
    sampSendChat("/cuff " .. id)
end

function lead(id)
    sampSendChat("/me ������ ������� �������������� � ������� �� �����")
    wait(300)
    sampSendChat("/lead " .. id)
end

function pull(id)
    sampSendChat("/me ������ ����� ����������, ������� �������������� �� ����")
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