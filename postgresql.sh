#! /bin/bsh

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF.asc | sudo apt-key add -
echo "deb http://apt.postgresql.org/pub/repos/apt/${RELEASE" -pgdg main | sudo tee /etc/apt/sources.list.d/pgdg.list
cat /etc/apt/sources.list.d/pgdg.list
deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main
sudo apt-get update
sudo apt -y install postgresql-client-11
