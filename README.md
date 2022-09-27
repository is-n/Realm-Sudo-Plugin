# Realm Sudo Plugin

# build image
docker build -t realm_sudo_plugin .

# get shell in docker to compile and test the plugin
docker run -it --mount type=bind,source="$(pwd)",target=/source realm_sudo_plugin bash
