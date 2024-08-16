#!/bin/bash -e

IMAGE="portainer/portainer-ce"

CYAN='\033[0;36m'
GREEN='\033[0;32m'
LIGHT_RED='\033[1;31m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

VOLUME_NAME="portainer_data"

install_portainer() {
    docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v ${VOLUME_NAME}:/data ${IMAGE}:${VERSION}
    echo -e "${GREEN}Portainer version ${VERSION} installed successfully!${NC}"
}

update_portainer() {
    docker stop portainer
    docker rm portainer
    docker pull ${IMAGE}:${VERSION}
    install_portainer
}

remove_portainer() {
    docker stop portainer
    docker rm portainer
    echo -e "${GREEN}Portainer has been successfully removed, but the script has not deleted the volume ${CYAN}${VOLUME_NAME}${GREEN} to preserve your data.${NC}"
    echo -e ""
    echo -e "You can remove the volume manually using the following command:"
    echo -e "${LIGHT_RED}docker volume rm ${VOLUME_NAME}${NC}"
    echo -e ""
}

echo "Select an action:"
echo "1) Install Portainer"
echo "2) Update Portainer"
echo "3) Remove Portainer"

read -p "Enter the action number: " ACTION

if ! [[ "$ACTION" =~ ^[1-3]$ ]]; then
    echo -e "${RED}Invalid choice. Please select 1, 2, or 3.${NC}"
    exit 1
fi

if [[ "$ACTION" == "1" || "$ACTION" == "2" ]]; then
    read -p "Enter the Portainer version (default is latest): " VERSION
    VERSION=${VERSION:-"latest"}
fi

case $ACTION in
    1)
        echo -e "${YELLOW}Installing Portainer version ${VERSION}...${NC}"
        install_portainer
    ;;
    2)
        echo -e "${YELLOW}Updating Portainer to version ${VERSION}...${NC}"
        update_portainer
    ;;
    3)
        echo -e "${YELLOW}Removing Portainer...${NC}"
        remove_portainer
    ;;
esac
