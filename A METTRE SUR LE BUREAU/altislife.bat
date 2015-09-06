@echo off

echo SCRIPT PAR DIDI COPYRIGHT 2014
echo dids91330@gmail.fr
taskkill /f /fi "status eq not responding" /im arma3server.exe
taskkill /f /im arma3server.exe
timeout 1

echo SCRIPT PAR DIDI COPYRIGHT 2014
echo dids91330@gmail.fr
cd C:\Program Files (x86)\Steam\SteamApps\common\Arma 3
timeout 3
start "arma3" /min /high "C:\Program Files (x86)\Steam\SteamApps\common\Arma 3\arma3server.exe" -mod=@life_server;@extDB -noPause -noSound -name=DefaultServer -profiles=config -config=config\server.cfg -cfg=config\basic.cfg -port=2306 -ip=192.168.X.X
timeout 6
echo ARMA 3 Server se lance
timeout 200
echo "SCRIPT PAR DIDI COPYRIGHT 2014"
echo "dids91330@gmail.fr"
cd "C:\Users\DidiDev\Desktop\Bec" & Start Bec.exe myParam
exit 