#!/bin/bash
apt-get install curl ca-certificates gnupg
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc --output ACCC4CF8.asc
sudo apt-key add ACCC4CF8.asc
echo "deb http://apt.postgresql.org/pub/repos/apt/ 'lsb_release -cs'-pgdg main" | sudo tee  /etc/apt/sources.list.d/pgdg.list
apt-get update
sudo apt -y install postgresql-client-11
mkdir backups