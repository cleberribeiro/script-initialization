#!/bin/bash

# cd Documents/ProjetosJS/API-ERP-TS && export NODE_ENV=development && npm start
# cd Documents/ProjetosJS/API-AUTH && export NODE_ENV=development && npm start
# cd Documents/ProjetosJS/API-REPORT && export NODE_ENV=development && npm start
# 
# cd jasperreports-server-cp-7.5.0 && ./ctlscript.sh start
# cd jasperreports-server-cp-7.5.0 && ./ctlscript.sh stop
# 
# cd Documents/ProjetosJS/UI-ERP && npm run-script localCleber
# cd Documents/ProjetosJS/UI-AUTH && npm run-script localCleber

function versaoLinux () {
    /usr/bin/lsb_release -ds
}

function startApiErp() {
    echo "[npm start] Inicializando API-ERP..."
    xdotool key ctrl+shift+t &
    sleep 1
    xdotool key type "cd && clear && cd Documents/ProjetosJS/API-ERP-TS && export NODE_ENV=development && npm start" &
    sleep 1
    xdotool key "KP_Enter" &
    sleep 1
    echo "[npm start] API-ERP OK"
}

function startApiAuth() {
    echo "[npm start] Inicializando API-AUTH..."
    xdotool key ctrl+shift+t &
    sleep 1
    xdotool key type "cd && clear && cd Documents/ProjetosJS/API-AUTH && export NODE_ENV=development && npm start" &
    sleep 1
    xdotool key "KP_Enter" &
    sleep 1
    echo "[npm start] API-AUTH OK"
}

function startApiReport() {
    echo "[npm start] Inicializando API-REPORT..."
    xdotool key ctrl+shift+t &
    sleep 1
    xdotool key type "cd && clear && cd Documents/ProjetosJS/API-REPORT && export NODE_ENV=development && npm start" &
    sleep 1
    xdotool key "KP_Enter" &
    sleep 1
    echo "[npm start] API-REPORT OK"
}

function startJasperServer() {
    echo "[./ctlscript.sh start] Inicializando Jasper Server..."
    xdotool key ctrl+shift+t &
    sleep 1
    xdotool key type "cd && clear && cd jasperreports-server-cp-7.5.0 && ./ctlscript.sh start" &
    sleep 1
    xdotool key "KP_Enter" &
    sleep 1
    echo "[./ctlscript.sh start] Jasper Server OK"
}

function startUiErp() {
    echo "[npm run-script localCleber] Inicializando UI-ERP..."
    xdotool key ctrl+shift+t &
    sleep 1
    xdotool key type "cd && clear && cd Documents/ProjetosJS/UI-ERP && npm run-script localCleber" &
    sleep 1
    xdotool key "KP_Enter" &
    sleep 1
    echo "[npm run-script localCleber] UI-ERP OK"
}

function startUiAuth() {
    echo "[npm run-script localCleber] Inicializando UI-ERP..."
    xdotool key ctrl+shift+t &
    sleep 1
    xdotool key type "cd && clear && cd Documents/ProjetosJS/UI-AUTH && npm run-script localCleber" &
    sleep 1
    xdotool key "KP_Enter" &
    sleep 1
    echo "[npm run-script localCleber] UI-ERP OK"
}

echo "Cleber Ribeiro <cleber.ramos.ribeiro@gmail.com>"
echo "Scripts de Inicialização de API's e Interfaces do Sistema"
versaoLinux

PROGRAMA=$(dpkg --get-selections | grep xdotool | wc -l)
# echo $PROGRAMA
if [ $PROGRAMA -eq 0 ]
then
    echo "Instalando xdotool ..."
    sudo apt update && sudo apt install xdotool
else
    startApiErp
    startApiAuth
    startApiReport
    startJasperServer
fi

