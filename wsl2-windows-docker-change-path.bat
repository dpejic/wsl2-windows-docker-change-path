@echo off

wsl --shutdown
set /p DataTarFilePath=Enter directory path to export data.tar file...\n
echo This step can actually take some time depending on the size of the original ext4.vhdx file.
wsl --export docker-desktop-data %DataTarFilePath%\data.tar
wsl --unregister docker-desktop-data
set /p DockerStoragePath=Enter directory path to desired docker storage...\n
wsl --import docker-desktop-data %DockerStoragePath% %DataTarFilePath% --version 2

echo Restart Windows and you are ready to go.. :)

PAUSE