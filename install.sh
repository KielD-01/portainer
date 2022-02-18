PORTAINER_DIR=~/tmp/portainer
PORTAINER_YML="$PORTAINER_DIR/docker-compose.yml"
CURRENT_DIR=$(pwd)

echo "Going Home directory"
cd ~

echo "Creating $PORTAINER_DIR"
mkdir -p "$PORTAINER_DIR"

echo "Entering $PORTAINER_DIR"
cd "$PORTAINER_DIR"

echo "Downloading Portainer containers information"
curl https://github.com/KielD-01/portainer/blob/master/portainer.yml --output "$PORTAINER_YML"

echo "Composing stack for Portainer"
echo "$PORTAINER_YML"
docker-compose -f docker-compose.yml up -d

cd "$CURRENT_DIR"