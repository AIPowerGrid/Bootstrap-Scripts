#!/bin/sh

# Open folder location for AIPG data

open ~/Library/Application\ \Support/Aipg/

# Remove existing block data folders

rm -rf ~/Library/Application\ \Support/Aipg/blocks
sleep 0.5
rm -rf ~/Library/Application\ \Support/Aipg/chainstate
sleep 0.5
rm -rf ~/Library/Application\ \Support/Aipg/assets
sleep 0.5
rm -rf ~/Library/Application\ \Support/Aipg/messages

# Download latest bootstrap file

curl -LJO https://github.com/AIPowerGrid/AIPG-Bootstrap/archive/refs/tags/20-02-2024.tar.gz

# Unpack Bootstrap file

tar -xvf AIPG-Bootstrap-20-02-2024.tar.gz

# Enter Bootstrap folder

cd AIPG-Bootstrap-20-02-2024

# Zip Bootstrap zip files into one single archive

zip -s 0 bootstrap.zip --out unsplit.zip

# Unzip single archive into AIPG data folder

unzip unsplit.zip -d ~/Library/Application\ \Support/Aipg/