[![](https://badge.imagelayers.io/flowman/factorio:latest.svg)](https://imagelayers.io/?images=flowman/factorio:latest 'Get your own badge on imagelayers.io')

# Introduction

Dockerfile to build a [Factorio](https://www.factorio.com) game server image. You can find the pre-built images on Docker Hub at [flowman/factorio](https://hub.docker.com/r/flowman/factorio/)

## Current Version
0.12.29

I'm keeping the image up to date. If you need to use an older version, checkout out the different [tags](https://hub.docker.com/r/flowman/factorio/tags/).
### What's new ?
#### Factorio
See [factorio's site](http://www.factorio.com)

# Basic Usage

The init script will automatically create a new save game if none exists. 

```bash
docker run -d \
           -p 34197:34197/udp \
           --name factorio-server \
           flowman/factorio
```

# Persisting Saves

Use a docker volume to persist the savegames on the host machine rather than in the docker container.

```bash
docker run -d \
           -v $(pwd)/saves:/opt/factorio/saves \
           -p 34197:34197/udp \
           --restart=always \
           --name factorio-server \
           flowman/factorio 
```

# Mods

Link a volume with your custom mods.

```bash
docker run -d \
           -v $(pwd)/saves:/opt/factorio/saves \
           -v $(pwd)/mods:/opt/factorio/mods \
           -p 34197:34197/udp \
           --restart=always \
           --name factorio-server \
           flowman/factorio 
```