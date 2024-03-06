@echo off

echo "Removing AIPG Data Directories..."

rmdir /s /q %APPDATA%\Aipg\blocks

timeout /t 1 /nobreak > NUL

rmdir /s /q %APPDATA%\Aipg\chainstate

timeout /t 1 /nobreak > NUL

rmdir /s /q %APPDATA%\Aipg\messages

timeout /t 1 /nobreak > NUL

rmdir /s /q %APPDATA%\Aipg\assets

timeout /t 1 /nobreak > NUL

echo "Downloading Bootstrap..."

curl -LJO https://github.com/AIPowerGrid/AIPG-Bootstrap/archive/refs/tags/20-02-2024.zip

tar -xf AIPG-Bootstrap-20-02-2024.zip

timeout /t 1 /nobreak > NUL

echo "Copying Bootstrap files..."

cd AIPG-Bootstrap-20-02-2024

copy bootstrap.* %APPDATA%\Aipg

cd %APPDATA%\Aipg

tar -xf bootstrap.zip

timeout /t 1 /nobreak > NUL

echo "Bootstrapping complete. Start the AIPG wallet and wait for it to sync."

pause