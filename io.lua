#!/usr/bin/env lua
-- Librires
local io = require('io')

-- Globals Variables
_f = string.format
_t = (os.date("[%Y-%m-%d %H:%M:%S] "))
File = "/var/log/ScriptVoIP"
os.execute(_f("sudo chown centos. %s",File))
os.execute(_f("sudo chmod 777 %s",File))
LogFile = io.open(File,"a+")
FLAG_VALUE = ""

function writeLog(log)
    local date_log = _t..log.."\n"
    local logRegistrado = _f("%s",date_log)
    LogFile:write(logRegistrado)
    LogFile:flush()
    print(logRegistrado)
end

print(_t.."Script VoIP")
function change()
    local logger = true
        while logger == true do
            print([[

                Escolha uma opção 
                1) ligar Log
                2) desligar Log
                3) abrir no SNGREP (*para atualizar os valores é necessário sair do SNGREP e retornar)
                
            ]])
        local selectFunc = io.read()
            if  selectFunc == "1" then
                print([[
                    Qual nome será dado ao arquivo da pasta /tmp?
                        1) Data e horário atual
                        Qualquer coisa) Nome persorsonalizado
                ]])
                FLAG_VALUE = io.read()
                if FLAG_VALUE == "1" then
                   FLAG_VALUE = os.date("%Y-%m-%dH%H-%M-%S")
                end
                    os.execute(_f('rasterisk -x"pjsip set logger pcap /tmp/%s.pcap"',FLAG_VALUE))
                    os.execute('rasterisk -x"pjsip set logger on"')
                    writeLog(_f("começou escrever em /tmp/%s.pcap",FLAG_VALUE))
                    print(_t.."leia com sngrep usando a opção 3")
            elseif selectFunc == "2" then
                os.execute('rasterisk -x"pjsip set logger off"')
                os.execute('rasterisk -x"pjsip set logger pcap off"')
                writeLog("terminpu de escrever o pcap")
                print(_t.."terminou de escrever o pcap")
            elseif selectFunc == "3" then
                os.execute(_f("sngrep -I /tmp/%s.pcap",FLAG_VALUE))
            else
                os.execute('rasterisk -x"pjsip set logger off"')
                os.execute('rasterisk -x"pjsip set logger pcap off"')
                print(_t.."Nenhum valor válido foi digitado. Essa sessão está terminada")
                break
            end
        end
        return os.execute('rasterisk -x"pjsip set logger off"'),os.execute('rasterisk -x"pjsip set logger pcap off"'), print(_t.."finalizou")
end
change()