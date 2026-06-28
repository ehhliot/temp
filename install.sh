#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e "${YELLOW}setting things up...${NC}"
curl -fsSl https://pkg.cloudflareclient.com/cloudflare-warp-ascii.repo | sudo tee /etc/yum.repos.d/cloudflare-warp.repo
curl -fsSl https://copr.fedorainfracloud.org/coprs/mlampe/webkit2gtk3/repo/rhel+epel-10/mlampe-webkit2gtk3-rhel+epel-10.repo | sudo tee /etc/yum.repos.d/mlampe-webkit2gtk3
wget https://github.com/2dust/v2rayN/releases/download/7.23.0/v2rayN-linux-rhel-64.rpm
curl -o libicu74.rpm https://mirror.de.leaseweb.net/fedora/releases/43/Everything/x86_64/os/Packages/l/libicu74-74.2-3.fc43.x86_64.rpm
curl -o libSM.rpm https://mirror.de.leaseweb.net/fedora/releases/44/Everything/x86_64/os/Packages/l/libSM-1.2.5-4.fc44.x86_64.rpm
curl -o libICE.rpm https://mirror.de.leaseweb.net/fedora/releases/44/Everything/x86_64/os/Packages/l/libICE-1.1.2-4.fc44.x86_64.rpm
sudo dnf makecache
echo -e "${GREEN}finished setting things up...${NC}"

echo -e "${BLUE}starting installation...${NC}"
sudo dnf install -y wl-copy
sudo dnf install -y libSM.rpm
sudo dnf install -y libICE.rpm
sudo dnf install -y v2rayN-linux-rhel-64.rpm
sudo dnf install -y libicu74.rpm
sudo dnf install -y webkit2gtk3
sudo dnf install -y cloudflare-warp
echo -e "${GREEN}finished installation...${NC}"

echo -e "${RED}removing...${NC}"
rm -f libicu74.rpm
rm -f libSM.rpm
rm -f libICE.rpm
rm -f v2rayN-linux-rhel-64.rpm
echo -e "${CYAN}all done!${NC}"

wl-copy "ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpoYkdycGZ2TnJKc1VtS21QYlIzaVky@tinkered-pennies-puppies.freesocks.work:443?#%F0%9F%87%BA%F0%9F%87%B8%20US%208"
