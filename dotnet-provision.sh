echo "Seting up and installing dotnet core"

echo "Adding dotnet core apt repository"
echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list
echo "Adding dotnet apt pgp key"
apt-key add /vagrant/dotnet-core-pgp-key.txt
sudo apt-get update
sudo apt-get install -y dotnet-dev-1.0.0-preview2-003121
